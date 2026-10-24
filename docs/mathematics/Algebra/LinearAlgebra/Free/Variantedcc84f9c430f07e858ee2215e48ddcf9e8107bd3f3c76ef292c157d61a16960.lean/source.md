# Complete source: GRWTSK.Algebra.LinearAlgebra.Free.Variantedcc84f9c430f07e858ee2215e48ddcf9e8107bd3f3c76ef292c157d61a16960

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b0f63944ae906f2232362b98b7920298d631be7` · SHA-256 `a8cc7655cc7875bd41089c3170f6e5ef261b4f44f1082807b158da36c02a4f6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ModuleFreeQuotSMulTopIffFree.Variantab7bc30d17648bfb1ef12489df9648d4ba50278e4d9742ea832f9f134153faea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab7bc30d17648bfb1ef12489df9648d4ba50278e4d9742ea832f9f134153faea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ModuleFreeQuotSMulTopIffFree.Variantab7bc30d17648bfb1ef12489df9648d4ba50278e4d9742ea832f9f134153faea","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"ab7bc30d17648bfb1ef12489df9648d4ba50278e4d9742ea832f9f134153faea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Regular/Free.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Nailin Guan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nailin Guan
-/
module

public import Mathlib.Algebra.Module.FinitePresentation
public import Mathlib.Algebra.Module.Torsion.Basic
public import Mathlib.RingTheory.Ideal.Finsupp
public import Mathlib.RingTheory.Nakayama
public import Mathlib.RingTheory.QuotSMulTop
import Mathlib.Algebra.GroupWithZero.Action.Regular

/-!

# Freeness of `QuotSMulTop` by a regular element

Let `M` be a finitely presented module over a commutative ring `R`. If `x` is in the
Jacobson radical of `R` and `x` is `M`-regular, then `M/xM` is free over `R/(x)` if and only if
`M` is free over `R`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.ModuleFreeQuotSMulTopIffFree.Variantab7bc30d17648bfb1ef12489df9648d4ba50278e4d9742ea832f9f134153faea

public section

variable (R : Type*) [CommRing R] (M : Type*) [AddCommGroup M] [Module R M]

instance [Module.Free R M] (x : R) : Module.Free (R ⧸ Ideal.span {x}) (QuotSMulTop x M) :=
  Module.Free.of_equiv ((QuotSMulTop.equivQuotTensor x M).extendScalarsOfSurjective
    Ideal.Quotient.mk_surjective).symm

open Pointwise in
lemma Module.free_quotSMulTop_iff_free [Module.FinitePresentation R M] {x : R}
    (mem : x ∈ (⊥ : Ideal R).jacobson) (reg : IsSMulRegular M x) :
    Module.Free (R ⧸ Ideal.span {x}) (QuotSMulTop x M) ↔ Module.Free R M := by
  refine ⟨fun free ↦ ?_, fun free ↦ inferInstance⟩
  have := Module.Finite.of_restrictScalars_finite R (R ⧸ Ideal.span {x}) (QuotSMulTop x M)
  let I := Module.Free.ChooseBasisIndex (R ⧸ Ideal.span {x}) (QuotSMulTop x M)
  let b := Module.Free.chooseBasis (R ⧸ Ideal.span {x}) (QuotSMulTop x M)
  let b' : QuotSMulTop x M ≃ₗ[R] I →₀ R ⧸ Ideal.span {x} := b.1.restrictScalars R
  let f := b'.symm.toLinearMap.comp (Finsupp.mapRange.linearMap (Submodule.mkQ (Ideal.span {x})))
  rcases Module.projective_lifting_property (Submodule.mkQ (x • (⊤ : Submodule R M))) f
    (Submodule.mkQ_surjective _) with ⟨g, hg⟩
  have surjf : Function.Surjective f := by
    simpa [f] using! Finsupp.mapRange_surjective _ rfl (Submodule.mkQ_surjective (Ideal.span {x}))
  have lejac : Ideal.span {x} ≤ (⊥ :Ideal R).jacobson := by simpa
  have surjg : Function.Surjective g := by
    apply g.surjective_of_surjective_comp_mkQ (Ideal.span {x}) lejac
    rwa [Submodule.ideal_span_singleton_smul x ⊤, hg]
  have kerf : LinearMap.ker f = x • (⊤ : Submodule R (I →₀ R)) := by
    simp only [LinearEquiv.ker_comp, f]
    rw [Finsupp.ker_mapRange, Submodule.ker_mkQ, ← (Ideal.span {x}).mul_top, ← smul_eq_mul,
      Finsupp.submodule_smul]
    simp [Submodule.ideal_span_singleton_smul]
  have injg : Function.Injective g := by
    rw [← LinearMap.ker_eq_bot]
    have fg : (LinearMap.ker g).FG := Module.FinitePresentation.fg_ker g surjg
    apply Submodule.eq_bot_of_le_smul_of_le_jacobson_bot (Ideal.span {x}) _ fg _ lejac
    rw [Submodule.ideal_span_singleton_smul]
    intro y hy
    have : y ∈ x • (⊤ : Submodule R (I →₀ R)) := by simp [← kerf, ← hg, LinearMap.mem_ker.mp hy]
    rcases (Submodule.mem_smul_pointwise_iff_exists _ _ _).mp this with ⟨z, _, hz⟩
    simp only [← hz, LinearMap.mem_ker, map_smul] at hy
    have := LinearMap.mem_ker.mpr (IsSMulRegular.right_eq_zero_of_smul reg hy)
    simpa [hz] using Submodule.smul_mem_pointwise_smul z x _ this
  exact Module.Free.of_equiv (LinearEquiv.ofBijective g ⟨injg, surjg⟩)
```
