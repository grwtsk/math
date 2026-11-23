/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.RingTheory.PowerSeries.Substitution
import Mathlib.Tactic.Ring

/-!
# Tame extraction at a prime-to-residue-characteristic torsion translate

The normalized formal root of an integral power has integral coefficients whenever
the exponent is invertible in the coefficient subring. The second theorem permits
a zero of known order with unit leading coefficient before normalization. These
are the coefficient-descent steps for the translated elliptic theta series and
the multivariate frame correction in §§15 and 18 of `AlpogeEllipticCubicalB4.md`.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.AlpogeTorsionTheta
open PowerSeries

variable {R K : Type*} [CommRing R] [Field K]

/-- The coordinate for the m-th power map at 1. -/
private def powerCoordinate (R : Type*) [CommRing R] (m : ℕ) : PowerSeries R :=
  (1 + X) ^ m - 1

private theorem map_substitution (O : Subring K) (g q : PowerSeries O)
    (hg : HasSubst g) : map O.subtype (q.subst g) = (map O.subtype q).subst (map O.subtype g) :=
  PowerSeries.map_subst hg q

private theorem root_coordinate (m : ℕ) (hm : IsUnit (m : R)) :
    ∃ Q : PowerSeries R, Q.constantCoeff = 0 ∧
      Q.subst (powerCoordinate R m) = X := by
  let P := powerCoordinate R m
  have h0 : P.constantCoeff = 0 := by simp [P, powerCoordinate]
  have h1 : IsUnit (P.coeff 1) := by
    simpa [P, powerCoordinate, coeff_one_pow] using hm
  exact ⟨P.substInvOfIsUnit h1, P.constantCoeff_substInvOfIsUnit h1,
    P.subst_substInvOfIsUnit_left h0 h1⟩

/-- Normalized tame root extraction in every multidegree, for any variable type. -/
theorem tame_root_integral_mv {ι : Type*} (O : Subring K) (m : ℕ) (hm : IsUnit (m : O))
    (Y : MvPowerSeries ι K) (hY : Y.constantCoeff = 1)
    (hpow : ∀ ν, (Y ^ m).coeff ν ∈ O) : ∀ ν, Y.coeff ν ∈ O := by
  obtain ⟨Q, -, hQ⟩ := root_coordinate m hm
  let G : MvPowerSeries ι O := fun ν => ⟨(Y ^ m).coeff ν, hpow ν⟩
  have hG : G.map O.subtype = Y ^ m := by ext ν; rfl
  have hG0 : G.constantCoeff = 1 := by
    apply Subtype.ext
    change MvPowerSeries.constantCoeff (Y ^ m) = 1
    simp [hY]
  have hsG : HasSubst (G - 1) := HasSubst.of_constantCoeff_zero (by simp [hG0])
  have hsY : HasSubst (Y - 1) := HasSubst.of_constantCoeff_zero (by simp [hY])
  have hP : (powerCoordinate O m).map O.subtype = powerCoordinate K m := by
    simp [powerCoordinate]
  have hsP : HasSubst (powerCoordinate O m) :=
    HasSubst.of_constantCoeff_zero' (by simp [powerCoordinate])
  have hPsub : (powerCoordinate K m).subst (Y - 1) = Y ^ m - 1 := by
    change ((1 + X) ^ m - 1 : PowerSeries K).subst (Y - 1) = _
    rw [← PowerSeries.coe_substAlgHom hsY]
    simp [PowerSeries.substAlgHom_X, add_sub_cancel]
  have hcomp := congrArg (map O.subtype) hQ
  rw [map_substitution O _ _ hsP, hP, map_X] at hcomp
  have hsPK : HasSubst (powerCoordinate K m) :=
    HasSubst.of_constantCoeff_zero' (by simp [powerCoordinate])
  have heq : MvPowerSeries.map O.subtype (1 + Q.subst (G - 1)) = Y := by
    rw [map_add, map_one, PowerSeries.map_subst hsG, map_sub, hG, map_one, ← hPsub,
      ← subst_comp_subst_apply hsPK hsY, hcomp, subst_X hsY]
    ring
  intro ν
  rw [← heq, MvPowerSeries.coeff_map]
  exact Subtype.property _

/-- A normalized formal m-th root descends to any coefficient subring where m is a unit. -/
theorem tame_root_integral (O : Subring K) (m : ℕ) (hm : IsUnit (m : O))
    (Y : PowerSeries K) (hY : Y.constantCoeff = 1)
    (hpow : ∀ n, (Y ^ m).coeff n ∈ O) : ∀ n, Y.coeff n ∈ O := by
  have h := tame_root_integral_mv O m hm Y hY
  have hcoeff (ν : Unit →₀ ℕ) : MvPowerSeries.coeff ν (Y ^ m) ∈ O := by
    have he : Finsupp.single () (ν ()) = ν := by
      apply Finsupp.ext
      intro i
      cases i
      simp
    have hν := hpow (ν ())
    change MvPowerSeries.coeff (Finsupp.single () (ν ())) (Y ^ m) ∈ O at hν
    rwa [he] at hν
  exact fun n => h hcoeff (Finsupp.single () n)

/-- Integral m-th powers after removing a known zero of order d.
The leading coefficient of the remaining factor is an integral unit. -/
theorem tame_root_at_zero (O : Subring K) (m d : ℕ) (hm : IsUnit (m : O))
    (a : Oˣ) (Y : PowerSeries K) (hY : Y.constantCoeff = 1)
    (hpow : ∀ n, ((X ^ d * C (a : K) * Y) ^ m).coeff n ∈ O) :
    ∀ n, Y.coeff n ∈ O := by
  apply tame_root_integral O m hm Y hY
  intro n
  have h := hpow (n + d * m)
  rw [mul_pow, mul_pow, ← pow_mul, ← map_pow, mul_assoc,
    coeff_X_pow_mul, coeff_C_mul] at h
  have hi := O.mul_mem (show ((↑a⁻¹ : O) : K) ^ m ∈ O from O.pow_mem (↑a⁻¹ : O).property m) h
  have hc : ((↑a⁻¹ : O) : K) * ((a : O) : K) = 1 := by
    exact_mod_cast a.inv_mul
  simpa [← mul_assoc, ← mul_pow, hc] using hi

end GRWTSK.NumberTheory.AlpogeTorsionTheta
