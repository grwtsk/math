# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Splitting.Variant1cad4262f737ec8c09c00a39e533e171f10036d174a4c919102a82138042b7da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9658a7e0aaf9cd5631c533fcf9f490921b0a95d` · SHA-256 `35dfec2b10135d6fdeb764abfa5e0339fe90e105f0d6e618cc272876402fab20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.SplittingExtend.Variant600ca7e88cc97ed9444218ba4f652d97d117d5e79ff6e8893fa62a72e4d89524","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"600ca7e88cc97ed9444218ba4f652d97d117d5e79ff6e8893fa62a72e4d89524","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.SplittingExtend.Variant600ca7e88cc97ed9444218ba4f652d97d117d5e79ff6e8893fa62a72e4d89524","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"600ca7e88cc97ed9444218ba4f652d97d117d5e79ff6e8893fa62a72e4d89524","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Homology/Embedding/Splitting.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.Homotopy
public import Mathlib.Algebra.Homology.ShortComplex.Exact
public import Mathlib.Algebra.Homology.Embedding.Extend

/-!
# Extension of degreewise splittings

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.SplittingExtend.Variant600ca7e88cc97ed9444218ba4f652d97d117d5e79ff6e8893fa62a72e4d89524

@[expose] public section

open CategoryTheory Limits HomologicalComplex

variable {ι₁ ι₂ : Type*} {c₁ : ComplexShape ι₁} {c₂ : ComplexShape ι₂}

namespace ComplexShape.Embedding

variable {C : Type*} [Category* C] [Preadditive C] [HasZeroObject C]
  (e : Embedding c₁ c₂) {S : ShortComplex (HomologicalComplex C c₁)}
    (σ : ∀ i, (S.map (eval _ _ i)).Splitting)

open Classical in
/-- If `S` is a short complex in `HomologicalComplex C c₁` that is degreewise split,
then `S.map (e.extendFunctor C)` also is if `e : Embedding c₁ c₂`. -/
noncomputable def splittingExtend (i₂ : ι₂) :
    ((S.map (e.extendFunctor C)).map (eval _ _ i₂)).Splitting :=
  if hi₂ : ∃ i₁, e.f i₁ = i₂ then
    .ofIso (σ _) (S.mapNatIso (e.extendFunctorCompEvalIso C hi₂.choose_spec).symm)
  else by
    refine .ofIsZero _ ?_ ?_ ?_
    all_goals exact isZero_extend_X _ _ _ (by tauto)

lemma splittingExtend_apply {i₁ : ι₁} {i₂ : ι₂} (h : e.f i₁ = i₂) :
    splittingExtend e σ i₂ =
      .ofIso (σ _) (S.mapNatIso (e.extendFunctorCompEvalIso C h).symm) := by
  have : ∃ i₁, e.f i₁ = i₂ := ⟨_, h⟩
  obtain rfl := e.injective_f (this.choose_spec.trans h.symm)
  apply dite_eq_left

end ComplexShape.Embedding
```
