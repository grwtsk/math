# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Notation.Variant002408e945488abc65acd07a74c821c3204526b648c4ac6fe31e23bd22bdee4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56951b3204dd791b212be8c8cfec398e9814e66d` · SHA-256 `c15c42e40a546d3ff198173f94a359ad122a62937284033eca5ca3848a746041`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.PNat.Variant5a8bf5dd7931fd9f4d1424606a73d5fcb9975bede999fde7ac6f5b422c9d80e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5a8bf5dd7931fd9f4d1424606a73d5fcb9975bede999fde7ac6f5b422c9d80e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PNat.Variant5a8bf5dd7931fd9f4d1424606a73d5fcb9975bede999fde7ac6f5b422c9d80e5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5a8bf5dd7931fd9f4d1424606a73d5fcb9975bede999fde7ac6f5b422c9d80e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/PNat/Notation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Simon Hudon, Yury Kudryashov
-/

import Mathlib.Data.Nat.Notation

/-! # Definition and notation for positive natural numbers -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.PNat.Variant5a8bf5dd7931fd9f4d1424606a73d5fcb9975bede999fde7ac6f5b422c9d80e5

/-- `ℕ+` is the type of positive natural numbers. It is defined as a subtype,
  and the VM representation of `ℕ+` is the same as `ℕ` because the proof
  is not stored. -/
def PNat := { n : ℕ // 0 < n } deriving DecidableEq

@[inherit_doc]
notation "ℕ+" => PNat

/-- The underlying natural number -/
@[coe]
def PNat.val : ℕ+ → ℕ := Subtype.val

instance coePNatNat : Coe ℕ+ ℕ :=
  ⟨PNat.val⟩

instance : Repr ℕ+ :=
  ⟨fun n n' => reprPrec n.1 n'⟩
```
