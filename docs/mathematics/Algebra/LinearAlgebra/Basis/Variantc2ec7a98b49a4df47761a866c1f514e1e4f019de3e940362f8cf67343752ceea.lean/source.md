# Complete source: GRWTSK.Algebra.LinearAlgebra.Basis.Variantc2ec7a98b49a4df47761a866c1f514e1e4f019de3e940362f8cf67343752ceea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af5d91abc11e881f0d8e90a2190b7f4e71492dba` · SHA-256 `e9bb371fe1399f10f4bed43c06a5475916e862fda8a393ef369c7c5ab5684fe7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Basis.Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Basis.Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"d87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/RootSystem/GeckConstruction/Basis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
module

public import Mathlib.Algebra.Lie.Basis.Base
public import Mathlib.Algebra.Lie.CartanCriterion
public import Mathlib.Algebra.Lie.CartanExists  -- shake: keep (used in `example` only)
public import Mathlib.Algebra.Lie.Weights.IsSimple
public import Mathlib.LinearAlgebra.RootSystem.GeckConstruction.Semisimple
public import Mathlib.LinearAlgebra.RootSystem.GeckConstruction.Relations

/-!
# Geck's construction is complete

The Geck construction of a Lie algebra associated to a root system,
`RootPairing.GeckConstruction.lieAlgebra`, yields a simple Lie algebra. In this file we show that
this construction yields all finite-dimensional simple Lie algebras up to isomorphism.

## Main definitions / results:

* `RootPairing.GeckConstruction.basis`: the Geck construction yields a basis.
* `RootPairing.GeckConstruction.equivRootSystem`: up to equivalence,
  `LieAlgebra.IsKilling.rootSystem` is left inverse to `RootPairing.GeckConstruction.lieAlgebra`.
* `RootPairing.GeckConstruction.equivLieAlgebra`: up to equivalence,
  `LieAlgebra.IsKilling.rootSystem` is right inverse to `RootPairing.GeckConstruction.lieAlgebra`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.Basis.Variantd87c9ec1fc3adc1231f8d98944c413a4864c05049896eccf2dc7564fcbfff106

@[expose] public section

noncomputable section

open Set

namespace RootPairing.GeckConstruction

variable {K : Type*} [Field K] [CharZero K]

section LeftInverse

variable {ι M N : Type*} [Fintype ι] [DecidableEq ι]
  [AddCommGroup M] [Module K M] [AddCommGroup N] [Module K N]
  {P : RootPairing ι K M N} [P.IsReduced] [P.IsCrystallographic] [P.IsIrreducible] [P.IsRootSystem]
  (b : P.Base)

attribute [local instance 100] LieRing.ofAssociativeRing

/-- The Geck construction yields a basis of the Lie algebra it constructs. -/
def basis :
    LieAlgebra.Basis b.support (cartanSubalgebra' b) where
  A := b.cartanMatrix
  h i := ⟨h i, h_mem_lieAlgebra i⟩
  e i := ⟨e i, e_mem_lieAlgebra i⟩
  f i := ⟨f i, f_mem_lieAlgebra i⟩
  cartan_eq_lieSpan := by
    rw [cartanSubalgebra', cartanSubalgebra_eq_lieSpan, ← LieSubalgebra.comap_lieSpan_range_eq]
    rfl
  nondegen := b.cartanMatrix_nondegenerate
  linInd := by
    apply LinearIndependent.of_comp (lieAlgebra b).subtype
    exact linearIndependent_h b
  sl2 i :=
    let t := isSl2Triple i
    { h_ne_zero := by simp [Subtype.ext_iff, t.h_ne_zero]
      lie_e_f := by simp [Subtype.ext_iff, t.lie_e_f]
      lie_h_e_nsmul := by simp [Subtype.ext_iff, t.lie_h_e_nsmul]
      lie_h_f_nsmul := by simp [Subtype.ext_iff, t.lie_h_f_nsmul] }
  lie_h_h i j := by simp [Subtype.ext_iff, lie_h_h]
  lie_h_e i j := by simp [Subtype.ext_iff, lie_h_e]
  lie_h_f i j := by simp [Subtype.ext_iff, lie_h_f]
  lie_e_f_ne i j hij := by simp [Subtype.ext_iff, lie_e_f_ne hij]
  span_ef := by
    let h₀ (i : b.support) : lieAlgebra b := ⟨h i, h_mem_lieAlgebra i⟩
    let e₀ (i : b.support) : lieAlgebra b := ⟨e i, e_mem_lieAlgebra i⟩
    let f₀ (i : b.support) : lieAlgebra b := ⟨f i, f_mem_lieAlgebra i⟩
    change LieSubalgebra.lieSpan K (lieAlgebra b) (range e₀ ∪ range f₀) = ⊤
    suffices LieSubalgebra.lieSpan K (lieAlgebra b) (range e₀ ∪ range f₀) =
        LieSubalgebra.lieSpan K (lieAlgebra b) (range h₀ ∪ range e₀ ∪ range f₀) by
      have hr : range h₀ ∪ range e₀ ∪ range f₀ = Subtype.val ⁻¹' (range h ∪ range e ∪ range f) := by
        aesop
      rw [this, hr]
      exact LieSubalgebra.lieSpan_lieSpan_coe_preimage
    simp only [union_assoc]
    refine le_antisymm (LieSubalgebra.lieSpan_mono <| by simp) ?_
    rw [LieSubalgebra.lieSpan_le]
    refine union_subset ?_ LieSubalgebra.subset_lieSpan
    rintro - ⟨i, rfl⟩
    have hef : h₀ i = ⁅e₀ i, f₀ i⁆ := by ext1; simp [h₀, e₀, f₀, (isSl2Triple i).lie_e_f]
    rw [hef]
    apply LieSubalgebra.lie_mem <;>
      exact LieSubalgebra.subset_lieSpan <| by simp

@[simp] lemma basis_A_eq : (basis b).A = b.cartanMatrix := rfl

instance : (cartanSubalgebra' b).IsCartanSubalgebra := (basis b).isCartanSubalgebra

variable [IsAlgClosed K]

open LieAlgebra LieAlgebra.IsKilling

/-- Up to equivalence, `LieAlgebra.IsKilling.rootSystem` is left inverse to
`RootPairing.GeckConstruction.lieAlgebra`. -/
def equivRootSystem :
    P.Equiv (rootSystem (cartanSubalgebra' b)) :=
  b.equivOfCartanMatrixEq _ (basis b).baseSupportEquiv <| by simp [(basis b).cartanMatrix_base_eq]

instance : IsSimple K (lieAlgebra b) := by
  rw [← isSimple_iff_isIrreducible (H := cartanSubalgebra' b)]
  exact (equivRootSystem b).isIrreducible

end LeftInverse

section RightInverse

open LieAlgebra LieAlgebra.IsKilling

variable [IsAlgClosed K]
  {L : Type*} [LieRing L] [LieAlgebra K L] [FiniteDimensional K L] [IsSimple K L]

open scoped Classical in
/-- `LieAlgebra.IsKilling.rootSystem` is right inverse to `RootPairing.GeckConstruction.lieAlgebra`.
-/
def equivLieAlgebra (H : LieSubalgebra K L) [H.IsCartanSubalgebra] (b : (rootSystem H).Base) :
    L ≃ₗ⁅K⁆ lieAlgebra b :=
  equivOfRootSystemEquiv <| equivRootSystem b

open scoped Classical in
/-- Every finite-dimensional simple Lie algebra arises from a root system via Geck's construction.

(Provided the coefficients are an algebraically-closed field of characteristic zero.) -/
example :
    ∃ (H : LieSubalgebra K L) (_ : H.IsCartanSubalgebra) (b : (rootSystem H).Base),
      Nonempty (L ≃ₗ⁅K⁆ lieAlgebra b) := by
  obtain ⟨x, hx⟩ := exists_isCartanSubalgebra_engel K L
  obtain ⟨b⟩ := (rootSystem (LieSubalgebra.engel K x)).nonempty_base
  exact ⟨_, hx, b, ⟨equivLieAlgebra (.engel K x) b⟩⟩

end RightInverse

end RootPairing.GeckConstruction
```
