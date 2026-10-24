# Complete source: GRWTSK.Algebra.UniversalAlgebra.Conjneg.Variant87478cbccd5b70a31b0c9bca8258ef0dd1b0634cbe27ee8c6e3d673d62eda301

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5940c85f8157fe3a969b3b1dfe735f045434342a` · SHA-256 `603200199a984ca5bedd435fb37543aab31dbacba93eccd694aa47f876bc0087`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Pi.Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Pi.Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Star/Conjneg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Pi
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Algebra.Star.Conjneg

/-!
# Order properties of conjugation-negation
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Pi.Variant320105cc364a19abcbc50a84934d067df9f883081e7157969cdd0e89d5d2ce86

open scoped ComplexConjugate

variable {G R : Type*} [AddGroup G]

section OrderedCommSemiring
variable [CommSemiring R] [PartialOrder R] [StarRing R] [StarOrderedRing R] {f : G → R}

@[simp] lemma conjneg_nonneg : 0 ≤ conjneg f ↔ 0 ≤ f :=
  (Equiv.neg _).forall_congr' <| by simp [starRingEnd_apply]

@[simp] lemma conjneg_pos : 0 < conjneg f ↔ 0 < f := by
  simp_rw [lt_iff_le_and_ne, ne_comm, conjneg_nonneg, conjneg_ne_zero]

end OrderedCommSemiring

section OrderedCommRing
variable [CommRing R] [PartialOrder R] [StarRing R] [StarOrderedRing R] {f : G → R}

@[simp] lemma conjneg_nonpos : conjneg f ≤ 0 ↔ f ≤ 0 := by
  simp_rw [← neg_nonneg, ← conjneg_neg, conjneg_nonneg]

@[simp] lemma conjneg_neg' : conjneg f < 0 ↔ f < 0 := by
  simp_rw [← neg_pos, ← conjneg_neg, conjneg_pos]

end OrderedCommRing
```
