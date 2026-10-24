import BitMatrix.Codec.BitDocument
import Mathlib.Tactic

/-!
# Runtime codec profiles

The two supported runtimes intentionally have different source domains.
Rust preserves the source bytes represented by a Lean string.  JavaScript
first canonicalizes CRLF and bare CR to LF.  Their bit-document format is the
same after that source-profile step.
-/

namespace BitMatrix.Codec.Profiles

/-- Canonicalize CRLF and bare CR to LF, matching the JavaScript codec. -/
def normalizeLineEndings : List Char → List Char
  | [] => []
  | '\r' :: '\n' :: rest => '\n' :: normalizeLineEndings rest
  | '\r' :: rest => '\n' :: normalizeLineEndings rest
  | character :: rest => character :: normalizeLineEndings rest

/-- The common source domain on which neither runtime changes line endings. -/
def CanonicalLineEndings (characters : List Char) : Prop :=
  '\r' ∉ characters

/-- Normalization always produces canonical LF-only line endings. -/
theorem normalizeLineEndings_canonical (characters : List Char) :
    CanonicalLineEndings (normalizeLineEndings characters) := by
  induction characters using normalizeLineEndings.induct with
  | case1 => simp [normalizeLineEndings, CanonicalLineEndings]
  | case2 rest induction =>
      simp only [normalizeLineEndings, CanonicalLineEndings,
        List.mem_cons, not_or]
      exact ⟨by decide, induction⟩
  | case3 rest exclusion induction =>
      simp only [normalizeLineEndings, CanonicalLineEndings,
        List.mem_cons, not_or]
      exact ⟨by decide, induction⟩
  | case4 character rest exclusion headNotCr induction =>
      simp only [normalizeLineEndings, CanonicalLineEndings,
        List.mem_cons, not_or]
      exact ⟨fun equality => headNotCr equality.symm, induction⟩

/-- Canonical LF-only input is unchanged. -/
theorem normalizeLineEndings_eq_self_of_canonical
    {characters : List Char} (canonical : CanonicalLineEndings characters) :
    normalizeLineEndings characters = characters := by
  induction characters with
  | nil => rfl
  | cons head tail induction =>
      have headNotCr : head ≠ '\r' := by
        intro equality
        apply canonical
        simp [equality]
      have tailCanonical : CanonicalLineEndings tail := by
        intro member
        apply canonical
        simp [member]
      cases tail with
      | nil => simp [normalizeLineEndings]
      | cons next rest =>
          simp [normalizeLineEndings, headNotCr, induction tailCanonical]

/-- Line-ending normalization is idempotent. -/
theorem normalizeLineEndings_idempotent (characters : List Char) :
    normalizeLineEndings (normalizeLineEndings characters) =
      normalizeLineEndings characters :=
  normalizeLineEndings_eq_self_of_canonical
    (normalizeLineEndings_canonical characters)

/-- Construct the exact UTF-8 payload represented by a character list. -/
def payloadOfCharacters (characters : List Char) : Utf8Payload where
  text := String.ofList characters
  bytes := (String.ofList characters).toUTF8.data
  encoding := rfl

/-- The source preparation profiles implemented by the Rust and JavaScript
runtimes. -/
inductive RuntimeCodecProfile where
  | rustBytePreserving
  | javascriptLineNormalizing
  deriving DecidableEq, Repr

/-- Prepare source characters according to one runtime profile. -/
def profileCharacters : RuntimeCodecProfile → List Char → List Char
  | .rustBytePreserving, characters => characters
  | .javascriptLineNormalizing, characters => normalizeLineEndings characters

/-- The exact payload submitted to the common bit-document encoder. -/
def profilePayload (profile : RuntimeCodecProfile)
    (characters : List Char) : Utf8Payload :=
  payloadOfCharacters (profileCharacters profile characters)

/-- Encode after applying the selected source profile. -/
def encodeWithProfile (profile : RuntimeCodecProfile)
    (prefixWidth : Nat) (characters : List Char) : BitDocument :=
  encodeBitDocument prefixWidth (profilePayload profile characters)

def encodeRustProfile := encodeWithProfile .rustBytePreserving

def encodeJavaScriptProfile := encodeWithProfile .javascriptLineNormalizing

/-- Rust passes the represented UTF-8 bytes to the common encoder unchanged. -/
@[simp]
theorem rust_profile_payload_bytes (characters : List Char) :
    (profilePayload .rustBytePreserving characters).bytes =
      (String.ofList characters).toUTF8.data :=
  rfl

/-- JavaScript submits the UTF-8 bytes of the normalized character stream. -/
@[simp]
theorem javascript_profile_payload_bytes (characters : List Char) :
    (profilePayload .javascriptLineNormalizing characters).bytes =
      (String.ofList (normalizeLineEndings characters)).toUTF8.data :=
  rfl

/-- Every profile encoder satisfies the common declarative encode/decode
relation for its prepared payload whenever its byte length fits the selected
prefix width. -/
theorem encodeWithProfile_relation (profile : RuntimeCodecProfile)
    (prefixWidth : Nat) (characters : List Char)
    (representable : RepresentableLength prefixWidth
      (profilePayload profile characters).bytes.size) :
    EncodeDecodeRelation prefixWidth (profilePayload profile characters)
      (encodeWithProfile profile prefixWidth characters) :=
  ⟨rfl, representable⟩

/-- The two runtime encoders agree exactly on the canonical LF-only domain. -/
theorem profiles_agree_on_canonical_domain (prefixWidth : Nat)
    {characters : List Char} (canonical : CanonicalLineEndings characters) :
    encodeRustProfile prefixWidth characters =
      encodeJavaScriptProfile prefixWidth characters := by
  simp [encodeRustProfile, encodeJavaScriptProfile, encodeWithProfile,
    profilePayload, profileCharacters,
    normalizeLineEndings_eq_self_of_canonical canonical]

end BitMatrix.Codec.Profiles
