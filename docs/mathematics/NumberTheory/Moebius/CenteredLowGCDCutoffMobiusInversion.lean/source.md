# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDCutoffMobiusInversion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3f545d399326589f9a8e0848dbf33ea1be7dcc0` · SHA-256 `a57396df8f446a77ef334a4541e0fd0652aa3c5a5024ab931232c99f382716cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerCoprimeTailSplit
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic

/-!
# Möbius inversion of the low-common-gcd cutoff

For the arithmetic cutoff `1_{g <= Y}`, define its Dirichlet-Möbius
coefficient

`gamma_Y = mu * 1_{· <= Y}`.

Then

`1_{g <= Y} = sum_{r | g} gamma_Y(r)`,

so the complete centered low-gcd bilinear is exactly a signed square expansion
in the centered divisibility tails.  The coefficient at `r = 1` is one and
all coefficients with `1 < r <= Y` vanish.

This yields the exact obstruction identity used later: after subtracting the
already-controlled large-index coprime Möbius square, the remaining residual
is the full centered coefficient-mass square plus a correction supported only
at indices `r > Y`.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction

/-- Arithmetic-function indicator of the positive cutoff interval `[1,Y]`. -/
def gcdCutoffIndicator (Y : ℕ) : ArithmeticFunction ℝ where
  toFun n := if n = 0 then 0 else if n ≤ Y then 1 else 0
  map_zero' := by simp

@[simp]
theorem gcdCutoffIndicator_zero (Y : ℕ) :
    gcdCutoffIndicator Y 0 = 0 := by
  rfl

@[simp]
theorem gcdCutoffIndicator_of_pos
    {Y n : ℕ} (hn : 0 < n) :
    gcdCutoffIndicator Y n =
      if n ≤ Y then 1 else 0 := by
  simp [gcdCutoffIndicator, hn.ne']

/-- Möbius coefficient of the gcd cutoff. -/
def gcdCutoffMobiusCoefficient
    (Y r : ℕ) : ℝ :=
  (((μ : ArithmeticFunction ℝ) * gcdCutoffIndicator Y) r)

/-- Summing the cutoff coefficients over the divisors recovers the cutoff
indicator. -/
theorem gcdCutoffMobiusCoefficient_divisor_sum
    {Y n : ℕ}
    (hn : 0 < n) :
    (∑ r ∈ n.divisors,
      gcdCutoffMobiusCoefficient Y r) =
        if n ≤ Y then 1 else 0 := by
  have hfun :
      (((μ : ArithmeticFunction ℝ) * gcdCutoffIndicator Y) *
          (ArithmeticFunction.zeta : ArithmeticFunction ℝ)) =
        gcdCutoffIndicator Y := by
    calc
      (((μ : ArithmeticFunction ℝ) * gcdCutoffIndicator Y) *
          (ArithmeticFunction.zeta : ArithmeticFunction ℝ)) =
        (((μ : ArithmeticFunction ℝ) *
          (ArithmeticFunction.zeta : ArithmeticFunction ℝ)) *
            gcdCutoffIndicator Y) := by
              ac_rfl
      _ = 1 * gcdCutoffIndicator Y := by
        rw [ArithmeticFunction.coe_moebius_mul_coe_zeta]
      _ = gcdCutoffIndicator Y := one_mul _
  have h :=
    congrArg
      (fun f : ArithmeticFunction ℝ => f n)
      hfun
  rw [ArithmeticFunction.coe_mul_zeta_apply] at h
  simpa [gcdCutoffMobiusCoefficient,
    gcdCutoffIndicator, hn.ne'] using h

/-- The cutoff coefficient at one is one as soon as the cutoff is nonempty. -/
theorem gcdCutoffMobiusCoefficient_one
    {Y : ℕ}
    (hY : 1 ≤ Y) :
    gcdCutoffMobiusCoefficient Y 1 = 1 := by
  unfold gcdCutoffMobiusCoefficient
  simp [gcdCutoffIndicator, hY]

/-- Every coefficient strictly between one and the cutoff vanishes. -/
theorem gcdCutoffMobiusCoefficient_eq_zero_of_one_lt_le
    {Y r : ℕ}
    (hr : 1 < r)
    (hrY : r ≤ Y) :
    gcdCutoffMobiusCoefficient Y r = 0 := by
  have hterm :
      ∀ p ∈ r.divisorsAntidiagonal,
        gcdCutoffIndicator Y p.2 = 1 := by
    intro p hp
    have hp2mem :=
      Nat.snd_mem_divisors_of_mem_antidiagonal hp
    have hp2pos := Nat.pos_of_mem_divisors hp2mem
    have hp2le := Nat.divisor_le hp2mem
    simp [gcdCutoffIndicator, hp2pos.ne',
      hp2le.trans hrY]
  have hconv :
      gcdCutoffMobiusCoefficient Y r =
        (((μ : ArithmeticFunction ℝ) *
          (ArithmeticFunction.zeta : ArithmeticFunction ℝ)) r) := by
    unfold gcdCutoffMobiusCoefficient
    rw [ArithmeticFunction.mul_apply,
      ArithmeticFunction.mul_apply]
    apply Finset.sum_congr rfl
    intro p hp
    rw [hterm p hp]
    have hp2mem :=
      Nat.snd_mem_divisors_of_mem_antidiagonal hp
    have hp2pos := Nat.pos_of_mem_divisors hp2mem
    simp [ArithmeticFunction.zeta_apply, hp2pos.ne']
  rw [hconv, ArithmeticFunction.coe_moebius_mul_coe_zeta]
  simp [hr.ne']

/-- The cutoff coefficients summed over common divisors give the exact
low-gcd indicator. -/
theorem sum_gcdCutoffMobiusCoefficient_common_divisors
    {X Y d e : ℕ}
    (hd : d ∈ modulusIndexSet X)
    (he : e ∈ modulusIndexSet X) :
    (∑ r ∈ modulusIndexSet X,
      if r ∣ d ∧ r ∣ e then
        gcdCutoffMobiusCoefficient Y r
      else 0) =
      if Nat.gcd d e ≤ Y then 1 else 0 := by
  have hdI := Finset.mem_Icc.mp hd
  have heI := Finset.mem_Icc.mp he
  have hgpos : 0 < Nat.gcd d e :=
    Nat.gcd_pos_of_pos_left e (by omega)
  have hfilter :
      (modulusIndexSet X).filter
          (fun r => r ∣ d ∧ r ∣ e) =
        (Nat.gcd d e).divisors := by
    ext r
    simp only [modulusIndexSet, Finset.mem_filter,
      Finset.mem_Icc, Nat.mem_divisors, Nat.dvd_gcd_iff]
    constructor
    · rintro ⟨⟨hr0, hrB⟩, hrd, hre⟩
      exact ⟨⟨hrd, hre⟩, Nat.ne_of_gt hgpos⟩
    · rintro ⟨hrg, hg0⟩
      have hrgcd : r ∣ Nat.gcd d e :=
        Nat.dvd_gcd hrg.1 hrg.2
      have hr0 : 0 < r :=
        Nat.pos_of_dvd_of_pos hrgcd hgpos
      have hrle : r ≤ Nat.gcd d e :=
        Nat.le_of_dvd hgpos hrgcd
      exact
        ⟨⟨hr0,
            hrle.trans
              ((Nat.gcd_le_left e (by omega : 0 < d)).trans hdI.2)⟩,
          hrg.1, hrg.2⟩
  rw [← Finset.sum_filter, hfilter,
    gcdCutoffMobiusCoefficient_divisor_sum hgpos]

/-- Signed square expansion attached to the gcd cutoff. -/
def gcdCutoffMobiusSquareExpansion
    (X Y : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ r ∈ modulusIndexSet X,
    gcdCutoffMobiusCoefficient Y r *
      (centeredDivisibilityTail X w r)^2

/-- Exact finite diagonalization of the complete centered low-gcd bilinear. -/
theorem centeredLowGCDBilinear_eq_gcdCutoffMobiusSquareExpansion
    (X Y : ℕ)
    (w : ℕ → ℝ) :
    centeredLowGCDBilinear X Y w =
      gcdCutoffMobiusSquareExpansion X Y w := by
  unfold centeredLowGCDBilinear
    gcdCutoffMobiusSquareExpansion
    centeredDivisibilityTail
  have hreorder :
      (∑ r ∈ modulusIndexSet X,
        ∑ d ∈ modulusIndexSet X,
          ∑ e ∈ modulusIndexSet X,
            gcdCutoffMobiusCoefficient Y r *
              ((if r ∣ d then
                  centeredModulusCoefficient X w d
                else 0) *
               (if r ∣ e then
                  centeredModulusCoefficient X w e
                else 0))) =
      ∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          ∑ r ∈ modulusIndexSet X,
            gcdCutoffMobiusCoefficient Y r *
              ((if r ∣ d then
                  centeredModulusCoefficient X w d
                else 0) *
               (if r ∣ e then
                  centeredModulusCoefficient X w e
                else 0)) := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro d hd
    rw [Finset.sum_comm]
  calc
    (∑ d ∈ modulusIndexSet X,
      ∑ e ∈ modulusIndexSet X,
        if Nat.gcd d e ≤ Y then
          centeredModulusCoefficient X w d *
            centeredModulusCoefficient X w e
        else 0) =
      ∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          ∑ r ∈ modulusIndexSet X,
            gcdCutoffMobiusCoefficient Y r *
              ((if r ∣ d then
                  centeredModulusCoefficient X w d
                else 0) *
               (if r ∣ e then
                  centeredModulusCoefficient X w e
                else 0)) := by
      apply Finset.sum_congr rfl
      intro d hd
      apply Finset.sum_congr rfl
      intro e he
      calc
        (if Nat.gcd d e ≤ Y then
            centeredModulusCoefficient X w d *
              centeredModulusCoefficient X w e
          else 0) =
          (if Nat.gcd d e ≤ Y then 1 else 0) *
            centeredModulusCoefficient X w d *
              centeredModulusCoefficient X w e := by
                by_cases hg : Nat.gcd d e ≤ Y <;>
                  simp [hg]
        _ =
          (∑ r ∈ modulusIndexSet X,
            if r ∣ d ∧ r ∣ e then
              gcdCutoffMobiusCoefficient Y r
            else 0) *
              centeredModulusCoefficient X w d *
                centeredModulusCoefficient X w e := by
                  rw [
                    sum_gcdCutoffMobiusCoefficient_common_divisors
                      hd he]
        _ =
          ∑ r ∈ modulusIndexSet X,
            gcdCutoffMobiusCoefficient Y r *
              ((if r ∣ d then
                  centeredModulusCoefficient X w d
                else 0) *
               (if r ∣ e then
                  centeredModulusCoefficient X w e
                else 0)) := by
                  simp_rw [Finset.sum_mul]
                  apply Finset.sum_congr rfl
                  intro r hr
                  by_cases hrd : r ∣ d
                  · by_cases hre : r ∣ e
                    · simp only [hrd, hre, and_self, if_true]
                      ring
                    · simp [hre]
                  · simp [hrd]
    _ =
      ∑ r ∈ modulusIndexSet X,
        ∑ d ∈ modulusIndexSet X,
          ∑ e ∈ modulusIndexSet X,
            gcdCutoffMobiusCoefficient Y r *
              ((if r ∣ d then
                  centeredModulusCoefficient X w d
                else 0) *
               (if r ∣ e then
                  centeredModulusCoefficient X w e
                else 0)) := hreorder.symm
    _ =
      ∑ r ∈ modulusIndexSet X,
        gcdCutoffMobiusCoefficient Y r *
          (∑ d ∈ modulusIndexSet X,
            if r ∣ d then
              centeredModulusCoefficient X w d
            else 0)^2 := by
              apply Finset.sum_congr rfl
              intro r hr
              rw [pow_two, Finset.sum_mul_sum,
                Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro d hd
              rw [Finset.mul_sum]

/-- Indices strictly above the gcd cutoff. -/
def highGCDCutoffIndexSet
    (X Y : ℕ) : Finset ℕ :=
  (modulusIndexSet X).filter fun r => Y < r

@[simp]
theorem mem_highGCDCutoffIndexSet_iff
    {X Y r : ℕ} :
    r ∈ highGCDCutoffIndexSet X Y ↔
      r ∈ modulusIndexSet X ∧ Y < r := by
  simp [highGCDCutoffIndexSet]

/-- High-index portion of the cutoff square expansion. -/
def highGCDCutoffMobiusSquareExpansion
    (X Y : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ r ∈ highGCDCutoffIndexSet X Y,
    gcdCutoffMobiusCoefficient Y r *
      (centeredDivisibilityTail X w r)^2

/-- Since the cutoff coefficients vanish on `1 < r <= Y`, the complete
low-gcd bilinear is the full centered mass square plus a high-index tail. -/
theorem centeredLowGCDBilinear_eq_mass_sq_add_highCutoff
    {X Y : ℕ}
    (hX : 0 < X)
    (hY : 1 ≤ Y)
    (w : ℕ → ℝ) :
    centeredLowGCDBilinear X Y w =
      (centeredCoefficientMass X w)^2 +
        highGCDCutoffMobiusSquareExpansion X Y w := by
  rw [centeredLowGCDBilinear_eq_gcdCutoffMobiusSquareExpansion]
  unfold gcdCutoffMobiusSquareExpansion
    highGCDCutoffMobiusSquareExpansion
  let low : Finset ℕ :=
    (modulusIndexSet X).filter fun r => r ≤ Y
  have hsplit :
      modulusIndexSet X =
        low ∪ highGCDCutoffIndexSet X Y := by
    ext r
    by_cases hr : r ≤ Y
    · simp [low, highGCDCutoffIndexSet, hr,
        not_lt_of_ge hr]
    · have hlt : Y < r := Nat.lt_of_not_ge hr
      simp [low, highGCDCutoffIndexSet, hr, hlt]
  have hdisj :
      Disjoint low (highGCDCutoffIndexSet X Y) := by
    rw [Finset.disjoint_left]
    intro r hrlo hrhi
    have hlo := (Finset.mem_filter.mp hrlo).2
    have hhi := (mem_highGCDCutoffIndexSet_iff.mp hrhi).2
    omega
  rw [hsplit, Finset.sum_union hdisj]
  have hlow :
      (∑ r ∈ low,
        gcdCutoffMobiusCoefficient Y r *
          (centeredDivisibilityTail X w r)^2) =
        (centeredCoefficientMass X w)^2 := by
    rw [Finset.sum_eq_single 1]
    · rw [gcdCutoffMobiusCoefficient_one hY,
        centeredDivisibilityTail_one]
      ring
    · intro r hr rne
      have hrmem := (Finset.mem_filter.mp hr).1
      have hrle := (Finset.mem_filter.mp hr).2
      have hrI := Finset.mem_Icc.mp hrmem
      have hrgt : 1 < r := by omega
      rw [gcdCutoffMobiusCoefficient_eq_zero_of_one_lt_le
        hrgt hrle, zero_mul]
    · intro hnot
      exact (hnot (Finset.mem_filter.mpr
        ⟨one_mem_modulusIndexSet hX, hY⟩)).elim
  rw [hlow]

/-- Difference between the cutoff coefficient and the ordinary Möbius
coefficient. -/
def gcdCutoffCorrectionCoefficient
    (Y r : ℕ) : ℝ :=
  gcdCutoffMobiusCoefficient Y r - mobiusReal r

/-- High-index correction between the gcd-cutoff square and the ordinary
coprime Möbius square. -/
def gcdCutoffCorrectionTail
    (X Y : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ r ∈ highGCDCutoffIndexSet X Y,
    gcdCutoffCorrectionCoefficient Y r *
      (centeredDivisibilityTail X w r)^2

/-- The high cutoff square is the ordinary high Möbius square plus the
correction tail. -/
theorem highGCDCutoffMobiusSquareExpansion_eq_highMobius_add_correction
    (X : ℕ)
    (w : ℕ → ℝ) :
    highGCDCutoffMobiusSquareExpansion X X.sqrt w =
      highCoprimeMobiusSquareExpansion X w +
        gcdCutoffCorrectionTail X X.sqrt w := by
  unfold highGCDCutoffMobiusSquareExpansion
    highCoprimeMobiusSquareExpansion
    gcdCutoffCorrectionTail
    gcdCutoffCorrectionCoefficient
    highGCDCutoffIndexSet highMobiusTailIndexSet
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro r hr
  ring

/-- Exact obstruction identity for the generic residual: it is the full
centered coefficient-mass square plus a correction supported strictly above
the square-root cutoff. -/
theorem lowCoprime_add_nonCoprime_eq_mass_sq_add_correction
    {X : ℕ}
    (hX : 1 ≤ X)
    (w : ℕ → ℝ) :
    lowCoprimeMobiusSquareExpansion X w +
        centeredNonCoprimeLowGCDBilinear X X.sqrt w =
      (centeredCoefficientMass X w)^2 +
        gcdCutoffCorrectionTail X X.sqrt w := by
  have hY : 1 ≤ X.sqrt := by
    rw [Nat.le_sqrt]
    simpa using hX
  have hcut :=
    centeredLowGCDBilinear_eq_mass_sq_add_highCutoff
      (X := X) (Y := X.sqrt) (by omega : 0 < X) hY w
  have hclass :=
    centeredLowGCDBilinear_eq_coprime_add_nonCoprime
      (X := X) (Y := X.sqrt) hY w
  have hsplit :=
    coprimeMobiusSquareExpansion_eq_low_add_high X w
  have hhigh :=
    highGCDCutoffMobiusSquareExpansion_eq_highMobius_add_correction
      X w
  rw [centeredCoprimeBilinear_eq_mobiusSquareExpansion,
    hsplit] at hclass
  rw [hclass, hhigh] at hcut
  linarith

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```
