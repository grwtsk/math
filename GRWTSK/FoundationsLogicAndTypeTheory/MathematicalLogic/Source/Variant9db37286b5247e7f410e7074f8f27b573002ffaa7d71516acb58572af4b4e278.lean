-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CanonicalSource.Variant21c473d6e4bb905bc92de227472dbec1a41aceafb5c537c85fc2269036849186","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21c473d6e4bb905bc92de227472dbec1a41aceafb5c537c85fc2269036849186","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CanonicalSource.Variant21c473d6e4bb905bc92de227472dbec1a41aceafb5c537c85fc2269036849186","mathematical_subject":"Logic.Foundations","original_sha256":"21c473d6e4bb905bc92de227472dbec1a41aceafb5c537c85fc2269036849186","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/audit/evidence-resume-workspaces/producer/9591c6ff30638559b50c01f70f8215488732641430867dc44c348c446c634ebe/workspace/Surface/BitMatrix/Codec/Source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Carrier.BooleanSpace

/-!
# Canonical finite sources and source-state codecs

This module states the exact source-codec interface without claiming that the
project currently constructs the full sequential-prime address assignment.
An implementation must provide both decoding laws; only then is its source
constructor promoted to an equivalence with its image.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CanonicalSource.Variant21c473d6e4bb905bc92de227472dbec1a41aceafb5c537c85fc2269036849186

namespace BitMatrix.Codec

/--
A canonical source is represented by its body before the required final LF.
The body contains no CR and does not itself end in LF, so `text` has exactly
one terminal LF.  UTF-8 validity follows from using Lean `String` as source.
-/
structure CanonicalSource where
  body : String
  noCarriageReturn : '\r' ∉ body.toList
  noTerminalLineFeed : body.toList.getLast? ≠ some '\n'

namespace CanonicalSource

/-- Canonical text with exactly one terminal line feed. -/
def text (source : CanonicalSource) : String :=
  source.body.push '\n'

/-- Canonical UTF-8 bytes. -/
def utf8 (source : CanonicalSource) : ByteArray :=
  source.text.toUTF8

end CanonicalSource

/-- Most-significant-bit-first access to a source byte. -/
def byteBitMSB (byte : UInt8) (index : Fin 8) : Bool :=
  Nat.testBit byte.toNat (7 - index.val)

/-- Points in the canonical finite source graph. -/
inductive SourcePoint (length : Nat) where
  | root
  | byte (index : Fin length)
  deriving DecidableEq

/-- The three fixed binary relations of the self-source schema. -/
inductive SourceRelation where
  | contains
  | next
  | ref
  deriving DecidableEq, Repr

/-- Every source relation in the fixed schema has arity two. -/
def SourceRelation.arity (_ : SourceRelation) : Nat := 2

/--
Conditional capability for the self-contained source constructor.  `decode`
is partial on unrestricted states, and the second law forbids it from
accepting a state other than the exact encoding it reports.
-/
structure SourceCodec (Address : Type) where
  encode : CanonicalSource → BitMatrix.Carrier.BooleanState Address
  decode : BitMatrix.Carrier.BooleanState Address → Option CanonicalSource
  decode_encode : ∀ source, decode (encode source) = some source
  encode_decode : ∀ {state source}, decode state = some source → encode source = state

namespace SourceCodec

theorem encode_injective
    {Address : Type}
    (codec : SourceCodec Address) :
    Function.Injective codec.encode := by
  intro left right equal
  have decoded := congrArg codec.decode equal
  rw [codec.decode_encode, codec.decode_encode] at decoded
  exact Option.some.inj decoded

/-- States accepted as exact encodings by this source codec. -/
def SourceState
    {Address : Type}
    (codec : SourceCodec Address) :=
  { state : BitMatrix.Carrier.BooleanState Address //
    ∃ source, codec.encode source = state }

/-- The source constructor is exactly invertible on its image. -/
noncomputable def sourceEquiv
    {Address : Type}
    (codec : SourceCodec Address) :
    CanonicalSource ≃ codec.SourceState where
  toFun source := ⟨codec.encode source, source, rfl⟩
  invFun state := Classical.choose state.property
  left_inv source := by
    apply codec.encode_injective
    exact Classical.choose_spec
      ((show ∃ candidate, codec.encode candidate = codec.encode source from
        ⟨source, rfl⟩))
  right_inv state := by
    apply Subtype.ext
    exact Classical.choose_spec state.property

@[simp]
theorem sourceEquiv_apply
    {Address : Type}
    (codec : SourceCodec Address)
    (source : CanonicalSource) :
    (codec.sourceEquiv source).val = codec.encode source :=
  rfl

/-- A distinguished source selects the baseline used by the scalar inverse. -/
def sourceBaseline
    {Address : Type}
    (codec : SourceCodec Address)
    (source : CanonicalSource) :
    BitMatrix.Carrier.BooleanState Address :=
  codec.encode source

end SourceCodec

end BitMatrix.Codec
