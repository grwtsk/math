/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.RingTheory.PowerSeries.Inverse
import Mathlib.RingTheory.PowerSeries.Substitution
import Mathlib.Tactic.Ring

/-!
# Integral coordinate corrections in the host theta logarithm

Section 14 of the adjacent `AlpogeEllipticCubicalB4.md` identifies the sigma
factors in Alpöge's fixed inert-prime kernel. Removing their common numerator
leaves the unit `e X / h(X)` for an integral coordinate with tangent unit `e`.
The theorems here prove the cancellation under coefficient extension and
coefficientwise integrality under invertible multivariate substitution.
-/

noncomputable section
set_option autoImplicit false
namespace GRWTSK.NumberTheory.AlpogeHostLog
open PowerSeries

variable {R K σ : Type*} [CommRing R] [Field K]

/-- The series obtained by removing the first factor of X from a coordinate. -/
private def tail (h : PowerSeries R) : PowerSeries R :=
  PowerSeries.mk fun n => PowerSeries.coeff (n + 1) h

private theorem tail_factor {h : PowerSeries R} (h0 : h.constantCoeff = 0) :
    h = PowerSeries.X * tail h := by
  simpa [tail, h0] using h.eq_X_mul_shift_add_const

/-- The normalized quotient e X / h is an integral unit with constant one. -/
theorem exists_coordinate_unit (h : PowerSeries R) (e : Rˣ)
    (h0 : h.constantCoeff = 0) (h1 : h.coeff 1 = (e : R)) :
    ∃ V : (PowerSeries R)ˣ, h * (V : PowerSeries R) = C (e : R) * X ∧
      constantCoeff (V : PowerSeries R) = 1 := by
  have ht : (tail h).constantCoeff = (e : R) := by
    simpa [tail, ← coeff_zero_eq_constantCoeff_apply] using h1
  have hu : IsUnit (tail h) := isUnit_iff_constantCoeff.mpr (ht ▸ e.isUnit)
  let V : (PowerSeries R)ˣ := (Units.map (C (R := R)).toMonoidHom e) * hu.unit⁻¹
  have hV : tail h * (V : PowerSeries R) = C (e : R) := by
    change tail h * (C (e : R) * (↑hu.unit⁻¹ : PowerSeries R)) = _
    calc
      _ = C (↑e : R) * ((hu.unit : PowerSeries R) * (↑hu.unit⁻¹ : PowerSeries R)) := by
        rw [hu.unit_spec]; ring
      _ = _ := by simp
  refine ⟨V, ?_, ?_⟩
  · calc
      h * (V : PowerSeries R) = (X * tail h) * (V : PowerSeries R) :=
        congrArg (· * (V : PowerSeries R)) (tail_factor h0)
      _ = C (e : R) * X := by rw [mul_assoc, hV, mul_comm]
  · have hcc := congrArg (constantCoeff (R := R)) hV
    simp only [map_mul, ht, constantCoeff_C] at hcc
    exact e.isUnit.mul_left_cancel (by simpa using hcc : (e : R) * _ = _ * 1)

/-- Cancellation matches any two sigma factors with their common numerator. -/
theorem sigma_ratio_is_mapped_unit (f : R →+* K) (h : PowerSeries R) (e : Rˣ)
    (h0 : h.constantCoeff = 0) (h1 : h.coeff 1 = (e : R))
    (A B S : PowerSeries K) (hA : A * h.map f = S) (hB : B * S = C (f e) * X) :
    ∃ V : (PowerSeries R)ˣ, B * A = (V : PowerSeries R).map f ∧
      constantCoeff (V : PowerSeries R) = 1 := by
  obtain ⟨V, hV, hc⟩ := exists_coordinate_unit h e h0 h1
  have hn : h.map f ≠ 0 := by
    intro hz
    have hzero := congrArg (coeff 1 (R := K)) hz
    exact (e.isUnit.map f).ne_zero (by simpa [h1] using hzero)
  refine ⟨V, mul_right_cancel₀ hn ?_, hc⟩
  calc
    B * A * h.map f = B * S := by rw [mul_assoc, hA]
    _ = C (f e) * X := hB
    _ = (V : PowerSeries R).map f * h.map f := by
      simpa [mul_comm] using (congrArg (map f) hV).symm

/-- Coefficientwise membership in a subring is equivalent to descent of the whole series. -/
theorem integral_iff_map (O : Subring K) (F : MvPowerSeries σ K) :
    (∀ n, F.coeff n ∈ O) ↔ ∃ G : MvPowerSeries σ O, G.map O.subtype = F := by
  constructor
  · intro hf
    exact ⟨fun n => ⟨F.coeff n, hf n⟩, rfl⟩
  · rintro ⟨G, rfl⟩ n
    exact (G.coeff n).property

/-- Multivariate integral descent through a substitution and a mapped multiplier. -/
theorem integral_pullback (O : Subring K) {F : MvPowerSeries σ K}
    (hF : ∀ n, F.coeff n ∈ O) (a : σ → MvPowerSeries σ O) (ha : MvPowerSeries.HasSubst a)
    (U : MvPowerSeries σ O) :
    ∀ n, ((U.map O.subtype) *
      (F.subst (fun i => (a i).map O.subtype))).coeff n ∈ O := by
  obtain ⟨G, rfl⟩ := (integral_iff_map O F).mp hF
  apply (integral_iff_map O _).mpr
  exact ⟨U * G.subst a, by rw [map_mul, MvPowerSeries.map_subst ha]⟩

/-- Pulling back in every coordinate and inserting the same rank-one correction in
each factor preserves integrality in every coefficient and every finite rank. -/
theorem integral_corrected_diagonal [Fintype σ] (O : Subring K) {F : MvPowerSeries σ K}
    (hF : ∀ n, F.coeff n ∈ O) (h : PowerSeries O) (h0 : h.constantCoeff = 0)
    (V : (PowerSeries O)ˣ) :
    ∀ n, ((∏ i : σ, (((V : PowerSeries O).subst (MvPowerSeries.X i)).map O.subtype)) *
      F.subst (fun i : σ => (h.subst (MvPowerSeries.X i)).map O.subtype)).coeff n ∈ O := by
  let a (i : σ) : MvPowerSeries σ O := h.subst (MvPowerSeries.X i)
  have ha : MvPowerSeries.HasSubst a := by
    constructor
    · intro i
      have hc : (a i).constantCoeff = 0 :=
        PowerSeries.constantCoeff_subst_eq_zero (by simp) h h0
      simp [hc]
    · intro n
      exact Set.toFinite _
  simpa only [map_prod] using integral_pullback O hF a ha
    (∏ i : σ, (V : PowerSeries O).subst (MvPowerSeries.X i))

/-- Integral invertible coordinate changes, with an integral unit multiplier, also
reflect integrality. The hypotheses specify a left inverse for the coordinate tuple. -/
theorem integral_corrected_pullback_iff (O : Subring K) (F : MvPowerSeries σ K)
    (a b : σ → MvPowerSeries σ O) (ha : MvPowerSeries.HasSubst a)
    (hb : MvPowerSeries.HasSubst b) (hba : ∀ i, (a i).subst b = MvPowerSeries.X i)
    (U : (MvPowerSeries σ O)ˣ) :
    (∀ n, (((U : MvPowerSeries σ O).map O.subtype) *
      F.subst (fun i => (a i).map O.subtype)).coeff n ∈ O) ↔ ∀ n, F.coeff n ∈ O := by
  refine ⟨?_, fun hF => integral_pullback O hF a ha U⟩
  intro h
  obtain ⟨G, hG⟩ := (integral_iff_map O _).mp h
  have hc : (((↑U⁻¹ : MvPowerSeries σ O) * G).map O.subtype) =
      F.subst (fun i => (a i).map O.subtype) := by
    rw [map_mul, hG, ← mul_assoc, ← map_mul]
    simp
  apply (integral_iff_map O F).mpr
  refine ⟨((↑U⁻¹ : MvPowerSeries σ O) * G).subst b, ?_⟩
  rw [MvPowerSeries.map_subst hb, hc,
    MvPowerSeries.subst_comp_subst_apply (ha.map O.subtype) (hb.map O.subtype)]
  simp_rw [← MvPowerSeries.map_subst hb, hba, MvPowerSeries.map_X]
  rw [← MvPowerSeries.map_algebraMap_eq_subst_X]
  rfl

end GRWTSK.NumberTheory.AlpogeHostLog
