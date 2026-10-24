/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Exact arithmetic obstruction to the OLD least-six-energy representative.
The quotient itself has an integral anchored section; the Euclidean minimum
has extra congruences. Its finite obstruction is Z/3 x Z/4 x Z/4.
No intrinsic geometric lattice or Lean acceptance is asserted.
-/
import GRWTSK.Algebra.Homology.ThreeCellIntegralGauge
import GRWTSK.Analysis.LinearAlgebra.ThreeCellGaugeMetric
import Mathlib.Data.ZMod.Basic
import Lean.Elab.Tactic.Omega

set_option autoImplicit false
noncomputable section

namespace GRWTSK.LinearAlgebra.ThreeCellIntegralMinimum

open GRWTSK.Algebra.Homology.ThreeCellCech
open GRWTSK.Algebra.Homology.ThreeCellIntegralGauge
open GRWTSK.Analysis.LinearAlgebra

/-- Scalar extension of all SIX entries, not a new fitted normalizer. -/
def castCell (v : Cell ℤ) : Cell ℝ :=
  (fun j => (v.1 j : ℝ), fun j => (v.2 j : ℝ))

/-- Sum s corresponds to the OLD mean s/3. -/
def minimum (s : ℤ) (e : Triple ℤ) : Cell ℝ :=
  ThreeCellGaugeMetric.minimumRep ((s : ℝ) / 3) (fun j => (e j : ℝ))

def IntegralMinimum (s : ℤ) (e : Triple ℤ) : Prop :=
  ∃ v : Cell ℤ, castCell v = minimum s e

/-- Bind normalization of integer cochains to the original real minimum formula. -/
theorem normalForm_cast (v : Cell ℤ) :
    ThreeCellGaugeMetric.normalForm (castCell v) = minimum (reduce v).1 (reduce v).2 := by
  apply Prod.ext <;> funext j <;> fin_cases j <;>
    simp [ThreeCellGaugeMetric.normalForm, ThreeCellGaugeMetric.minimumRep,
      ThreeCellHodgeGauge.reduced, ThreeCellHodgeGauge.average,
      ThreeCellHodgeGauge.delta0Transpose, minimum, castCell, reduce,
      total, mismatch, delta0, delta1, smul_eq_mul] <;> ring

/-- Extra conditions concern the MINIMUM representative, not existence of any integral lift. -/
theorem minimum_integral_iff (s : ℤ) (e : Triple ℤ) :
    IntegralMinimum s e ↔ (3 : ℤ) ∣ s ∧ (4 : ℤ) ∣ e 1 - e 0 ∧ (4 : ℤ) ∣ e 2 - e 0 := by
  constructor
  · rintro ⟨⟨z, a⟩, hv⟩
    have h0 := congrFun (congrArg Prod.fst hv) 0
    have h1 := congrFun (congrArg Prod.fst hv) 1
    have h0R : (12 : ℝ) * (z 0 : ℝ) =
        4 * (s : ℝ) + 3 * (-(e 0 : ℝ) + (e 2 : ℝ)) := by
      dsimp [castCell, minimum, ThreeCellGaugeMetric.minimumRep,
        ThreeCellHodgeGauge.delta0Transpose] at h0
      simp only [smul_eq_mul] at h0
      linarith
    have h1R : (12 : ℝ) * (z 1 : ℝ) =
        4 * (s : ℝ) + 3 * ((e 0 : ℝ) - (e 1 : ℝ)) := by
      dsimp [castCell, minimum, ThreeCellGaugeMetric.minimumRep,
        ThreeCellHodgeGauge.delta0Transpose] at h1
      simp only [smul_eq_mul] at h1
      linarith
    have h0Z : 12 * z 0 = 4 * s + 3 * (-e 0 + e 2) := by exact_mod_cast h0R
    have h1Z : 12 * z 1 = 4 * s + 3 * (e 0 - e 1) := by exact_mod_cast h1R
    have hs : (3 : ℤ) ∣ s := by omega
    obtain ⟨m, hm⟩ := hs
    refine ⟨⟨m, hm⟩, ?_, ?_⟩ <;> omega
  · rintro ⟨⟨m, hm⟩, ⟨u, hu⟩, ⟨w, hw⟩⟩
    have he1 : e 1 = e 0 + 4 * u := by omega
    have he2 : e 2 = e 0 + 4 * w := by omega
    refine ⟨(![m + w, m - u, m + u - w],
      ![-e 0 - u - w, -e 0 - 2*u - w, -e 0 - u - 2*w]), ?_⟩
    apply Prod.ext <;> funext j <;> fin_cases j <;>
      simp [castCell, minimum, ThreeCellGaugeMetric.minimumRep,
        ThreeCellHodgeGauge.delta0Transpose, delta1, hm, he1, he2, smul_eq_mul] <;> ring

abbrev Obstruction := ZMod 3 × (ZMod 4 × ZMod 4)

/-- Ordered residue differences; no determinant-only surrogate for the obstruction. -/
def obstructionHom : Reduced ℤ →+ Obstruction where
  toFun r := ((r.1 : ZMod 3), ((r.2 1 - r.2 0 : ℤ) : ZMod 4),
    ((r.2 2 - r.2 0 : ℤ) : ZMod 4))
  map_zero' := by simp
  map_add' u v := by
    apply Prod.ext
    · simp
    · apply Prod.ext <;> simp <;> ring

def obstruction : Reduced ℤ →ₗ[ℤ] Obstruction where
  toFun := obstructionHom
  map_add' := obstructionHom.map_add
  map_smul' n v := map_zsmul obstructionHom v n

theorem obstruction_zero_iff (s : ℤ) (e : Triple ℤ) :
    obstruction (s, e) = 0 ↔ IntegralMinimum s e := by
  rw [minimum_integral_iff]
  simp only [obstruction, obstructionHom, Prod.mk_eq_zero,
    ZMod.intCast_zmod_eq_zero_iff_dvd]

/-- Every residue obstruction occurs for an actual integral reduced cell. -/
theorem obstruction_surjective : Function.Surjective obstruction := by
  rintro ⟨r, u, v⟩
  refine ⟨((r.val : ℤ), ![0, (u.val : ℤ), (v.val : ℤ)]), ?_⟩
  simp [obstruction, obstructionHom]

/-- This is the index of MINIMUM-integral reduced data, not the gauge quotient itself. -/
abbrev MinimumIntegralLattice := LinearMap.ker obstruction

def obstructionEquiv : (Reduced ℤ ⧸ MinimumIntegralLattice) ≃ₗ[ℤ] Obstruction :=
  obstruction.quotKerEquivOfSurjective obstruction_surjective

@[simp] theorem obstructionEquiv_mk (r : Reduced ℤ) :
    obstructionEquiv (Submodule.Quotient.mk r) = obstruction r := rfl

theorem minimum_lattice_index : Nat.card (Reduced ℤ ⧸ MinimumIntegralLattice) = 48 := by
  calc
    Nat.card (Reduced ℤ ⧸ MinimumIntegralLattice) = Nat.card Obstruction :=
      Nat.card_congr obstructionEquiv.toEquiv
    _ = 48 := by norm_num [Nat.card_eq_fintype_card, Obstruction, ZMod.card]

/-- The least positive UNIVERSAL clearing scalar is 12, not the index 48. -/
theorem universal_clearing_iff (d : ℤ) :
    (∀ s : ℤ, ∀ e : Triple ℤ, IntegralMinimum (d * s) (fun j => d * e j)) ↔
      (12 : ℤ) ∣ d := by
  constructor
  · intro h
    have h3 := ((minimum_integral_iff d (0 : Triple ℤ)).mp (by simpa using h 1 0)).1
    have h4 := ((minimum_integral_iff 0 (![0, d, 0] : Triple ℤ)).mp
      (by simpa using h 0 ![0, 1, 0])).2.1
    norm_num at h4
    omega
  · rintro ⟨k, rfl⟩ s e
    apply (minimum_integral_iff _ _).mpr
    exact ⟨⟨4*k*s, by ring⟩, ⟨3*k*(e 1-e 0), by ring⟩,
      ⟨3*k*(e 2-e 0), by ring⟩⟩

theorem clear12 (s : ℤ) (e : Triple ℤ) :
    IntegralMinimum (12 * s) (fun j => 12 * e j) :=
  (universal_clearing_iff 12).mpr (dvd_refl 12) s e

/-- Already-integral quotient data can require a nonintegral minimizing representative. -/
theorem two_independent_obstructions :
    ¬ IntegralMinimum 1 (0 : Triple ℤ) ∧ ¬ IntegralMinimum 0 ![0, 1, 0] := by
  constructor <;> rw [minimum_integral_iff] <;> norm_num

end GRWTSK.LinearAlgebra.ThreeCellIntegralMinimum
