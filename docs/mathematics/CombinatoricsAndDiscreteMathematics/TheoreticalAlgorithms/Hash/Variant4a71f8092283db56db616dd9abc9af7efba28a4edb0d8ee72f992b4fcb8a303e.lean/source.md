# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash.Variant4a71f8092283db56db616dd9abc9af7efba28a4edb0d8ee72f992b4fcb8a303e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9332bd84a05dd5332fc03d29f022885c6169d0c2` · SHA-256 `4a71f8092283db56db616dd9abc9af7efba28a4edb0d8ee72f992b4fcb8a303e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
