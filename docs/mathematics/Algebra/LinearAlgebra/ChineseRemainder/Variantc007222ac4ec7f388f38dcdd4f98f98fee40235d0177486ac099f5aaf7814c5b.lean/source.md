# Complete source: GRWTSK.Algebra.LinearAlgebra.ChineseRemainder.Variantc007222ac4ec7f388f38dcdd4f98f98fee40235d0177486ac099f5aaf7814c5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8e01d6e3527638169941e3330a4e2d94195910e` · SHA-256 `c007222ac4ec7f388f38dcdd4f98f98fee40235d0177486ac099f5aaf7814c5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
module

public import Mathlib.LinearAlgebra.TensorProduct.Pi
public import Mathlib.LinearAlgebra.TensorProduct.RightExactness
public import Mathlib.RingTheory.Ideal.Quotient.Operations

/-! # Module version of Chinese remainder theorem
-/

public section

open Function

variable {R : Type*} [CommRing R] {ι : Type*}
variable (M : Type*) [AddCommGroup M] [Module R M]
variable (I : ι → Ideal R) (hI : Pairwise (IsCoprime on I))

namespace Ideal

open TensorProduct LinearMap

lemma pi_mkQ_rTensor [Fintype ι] [DecidableEq ι] :
    (LinearMap.pi fun i ↦ (I i).mkQ).rTensor M = (piLeft ..).symm.toLinearMap ∘ₗ
      .pi (fun i ↦ TensorProduct.mk R (R ⧸ I i) M 1) ∘ₗ TensorProduct.lid R M := by
  ext; simp [LinearMap.pi, LinearEquiv.piCongrRight]

variable [Finite ι]
include hI

attribute [local instance] Fintype.ofFinite

/-- A form of Chinese remainder theorem for modules, part I: if ideals `Iᵢ` of `R` are pairwise
coprime, then for any `R`-module `M`, the natural map `M → Πᵢ (R ⧸ Iᵢ) ⊗[R] M` is surjective. -/
theorem pi_tensorProductMk_quotient_surjective :
    Surjective (LinearMap.pi fun i ↦ TensorProduct.mk R (R ⧸ I i) M 1) := by
  have := rTensor_surjective M (pi_mkQ_surjective hI)
  classical rw [pi_mkQ_rTensor] at this
  simpa using this

/-- A form of Chinese remainder theorem for modules, part II: if ideals `Iᵢ` of `R` are pairwise
coprime, then for any `R`-module `M`, the kernel of `M → Πᵢ (R ⧸ Iᵢ) ⊗[R] M` equals `(⋂ᵢ Iᵢ) • M`.
-/
theorem ker_tensorProductMk_quotient :
    ker (LinearMap.pi fun i ↦ TensorProduct.mk R (R ⧸ I i) M 1) =
      (⨅ i, I i) • (⊤ : Submodule R M) := by
  have := rTensor_exact M (exact_subtype_ker_map _) (pi_mkQ_surjective hI)
  rw [← (TensorProduct.lid R M).conj_exact_iff_exact, exact_iff] at this
  convert! this
  · classical simp [pi_mkQ_rTensor, LinearMap.comp_assoc]
  refine le_antisymm (Submodule.smul_le.mpr fun r hr m _ ↦ ⟨⟨r, ?_⟩ ⊗ₜ m, rfl⟩) ?_
  · simpa only [ker_pi, Submodule.ker_mkQ]
  rintro _ ⟨x, rfl⟩
  refine x.inductionOn (fun r m ↦ Submodule.smul_mem_smul ?_ ⟨⟩) fun _ _ ↦ ?_
  · simpa only [← (I _).ker_mkQ, ← ker_pi] using! Subtype.mem _
  · simpa using! add_mem

end Ideal
```
