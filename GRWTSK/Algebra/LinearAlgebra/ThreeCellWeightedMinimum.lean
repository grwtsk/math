/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Compose a minimum-integral reduced lattice with an explicitly weighted
source-column permutation. The map is built before its diagonal frame,
residues, cokernel and clearing law. No product of unrelated costs is used.
Source proof scripts only: NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.Algebra.LinearAlgebra.ThreeCellIntegralMinimum
import GRWTSK.Algebra.LinearAlgebra.WeightedPermutationCokernel
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
import Mathlib.Data.Fintype.Prod
import Mathlib.Tactic.Choose

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.ThreeCellWeightedMinimum

open GRWTSK.Algebra.Homology.ThreeCellCech
open GRWTSK.Algebra.Homology.ThreeCellIntegralGauge
open ThreeCellIntegralMinimum
open scoped BigOperators

variable {ι : Type*}
abbrev Slots (ι : Type*) := ι × Fin 4
abbrev Data (ι : Type*) := Reduced (ι → ℤ)

/-- An integral target frame, with ordered differences rather than division. -/
def frame : Data ι ≃ₗ[ℤ] (Slots ι → ℤ) where
  toFun r s := ![r.1 s.1, r.2 0 s.1, r.2 1 s.1 - r.2 0 s.1,
    r.2 2 s.1 - r.2 0 s.1] s.2
  invFun q := (fun i => q (i, 0), fun j i =>
    ![q (i, 1), q (i, 1) + q (i, 2), q (i, 1) + q (i, 3)] j)
  left_inv r := by
    apply Prod.ext
    · rfl
    · funext j i
      fin_cases j <;> simp
  right_inv q := by
    funext s
    rcases s with ⟨i, j⟩
    fin_cases j <;> simp
  map_add' u v := by
    funext s
    rcases s with ⟨i, j⟩
    fin_cases j <;> simp <;> ring
  map_smul' d r := by
    funext s
    rcases s with ⟨i, j⟩
    fin_cases j <;> simp [zsmul_eq_mul] <;> ring

/-- Parameterize precisely the OLD 3/4/4 admissible lattice at each coefficient. -/
def minimumData : (Slots ι → ℤ) →ₗ[ℤ] Data ι where
  toFun q := (fun i => 3 * q (i, 0), fun j i =>
    ![q (i, 1), q (i, 1) + 4 * q (i, 2), q (i, 1) + 4 * q (i, 3)] j)
  map_add' u v := by
    apply Prod.ext
    · funext i; simp; ring
    · funext j i; fin_cases j <;> simp <;> ring
  map_smul' d q := by
    apply Prod.ext
    · funext i; simp [zsmul_eq_mul]; ring
    · funext j i; fin_cases j <;> simp [zsmul_eq_mul] <;> ring

def admissible (r : Data ι) : Prop :=
  ∀ i, IntegralMinimum (r.1 i) (fun j => r.2 j i)

theorem minimumData_image (r : Data ι) :
    (∃ q, minimumData q = r) ↔ admissible r := by
  constructor
  · rintro ⟨q, rfl⟩ i
    apply (minimum_integral_iff _ _).mpr
    refine ⟨⟨q (i, 0), rfl⟩, ⟨q (i, 2), ?_⟩, ⟨q (i, 3), ?_⟩⟩ <;>
      simp [minimumData]
  · intro h
    have hq : ∀ i, ∃ m u v : ℤ,
        r.1 i = 3*m ∧ r.2 1 i-r.2 0 i = 4*u ∧ r.2 2 i-r.2 0 i = 4*v := by
      intro i
      rcases (minimum_integral_iff _ _).mp (h i) with ⟨⟨m, hm⟩, ⟨u, hu⟩, ⟨v, hv⟩⟩
      exact ⟨m, u, v, hm, hu, hv⟩
    choose m u v hm hu hv using hq
    refine ⟨fun s => ![m s.1, r.2 0 s.1, u s.1, v s.1] s.2, ?_⟩
    apply Prod.ext
    · funext i; exact (hm i).symm
    · funext j i
      fin_cases j <;> simp [minimumData] <;> omega

/-- Actual integer cochains realizing every minimum-admissible source. -/
def integralCell (q : Slots ι → ℤ) : Cell (ι → ℤ) :=
  (fun j i => ![q (i,0)+q (i,3), q (i,0)-q (i,2),
    q (i,0)+q (i,2)-q (i,3)] j,
   fun j i => ![-q (i,1)-q (i,2)-q (i,3),
    -q (i,1)-2*q (i,2)-q (i,3), -q (i,1)-q (i,2)-2*q (i,3)] j)

@[simp] theorem reduce_integralCell (q : Slots ι → ℤ) :
    reduce (integralCell q) = minimumData q := by
  apply Prod.ext
  · funext i; simp [reduce, total, integralCell, minimumData]; ring
  · funext j i
    fin_cases j <;> simp [reduce, mismatch, delta0, integralCell, minimumData] <;> ring

/-- A coefficient-level identity with the PREVIOUS real minimum, not a fitted projection. -/
theorem integralCell_minimum (q : Slots ι → ℤ) (i : ι) :
    castCell (fun j => (integralCell q).1 j i, fun j => (integralCell q).2 j i) =
      minimum ((minimumData q).1 i) (fun j => (minimumData q).2 j i) := by
  apply Prod.ext <;> funext j <;> fin_cases j <;>
    simp [castCell, minimum, integralCell, minimumData,
      GRWTSK.Algebra.LinearAlgebra.ThreeCellGaugeMetric.minimumRep,
      GRWTSK.Algebra.LinearAlgebra.ThreeCellHodgeGauge.delta0Transpose,
      delta1, smul_eq_mul] <;> ring

/-- The named source permutation acts equally on the sum and every mismatch field. -/
def reducedPort (e : Equiv.Perm ι) (w : ι → ℤ) : Data ι →ₗ[ℤ] Data ι where
  toFun r := (WeightedPermutationIntegral.transport e w r.1,
    fun j => WeightedPermutationIntegral.transport e w (r.2 j))
  map_add' u v := by apply Prod.ext <;> simp
  map_smul' d r := by apply Prod.ext <;> simp

/-- Build the actual composite BEFORE introducing its diagonal matrix. -/
def composite (e : Equiv.Perm ι) (w : ι → ℤ) : (Slots ι → ℤ) →ₗ[ℤ] Data ι :=
  (reducedPort e w).comp minimumData

def baseWeight : Fin 4 → ℤ := ![3, 1, 4, 4]
def combinedWeight (w : ι → ℤ) (s : Slots ι) : ℤ := w s.1 * baseWeight s.2
def slotPerm (e : Equiv.Perm ι) : Equiv.Perm (Slots ι) :=
  Equiv.prodCongr e (Equiv.refl (Fin 4))

/-- Whole-vector equality in an integral frame, preserving source-column direction. -/
theorem frame_composite (e : Equiv.Perm ι) (w : ι → ℤ) (q : Slots ι → ℤ) :
    frame (composite e w q) =
      WeightedPermutationIntegral.transport (slotPerm e) (combinedWeight w) q := by
  funext s
  rcases s with ⟨i, j⟩
  fin_cases j <;>
    simp [frame, composite, reducedPort, minimumData, slotPerm, combinedWeight,
      baseWeight, WeightedPermutationIntegral.transport] <;> ring

/-- Exactly the image of admissible sources, not all integral inverse targets. -/
theorem composite_image_admissible (e : Equiv.Perm ι) (w : ι → ℤ) (r : Data ι) :
    (∃ q, composite e w q = r) ↔ ∃ u, admissible u ∧ reducedPort e w u = r := by
  constructor
  · rintro ⟨q, hq⟩
    exact ⟨minimumData q, (minimumData_image _).mp ⟨q, rfl⟩, hq⟩
  · rintro ⟨u, hu, hr⟩
    obtain ⟨q, rfl⟩ := (minimumData_image u).mpr hu
    exact ⟨q, hr⟩

theorem composite_image_iff (e : Equiv.Perm ι) (w : ι → ℤ) (r : Data ι) :
    (∃ q, composite e w q = r) ↔
      ∀ s : Slots ι, combinedWeight w s ∣ frame r (slotPerm e s) := by
  rw [← WeightedPermutationIntegral.image_iff]
  constructor
  · rintro ⟨q, hq⟩
    exact ⟨q, by rw [← frame_composite, hq]⟩
  · rintro ⟨q, hq⟩
    exact ⟨q, frame.injective (by rw [frame_composite, hq])⟩

def residue (e : Equiv.Perm ι) (w : ι → ℤ) :
    Data ι →ₗ[ℤ] WeightedPermutationCokernel.Residues (combinedWeight w) :=
  (WeightedPermutationCokernel.residue (slotPerm e) (combinedWeight w)).comp frame.toLinearMap

theorem residue_surjective (e : Equiv.Perm ι) (w : ι → ℤ) :
    Function.Surjective (residue e w) :=
  (WeightedPermutationCokernel.residue_surjective _ _).comp frame.surjective

theorem residue_kernel (e : Equiv.Perm ι) (w : ι → ℤ) :
    LinearMap.ker (residue e w) = LinearMap.range (composite e w) := by
  ext r
  change WeightedPermutationCokernel.residue (slotPerm e) (combinedWeight w) (frame r) = 0 ↔ _
  rw [WeightedPermutationCokernel.residue_zero_iff, ← composite_image_iff]
  rfl

abbrev Cokernel (e : Equiv.Perm ι) (w : ι → ℤ) :=
  Data ι ⧸ LinearMap.range (composite e w)

def cokernelEquiv (e : Equiv.Perm ι) (w : ι → ℤ) :
    Cokernel e w ≃ₗ[ℤ] WeightedPermutationCokernel.Residues (combinedWeight w) :=
  (Submodule.quotEquivOfEq _ _ (residue_kernel e w).symm).trans
    ((residue e w).quotKerEquivOfSurjective (residue_surjective e w))

@[simp] theorem cokernelEquiv_mk (e : Equiv.Perm ι) (w : ι → ℤ) (r : Data ι) :
    cokernelEquiv e w (Submodule.Quotient.mk r) = residue e w r := rfl

/-- Zero weights still have infinite residue slots; finiteness is conditional. -/
theorem cokernel_card [Fintype ι] (e : Equiv.Perm ι) (w : ι → ℤ)
    (hw : ∀ i, w i ≠ 0) :
    Nat.card (Cokernel e w) = ∏ i : ι, 48 * (w i).natAbs ^ 4 := by
  classical
  have hcw : ∀ s : Slots ι, combinedWeight w s ≠ 0 := by
    rintro ⟨i, j⟩
    apply mul_ne_zero (hw i)
    fin_cases j <;> norm_num [baseWeight]
  rw [Nat.card_congr (cokernelEquiv e w).toEquiv,
    WeightedPermutationCokernel.residues_natCard _ hcw]
  rw [← Finset.univ_product_univ, Finset.prod_product]
  apply Finset.prod_congr rfl
  intro i _
  simp [combinedWeight, baseWeight, Fin.prod_univ_succ, Int.natAbs_mul] <;> ring

private theorem three_four_dvd (w d : ℤ) :
    (3*w ∣ d ∧ 4*w ∣ d) ↔ 12*w ∣ d := by
  constructor
  · rintro ⟨⟨u, hu⟩, ⟨v, hv⟩⟩
    by_cases hw : w = 0
    · subst w; simpa using hu
    · have he : 3*u = 4*v := mul_left_cancel₀ hw (by
        calc
          w*(3*u) = (3*w)*u := by ring
          _ = d := hu.symm
          _ = (4*w)*v := hv
          _ = w*(4*v) := by ring)
      have hd : (4 : ℤ) ∣ u := by omega
      obtain ⟨k, hk⟩ := hd
      exact ⟨k, by rw [hu, hk]; ring⟩
  · rintro ⟨k, rfl⟩
    exact ⟨⟨4*k, by ring⟩, ⟨3*k, by ring⟩⟩

/-- Least common scalar is a divisibility statement, not a product of moduli. -/
theorem clearing_iff (e : Equiv.Perm ι) (w : ι → ℤ) (d : ℤ) :
    (∀ r : Data ι, ∃ q, composite e w q = d • r) ↔ ∀ i, 12*w i ∣ d := by
  have hf : (∀ r : Data ι, ∃ q, composite e w q = d • r) ↔
      ∀ u : Slots ι → ℤ, ∃ q,
        WeightedPermutationIntegral.transport (slotPerm e) (combinedWeight w) q = d • u := by
    constructor
    · intro h u
      obtain ⟨q, hq⟩ := h (frame.symm u)
      refine ⟨q, ?_⟩
      rw [← frame_composite, hq, map_smul, LinearEquiv.apply_symm_apply]
    · intro h r
      obtain ⟨q, hq⟩ := h (frame r)
      exact ⟨q, frame.injective (by rw [frame_composite, map_smul, hq])⟩
  rw [hf, WeightedPermutationIntegral.uniformClearing_iff]
  constructor
  · intro h i
    apply (three_four_dvd (w i) d).mp
    exact ⟨by simpa [combinedWeight, baseWeight, mul_comm] using h (i,0),
      by simpa [combinedWeight, baseWeight, mul_comm] using h (i,2)⟩
  · intro h s
    rcases s with ⟨i,j⟩
    obtain ⟨v, hv⟩ := h i
    fin_cases j
    · exact ⟨4*v, by simp [combinedWeight, baseWeight]; rw [hv]; ring⟩
    · exact ⟨12*v, by simp [combinedWeight, baseWeight]; rw [hv]; ring⟩
    · exact ⟨3*v, by simp [combinedWeight, baseWeight]; rw [hv]; ring⟩
    · exact ⟨3*v, by simp [combinedWeight, baseWeight]; rw [hv]; ring⟩

end GRWTSK.Algebra.LinearAlgebra.ThreeCellWeightedMinimum
