module

public meta import Surface.Core.Classification

/-!
# Payload-neutral transport hashes

`Hash256` is an opaque wire identity. Lean validates only the exact SHA-256
spelling and structural equality; digest computation and cryptographic claims
remain outside this module.
-/

public section

namespace Surface.Core.Transport

@[surface_novel]
structure Hash256 where
  algorithm : String
  hex : String
deriving DecidableEq, Repr

@[expose] def lowerHexAlphabet : List Char :=
  "0123456789abcdef".toList

@[expose] def IsLowerHexDigit (character : Char) : Prop :=
  character ∈ lowerHexAlphabet

instance (character : Char) : Decidable (IsLowerHexDigit character) := by
  unfold IsLowerHexDigit
  infer_instance

@[expose] def Hash256.Valid (hash : Hash256) : Prop :=
  hash.algorithm = "sha256" ∧
    hash.hex.length = 64 ∧
    ∀ character ∈ hash.hex.toList, IsLowerHexDigit character

instance instDecidableHash256Valid (hash : Hash256) : Decidable hash.Valid := by
  unfold Hash256.Valid
  infer_instance

@[expose] def verifyHash256 (hash : Hash256) : Bool :=
  decide hash.Valid

@[surface_novel, surface_published, surface_certificate]
theorem verifyHash256_sound (hash : Hash256)
    (accepted : verifyHash256 hash = true) : hash.Valid := by
  exact of_decide_eq_true accepted

end Surface.Core.Transport
