# Complete source: GRWTSK.Analysis.LpSpace.Variant9be66d217512f644fc40950bf8fc666934cbfd5a4fe9dd278919e505fdc34df1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e278692eef85d3b1cb2667b4340b2c6343150245` · SHA-256 `4115accfc272413d83197d87c7c821d3d9b947cb662718629f6940fe9d3791f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.Classes.Variant9edc2aab03586222c559b1c551b749e9004c0e2f99d81289d94acf21cab59070","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9edc2aab03586222c559b1c551b749e9004c0e2f99d81289d94acf21cab59070","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Classes.Variant9edc2aab03586222c559b1c551b749e9004c0e2f99d81289d94acf21cab59070","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9edc2aab03586222c559b1c551b749e9004c0e2f99d81289d94acf21cab59070","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/CStarAlgebra/lpSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.Normed.Lp.lpSpace

/-! # `lp ∞ A` as a C⋆-algebra

We place these here because, for reasons related to the import hierarchy, they should not be placed
in earlier files.
-/

namespace GRWTSK.Analysis.Classes.Variant9edc2aab03586222c559b1c551b749e9004c0e2f99d81289d94acf21cab59070

open scoped ENNReal

noncomputable section

variable {I : Type*} {A : I → Type*}

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [∀ i, NonUnitalCStarAlgebra (A i)] : NonUnitalCStarAlgebra (lp A ∞) where
  norm_mul_self_le := CStarRing.norm_mul_self_le

instance [∀ i, NonUnitalCommCStarAlgebra (A i)] : NonUnitalCommCStarAlgebra (lp A ∞) where
  mul_comm := mul_comm

-- it's slightly weird that we need the `Nontrivial` instance here
-- it's because we have no way to say that `‖(1 : A i)‖` is uniformly bounded as a type class
-- aside from `∀ i, NormOneClass (A i)`, this holds automatically for C⋆-algebras though.
instance [∀ i, Nontrivial (A i)] [∀ i, CStarAlgebra (A i)] : NormedRing (lp A ∞) where
  dist_eq := dist_eq_norm
  norm_mul_le := norm_mul_le

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [∀ i, Nontrivial (A i)] [∀ i, CommCStarAlgebra (A i)] : CommCStarAlgebra (lp A ∞) where
  mul_comm := mul_comm
  norm_mul_self_le := CStarRing.norm_mul_self_le

end
```
