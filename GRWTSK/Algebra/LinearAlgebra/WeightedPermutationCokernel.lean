/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib quotient modules, ZMod, and the first isomorphism theorem.
Formalization assistance: OpenAI.

The actual cokernel of the existing integer weighted permutation, with a
source-ordered residue map. Zero weights give ZMod 0 = Z, not a finite cyclic
group. Finiteness and the cardinality formula retain nonzero-weight premises.
These are unelaborated source proof scripts, not verification evidence.
-/
import GRWTSK.Algebra.LinearAlgebra.WeightedPermutationIntegral
import Mathlib.LinearAlgebra.Isomorphisms
import Mathlib.Data.ZMod.Basic
import Mathlib.SetTheory.Cardinal.Finite

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.WeightedPermutationCokernel

open WeightedPermutationIntegral
open scoped BigOperators

variable {ι : Type*}

/-- Each residue slot retains the SOURCE column identity, not the target index. -/
abbrev Residues (w : ι → ℤ) := (i : ι) → ZMod (w i).natAbs

/-- The quotient is by the range of the previous integer linear map. -/
abbrev Cokernel (e : Equiv.Perm ι) (w : ι → ℤ) :=
  (ι → ℤ) ⧸ LinearMap.range (transport e w)

/-- Read target e(i) modulo the signed source weight's absolute value. -/
def residue (e : Equiv.Perm ι) (w : ι → ℤ) : (ι → ℤ) →ₗ[ℤ] Residues w where
  toFun u i := (u (e i) : ZMod (w i).natAbs)
  map_add' u v := by funext i; simp
  map_smul' d u := by funext i; simp [zsmul_eq_mul]

/-- No nonzero-weight premise: zero modulus is the integer group. -/
theorem residue_zero_iff (e : Equiv.Perm ι) (w u : ι → ℤ) :
    residue e w u = 0 ↔ ∀ i, w i ∣ u (e i) := by
  change (fun i => (u (e i) : ZMod (w i).natAbs)) = 0 ↔ _
  rw [funext_iff]
  simp only [Pi.zero_apply, ZMod.intCast_zmod_eq_zero_iff_dvd,
    Int.natCast_natAbs, abs_dvd]

/-- All source-ordered residue tuples lift, including slots with zero modulus. -/
theorem residue_surjective (e : Equiv.Perm ι) (w : ι → ℤ) :
    Function.Surjective (residue e w) := by
  intro z
  choose v hv using (fun i => ZMod.intCast_surjective (z i))
  refine ⟨fun j => v (e.symm j), ?_⟩
  funext i
  simpa only [residue, Equiv.symm_apply_apply] using hv i

/-- Exactness comes from the old image theorem, not a determinant test. -/
theorem kernel_eq_range (e : Equiv.Perm ι) (w : ι → ℤ) :
    LinearMap.ker (residue e w) = LinearMap.range (transport e w) := by
  ext u
  change residue e w u = 0 ↔ ∃ v, transport e w v = u
  rw [residue_zero_iff, image_iff]

/-- An actual Z-linear quotient equivalence, not only equality of orders. -/
def cokernelEquiv (e : Equiv.Perm ι) (w : ι → ℤ) :
    Cokernel e w ≃ₗ[ℤ] Residues w :=
  (Submodule.quotEquivOfEq _ _ (kernel_eq_range e w).symm).trans
    ((residue e w).quotKerEquivOfSurjective (residue_surjective e w))

/-- The equivalence on every quotient representative is the specified residue map. -/
@[simp] theorem cokernelEquiv_mk (e : Equiv.Perm ι) (w u : ι → ℤ) :
    cokernelEquiv e w (Submodule.Quotient.mk u) = residue e w u := rfl

/-- Both inverse identities hold on all quotient classes and all residue tuples. -/
theorem cokernel_roundtrips (e : Equiv.Perm ι) (w : ι → ℤ) :
    (∀ z, (cokernelEquiv e w).symm (cokernelEquiv e w z) = z) ∧
    (∀ z, cokernelEquiv e w ((cokernelEquiv e w).symm z) = z) :=
  ⟨(cokernelEquiv e w).symm_apply_apply, (cokernelEquiv e w).apply_symm_apply⟩

/-- Annihilation of the whole cokernel is exactly all-target scalar clearing. -/
theorem annihilator_iff (e : Equiv.Perm ι) (w : ι → ℤ) (d : ℤ) :
    (∀ z : Cokernel e w, d • z = 0) ↔ ∀ i, w i ∣ d := by
  rw [← uniformClearing_iff e w d]
  constructor
  · intro h u
    have hz := h (Submodule.Quotient.mk u)
    have hm : d • u ∈ LinearMap.range (transport e w) :=
      (Submodule.Quotient.mk_eq_zero _).mp (by
        simpa only [Submodule.Quotient.mk_smul] using hz)
    exact hm
  · intro h z
    obtain ⟨u, rfl⟩ := Submodule.Quotient.mk_surjective (LinearMap.range (transport e w)) z
    have hm : d • u ∈ LinearMap.range (transport e w) := h u
    exact (Submodule.Quotient.mk_eq_zero _).mpr hm

/-- Nonzero weights are essential before treating all cyclic factors as finite. -/
theorem residues_natCard [Fintype ι] (w : ι → ℤ) (hw : ∀ i, w i ≠ 0) :
    Nat.card (Residues w) = ∏ i, (w i).natAbs := by
  letI : ∀ i, NeZero (w i).natAbs := fun i =>
    ⟨by simpa only [Int.natAbs_eq_zero] using hw i⟩
  rw [Nat.card_eq_fintype_card, Fintype.card_pi]
  simp only [ZMod.card]

/-- The index is a product; it is not the least scalar annihilating the cokernel. -/
theorem cokernel_natCard [Fintype ι] (e : Equiv.Perm ι) (w : ι → ℤ)
    (hw : ∀ i, w i ≠ 0) :
    Nat.card (Cokernel e w) = ∏ i, (w i).natAbs := by
  rw [Nat.card_congr (cokernelEquiv e w).toEquiv, residues_natCard w hw]

end GRWTSK.Algebra.LinearAlgebra.WeightedPermutationCokernel
