# Complete source: GRWTSK.Algebra.Quotient.Variantdd9b3b54b8cb05f66e6b3d133d7a6b51e2e84d71d5bd5464e41102d1469c57c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d29c31e3a77a677b8b7c4444042ee116485031ea` · SHA-256 `b9647a4391b6d07679fd483882e19ab793fdb324a0101e4fe5800b430caaa81b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Actions.Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Actions.Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Finiteness/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Yongle Hu
-/
import Mathlib.Algebra.Group.Subgroup.Actions
import Mathlib.RingTheory.FiniteType
import Mathlib.RingTheory.Ideal.Pointwise
import Mathlib.RingTheory.Ideal.Over

/-!
# Finiteness of quotient modules
-/


namespace GRWTSK.Algebra.Actions.Variant28bbd53957b1e9d161c3b82c912b0531366eb38f93d3fe23c1cb6d94bbea355d

variable {A B : Type*} [CommRing A] [CommRing B] [Algebra A B]
variable (P : Ideal B) (p : Ideal A) [P.LiesOver p]

/-- `B ⧸ P` is a finite `A ⧸ p`-module if `B` is a finite `A`-module. -/
instance module_finite_of_liesOver [Module.Finite A B] : Module.Finite (A ⧸ p) (B ⧸ P) :=
  Module.Finite.of_restrictScalars_finite A (A ⧸ p) (B ⧸ P)

example [Module.Finite A B] : Module.Finite (A ⧸ P.under A) (B ⧸ P) := inferInstance

/-- `B ⧸ P` is a finitely generated `A ⧸ p`-algebra if `B` is a finitely generated `A`-algebra. -/
instance algebra_finiteType_of_liesOver [Algebra.FiniteType A B] :
    Algebra.FiniteType (A ⧸ p) (B ⧸ P) :=
  Algebra.FiniteType.of_restrictScalars_finiteType A (A ⧸ p) (B ⧸ P)

/-- `B ⧸ P` is a Noetherian `A ⧸ p`-module if `B` is a Noetherian `A`-module. -/
instance isNoetherian_of_liesOver [IsNoetherian A B] : IsNoetherian (A ⧸ p) (B ⧸ P) :=
  isNoetherian_of_tower A inferInstance

instance QuotientMapQuotient.isNoetherian [IsNoetherian A B] :
    IsNoetherian (A ⧸ p) (B ⧸ p.map (algebraMap A B)) :=
  isNoetherian_of_tower A <|
    isNoetherian_of_surjective B (Ideal.Quotient.mkₐ A _).toLinearMap <|
      LinearMap.range_eq_top.mpr Ideal.Quotient.mk_surjective
```
