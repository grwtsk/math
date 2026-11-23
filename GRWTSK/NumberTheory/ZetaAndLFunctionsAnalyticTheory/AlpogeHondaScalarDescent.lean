/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.NumberTheory.Basic
import Mathlib.RingTheory.PowerSeries.Substitution
import Mathlib.Tactic.Ring

/-!
# Finite Honda logarithm corrections and detection by an integral coordinate

The sum is in an arbitrary commutative ring containing the inverse of p.
In particular the ambient ring may itself be a power series ring. The
finite identity retains every Honda level through the chosen depth.
-/

namespace GRWTSK.NumberTheory.AlpogeHondaScalarDescent

variable {S : Type*} [CommRing S]

/-- Truncated correction with both neighboring logarithm levels retained. -/
def correction (p n : ℕ) (inv x b : S) : S :=
  x + ∑ j ∈ Finset.range n,
    inv ^ (j+1) * ((x ^ (p^2)) ^ ((p^2)^j) - b ^ ((p^2)^j))

/-- Each coefficient difference is divisible through its full Honda level. -/
theorem frobenius_difference_dvd {R : Type*} [CommRing R] (p j : ℕ)
    (x b : R) (h : (p : R) ∣ x ^ (p^2) - b) :
    (p : R)^(j+1) ∣ (x ^ (p^2)) ^ ((p^2)^j) - b ^ ((p^2)^j) := by
  have he : (p^2)^j = p^(2*j) := (pow_mul p 2 j).symm
  rw [he]
  exact (pow_dvd_pow (p : R) (show j + 1 ≤ 2*j+1 by omega)).trans
    (dvd_sub_pow_of_dvd_sub h (2*j))

/-- Clearing the powers of p gives integrality of the finite logarithmic defect. -/
theorem correction_mem (O : Subring S) (p n : ℕ) (inv : S)
    (hi : inv * (p : S) = 1) (x b : O) (h : (p : O) ∣ x ^ (p^2) - b) :
    correction p n inv (x : S) (b : S) ∈ O := by
  apply O.add_mem x.property
  apply O.sum_mem
  intro j _
  obtain ⟨z, hz⟩ := frobenius_difference_dvd p j x b h
  have heq := congrArg O.subtype hz
  simp only [map_sub, map_pow, map_mul, map_natCast, Subring.subtype_apply] at heq
  rw [heq, ← mul_assoc, ← mul_pow, hi, one_pow, one_mul]
  exact z.property

private theorem map_subst (O : Subring S) (f g : PowerSeries O)
    (h : PowerSeries.HasSubst g) :
    PowerSeries.map O.subtype (f.subst g) =
      (f.map O.subtype).subst (g.map O.subtype) :=
  PowerSeries.map_subst h f

/-- If the value of an integral zero-constant series with unit derivative
descends to the subring, its zero-constant argument descends too. -/
theorem detector_reflects_integrality (O : Subring S) (f h : PowerSeries O)
    (f0 : f.constantCoeff = 0) (f1 : IsUnit (f.coeff 1)) (h0 : h.constantCoeff = 0)
    (g : PowerSeries S) (g0 : g.constantCoeff = 0)
    (hm : h.map O.subtype = (f.map O.subtype).subst g) :
    ∃ u : PowerSeries O, u.map O.subtype = g := by
  let Q := f.substInvOfIsUnit f1
  have hasG := PowerSeries.HasSubst.of_constantCoeff_zero' g0
  have hasH := PowerSeries.HasSubst.of_constantCoeff_zero' h0
  have hasF := PowerSeries.HasSubst.of_constantCoeff_zero' f0
  have fm0 : (f.map O.subtype).constantCoeff = 0 := by
    change O.subtype f.constantCoeff = 0
    rw [f0, map_zero]
  have hfm := PowerSeries.HasSubst.of_constantCoeff_zero' fm0
  have iden : Q.subst f = PowerSeries.X := f.subst_substInvOfIsUnit_left f0 f1
  refine ⟨Q.subst h, ?_⟩
  rw [map_subst O Q h hasH, hm, ← PowerSeries.subst_comp_subst_apply hfm hasG,
    ← map_subst O Q f hasF, iden, PowerSeries.map_X, PowerSeries.subst_X hasG]

end GRWTSK.NumberTheory.AlpogeHondaScalarDescent
