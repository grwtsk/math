/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic

/-!
# Centered low-common-gcd Möbius-log coefficients

Exact finite coefficient identities and the four centered channels.
No analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction

/-- Arithmetic octave `(2X,4X]`. -/
def octaveIndexSet (X : ℕ) : Finset ℕ :=
  Finset.Ioc (2 * X) (4 * X)

/-- All positive divisor moduli which can occur on the octave.  Nonsquarefree
moduli are retained; their Möbius coefficient vanishes exactly. -/
def modulusIndexSet (X : ℕ) : Finset ℕ :=
  Finset.Icc 1 (4 * X)

/-- Real-valued Möbius coefficient. -/
def mobiusReal (d : ℕ) : ℝ :=
  ((ArithmeticFunction.moebius d : ℤ) : ℝ)

/-- One genuine divisor-indexed Möbius-log coefficient at `n`. -/
def mobiusLogTerm (n d : ℕ) : ℝ :=
  mobiusReal d * Real.log (n / d : ℕ)

/-- The genuine modulus coefficient on one weighted octave. -/
def genuineModulusCoefficient
    (X : ℕ) (w : ℕ → ℝ) (d : ℕ) : ℝ :=
  ∑ n ∈ octaveIndexSet X,
    if d ∣ n then w n * mobiusLogTerm n d else 0

/-- The total weight of the centering anchor. -/
def anchorMass (X : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ n ∈ octaveIndexSet X, w n

/-- The centered modulus coefficient.  The anchor is merged only with the
modulus-one genuine term, because both have attached modulus one. -/
def centeredModulusCoefficient
    (X : ℕ) (w : ℕ → ℝ) (d : ℕ) : ℝ :=
  genuineModulusCoefficient X w d -
    if d = 1 then anchorMass X w else 0

/-- Total genuine coefficient mass. -/
def genuineCoefficientMass
    (X : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ d ∈ modulusIndexSet X,
    genuineModulusCoefficient X w d

/-- Total centered coefficient mass. -/
def centeredCoefficientMass
    (X : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ d ∈ modulusIndexSet X,
    centeredModulusCoefficient X w d

/-- Pointwise genuine Möbius-log atom using the global modulus set. -/
def genuineMobiusLogAtom
    (X n : ℕ) : ℝ :=
  ∑ d ∈ modulusIndexSet X,
    if d ∣ n then mobiusLogTerm n d else 0

/-- Pointwise centered Möbius-log atom. -/
def centeredMobiusLogAtom
    (X n : ℕ) : ℝ :=
  genuineMobiusLogAtom X n - 1

/-- Genuine pointwise low-gcd pair kernel. -/
def genuineLowGCDPairKernel
    (X Y n q : ℕ) : ℝ :=
  ∑ d ∈ modulusIndexSet X,
    ∑ e ∈ modulusIndexSet X,
      if d ∣ n ∧ e ∣ q ∧ Nat.gcd d e ≤ Y then
        mobiusLogTerm n d * mobiusLogTerm q e
      else 0

/-- Complete centered four-channel low-gcd pair kernel.  The last three terms
are, in order, left-anchor/right-genuine, left-genuine/right-anchor, and
anchor/anchor. -/
def centeredLowGCDPairKernel
    (X Y n q : ℕ) : ℝ :=
  genuineLowGCDPairKernel X Y n q -
    genuineMobiusLogAtom X q -
    genuineMobiusLogAtom X n + 1

/-- The complete pointwise four-channel identity. -/
theorem centeredLowGCDPairKernel_eq_four_channel
    (X Y n q : ℕ) :
    centeredLowGCDPairKernel X Y n q =
      genuineLowGCDPairKernel X Y n q -
        genuineMobiusLogAtom X q -
        genuineMobiusLogAtom X n + 1 := by
  rfl

/-- Genuine/genuine low-gcd bilinear form. -/
def genuineLowGCDBilinear
    (X Y : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ d ∈ modulusIndexSet X,
    ∑ e ∈ modulusIndexSet X,
      if Nat.gcd d e ≤ Y then
        genuineModulusCoefficient X w d *
          genuineModulusCoefficient X w e
      else 0

/-- Complete centered low-gcd bilinear form.  The anchor correction is
merged into the modulus-one coefficient before the gcd cutoff is applied. -/
def centeredLowGCDBilinear
    (X Y : ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ d ∈ modulusIndexSet X,
    ∑ e ∈ modulusIndexSet X,
      if Nat.gcd d e ≤ Y then
        centeredModulusCoefficient X w d *
          centeredModulusCoefficient X w e
      else 0

/-- The same low-gcd bilinear form with the four centered channels displayed
explicitly. -/
def centeredLowGCDChannelBilinear
    (X Y : ℕ) (w : ℕ → ℝ) : ℝ :=
  genuineLowGCDBilinear X Y w -
    anchorMass X w * genuineCoefficientMass X w -
    genuineCoefficientMass X w * anchorMass X w +
    anchorMass X w ^ 2


@[simp]
theorem one_mem_modulusIndexSet
    {X : ℕ} (hX : 0 < X) :
    1 ∈ modulusIndexSet X := by
  simp [modulusIndexSet]
  omega

/-- Every octave point is positive and bounded by the global modulus cutoff. -/
theorem octave_mem_bounds
    {X n : ℕ}
    (hn : n ∈ octaveIndexSet X) :
    0 < n ∧ n ≤ 4 * X := by
  have hnI := Finset.mem_Ioc.mp hn
  omega

/-- A non-squarefree modulus has zero genuine coefficient. -/
theorem genuineModulusCoefficient_eq_zero_of_not_squarefree
    {X d : ℕ} {w : ℕ → ℝ}
    (hd : ¬Squarefree d) :
    genuineModulusCoefficient X w d = 0 := by
  unfold genuineModulusCoefficient mobiusLogTerm mobiusReal
  rw [ArithmeticFunction.moebius_eq_zero_of_not_squarefree hd]
  simp

/-- Exact divisor-indexed form of Mathlib's identity `mu * log = Lambda`. -/
theorem mobiusLogDivisorSum_eq_vonMangoldt
    (n : ℕ) :
    (∑ d ∈ n.divisors,
      mobiusLogTerm n d) =
      ArithmeticFunction.vonMangoldt n := by
  have h :=
    congrArg
      (fun f : ArithmeticFunction ℝ => f n)
      ArithmeticFunction.moebius_mul_log_eq_vonMangoldt
  have hantidiagonal :
      (∑ p ∈ n.divisorsAntidiagonal,
        mobiusReal p.1 * Real.log p.2) =
      ∑ d ∈ n.divisors,
        mobiusReal d * Real.log (n / d : ℕ) := by
    simpa using
      (Nat.sum_divisorsAntidiagonal
        (n := n)
        (fun d a => mobiusReal d * Real.log a))
  rw [← hantidiagonal]
  simpa [ArithmeticFunction.mul_apply,
    ArithmeticFunction.log_apply,
    ArithmeticFunction.intCoe_apply,
    mobiusLogTerm, mobiusReal] using h

/-- The global pointwise atom agrees with the divisor sum on the octave. -/
theorem genuineMobiusLogAtom_eq_divisorSum
    {X n : ℕ}
    (hn : n ∈ octaveIndexSet X) :
    genuineMobiusLogAtom X n =
      ∑ d ∈ n.divisors, mobiusLogTerm n d := by
  unfold genuineMobiusLogAtom
  have hnpos := (octave_mem_bounds hn).1
  have hnB := (octave_mem_bounds hn).2
  have hfilter :
      (modulusIndexSet X).filter (fun d => d ∣ n) =
        n.divisors := by
    ext d
    simp only [Finset.mem_filter, Finset.mem_Icc,
      Nat.mem_divisors]
    constructor
    · rintro ⟨⟨hd0, hdB⟩, hdn⟩
      exact ⟨hdn, Nat.ne_of_gt hnpos⟩
    · rintro ⟨hdn, hn0⟩
      have hd0 : 0 < d := Nat.pos_of_dvd_of_pos hdn hnpos
      have hdle : d ≤ n := Nat.le_of_dvd hnpos hdn
      exact ⟨⟨hd0, hdle.trans hnB⟩, hdn⟩
  rw [← Finset.sum_filter, hfilter]

/-- Pointwise identification with von Mangoldt on the exact octave. -/
theorem genuineMobiusLogAtom_eq_vonMangoldt
    {X n : ℕ}
    (hn : n ∈ octaveIndexSet X) :
    genuineMobiusLogAtom X n =
      ArithmeticFunction.vonMangoldt n := by
  rw [genuineMobiusLogAtom_eq_divisorSum hn,
    mobiusLogDivisorSum_eq_vonMangoldt]

/-- The centered pointwise atom is exactly `Lambda(n)-1`. -/
theorem centeredMobiusLogAtom_eq_vonMangoldt_sub_one
    {X n : ℕ}
    (hn : n ∈ octaveIndexSet X) :
    centeredMobiusLogAtom X n =
      ArithmeticFunction.vonMangoldt n - 1 := by
  rw [centeredMobiusLogAtom,
    genuineMobiusLogAtom_eq_vonMangoldt hn]

/-- The modulus-one coefficient contains exactly the anchor correction. -/
theorem centeredModulusCoefficient_one
    (X : ℕ) (w : ℕ → ℝ) :
    centeredModulusCoefficient X w 1 =
      ∑ n ∈ octaveIndexSet X,
        w n * (Real.log (n : ℝ) - 1) := by
  unfold centeredModulusCoefficient genuineModulusCoefficient
    anchorMass mobiusLogTerm mobiusReal
  simp only [ArithmeticFunction.moebius_apply_one, Int.cast_one,
    one_dvd, if_true, Nat.div_one]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  ring

/-- Interchanging the finite divisor and octave sums identifies the genuine
coefficient mass with the weighted pointwise genuine atom. -/
theorem genuineCoefficientMass_eq_weighted_atom
    (X : ℕ) (w : ℕ → ℝ) :
    genuineCoefficientMass X w =
      ∑ n ∈ octaveIndexSet X,
        w n * genuineMobiusLogAtom X n := by
  unfold genuineCoefficientMass genuineModulusCoefficient
    genuineMobiusLogAtom
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n hn
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d hd
  by_cases hdn : d ∣ n
  · simp [hdn]
  · simp [hdn]

/-- The centered coefficient mass is genuine mass minus the anchor mass. -/
theorem centeredCoefficientMass_eq_genuine_sub_anchor
    {X : ℕ} (hX : 0 < X) (w : ℕ → ℝ) :
    centeredCoefficientMass X w =
      genuineCoefficientMass X w - anchorMass X w := by
  unfold centeredCoefficientMass centeredModulusCoefficient
  rw [Finset.sum_sub_distrib]
  have hsingle :
      (∑ d ∈ modulusIndexSet X,
        if d = 1 then anchorMass X w else 0) =
      anchorMass X w := by
    rw [Finset.sum_eq_single 1]
    · simp
    · intro b hb hb1
      simp [hb1]
    · intro hnot
      exact (hnot (one_mem_modulusIndexSet hX)).elim
  rw [hsingle]

/-- Exact full centered weighted von Mangoldt mass. -/
theorem centeredCoefficientMass_eq_weighted_vonMangoldt_sub_one
    {X : ℕ} (hX : 0 < X) (w : ℕ → ℝ) :
    centeredCoefficientMass X w =
      ∑ n ∈ octaveIndexSet X,
        w n * (ArithmeticFunction.vonMangoldt n - 1) := by
  rw [centeredCoefficientMass_eq_genuine_sub_anchor hX,
    genuineCoefficientMass_eq_weighted_atom]
  unfold anchorMass
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rw [genuineMobiusLogAtom_eq_vonMangoldt hn]
  ring

/-- Exact four-channel anchor correction at every cutoff `Y >= 1`. -/
theorem centeredLowGCDBilinear_eq_four_channel
    {X Y : ℕ}
    (hX : 0 < X)
    (hY : 1 ≤ Y)
    (w : ℕ → ℝ) :
    centeredLowGCDBilinear X Y w =
      centeredLowGCDChannelBilinear X Y w := by
  have hexpand :
      centeredLowGCDBilinear X Y w =
        genuineLowGCDBilinear X Y w -
          (∑ d ∈ modulusIndexSet X,
            ∑ e ∈ modulusIndexSet X,
              if Nat.gcd d e ≤ Y then
                genuineModulusCoefficient X w d *
                  (if e = 1 then anchorMass X w else 0)
              else 0) -
          (∑ d ∈ modulusIndexSet X,
            ∑ e ∈ modulusIndexSet X,
              if Nat.gcd d e ≤ Y then
                (if d = 1 then anchorMass X w else 0) *
                  genuineModulusCoefficient X w e
              else 0) +
          (∑ d ∈ modulusIndexSet X,
            ∑ e ∈ modulusIndexSet X,
              if Nat.gcd d e ≤ Y then
                (if d = 1 then anchorMass X w else 0) *
                  (if e = 1 then anchorMass X w else 0)
              else 0) := by
    unfold centeredLowGCDBilinear genuineLowGCDBilinear
      centeredModulusCoefficient
    calc
      (∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          if Nat.gcd d e ≤ Y then
            (genuineModulusCoefficient X w d -
                if d = 1 then anchorMass X w else 0) *
              (genuineModulusCoefficient X w e -
                if e = 1 then anchorMass X w else 0)
          else 0) =
        ∑ d ∈ modulusIndexSet X,
          ∑ e ∈ modulusIndexSet X,
            ((if Nat.gcd d e ≤ Y then
                genuineModulusCoefficient X w d *
                  genuineModulusCoefficient X w e
              else 0) -
             (if Nat.gcd d e ≤ Y then
                genuineModulusCoefficient X w d *
                  (if e = 1 then anchorMass X w else 0)
              else 0) -
             (if Nat.gcd d e ≤ Y then
                (if d = 1 then anchorMass X w else 0) *
                  genuineModulusCoefficient X w e
              else 0) +
             (if Nat.gcd d e ≤ Y then
                (if d = 1 then anchorMass X w else 0) *
                  (if e = 1 then anchorMass X w else 0)
              else 0)) := by
          apply Finset.sum_congr rfl
          intro d hd
          apply Finset.sum_congr rfl
          intro e he
          by_cases hg : Nat.gcd d e ≤ Y
          · simp [hg]
            ring
          · simp [hg]
      _ = _ := by
        simp_rw [Finset.sum_sub_distrib,
          Finset.sum_add_distrib]
  have hAI :
      (∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          if Nat.gcd d e ≤ Y then
            genuineModulusCoefficient X w d *
              (if e = 1 then anchorMass X w else 0)
          else 0) =
      genuineCoefficientMass X w * anchorMass X w := by
    unfold genuineCoefficientMass
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro d hd
    rw [Finset.sum_eq_single 1]
    · have hg : Nat.gcd d 1 ≤ Y := by simp [hY]
      simp [hg]
    · intro e he he1
      simp [he1]
    · intro hnot
      exact (hnot (one_mem_modulusIndexSet hX)).elim
  have hIA :
      (∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          if Nat.gcd d e ≤ Y then
            (if d = 1 then anchorMass X w else 0) *
              genuineModulusCoefficient X w e
          else 0) =
      anchorMass X w * genuineCoefficientMass X w := by
    rw [Finset.sum_eq_single 1]
    · unfold genuineCoefficientMass
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro e he
      have hg : Nat.gcd 1 e ≤ Y := by simp [hY]
      simp [hg]
    · intro d hd hd1
      simp [hd1]
    · intro hnot
      exact (hnot (one_mem_modulusIndexSet hX)).elim
  have hII :
      (∑ d ∈ modulusIndexSet X,
        ∑ e ∈ modulusIndexSet X,
          if Nat.gcd d e ≤ Y then
            (if d = 1 then anchorMass X w else 0) *
              (if e = 1 then anchorMass X w else 0)
          else 0) =
      anchorMass X w ^ 2 := by
    rw [Finset.sum_eq_single 1]
    · rw [Finset.sum_eq_single 1]
      · simp [hY, pow_two]
      · intro e he he1
        simp [he1]
      · intro hnot
        exact (hnot (one_mem_modulusIndexSet hX)).elim
    · intro d hd hd1
      simp [hd1]
    · intro hnot
      exact (hnot (one_mem_modulusIndexSet hX)).elim
  rw [hexpand, hAI, hIA, hII]
  unfold centeredLowGCDChannelBilinear
  ring


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
