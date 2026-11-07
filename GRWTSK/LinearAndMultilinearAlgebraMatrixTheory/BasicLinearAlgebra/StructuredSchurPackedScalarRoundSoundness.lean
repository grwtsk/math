/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurPackedScalarRound
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignBiasedLanes
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurNearestEven

/-!
# Exact scalar rounding returned from packed integer lanes

The positional expansion of a biased packet equals the signed digit sum.
One packed linear identity therefore identifies every residual when the
strict magnitude bound prevents cancellation between adjacent lanes.
The strict inequality is essential: digits `(base, -1)` can cancel.

For a positive denominator, the doubled residual bound places a quotient
within one half of the exact ratio. Two different integer quotients with
that property must be adjacent and both tied; requiring an even quotient
at a tie makes them equal. This returns the existing signed nearest-even
rule, including negative inputs and the tie convention, rather than a
new approximation to it.

A bitwise mask bounds every decoded natural lane. Centering its low-bit
range gives a signed magnitude bound. `nearestEven_mask_sound` combines
those masks, one shared packed residual identity and the exact remainder
checks to certify all scalar quotients of a fixed pivot batch.
The direct quotient computation and carry/tie hostile examples provide
finite comparisons; they share the same original arithmetic definitions.
Independent mathematical review and prior-art novelty assessment are pending.

The concrete consumer is the four generator corrections in a rank-two
rounded Schur step with common denominator `pivot.diag * columnFactor`.
The input column must still be compared with its source. Variable column
denominators, the squared diagonal correction, pivot anchors, all row
links and the paid full-tape recurrence remain separate obligations.
No high-complement bound or infinite-support theorem follows here.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurNearestEven

/-- A nearest-integer residual and even tie determine the original rounding uniquely. -/
theorem nearestEven_eq_of_spec (x d q : ℤ) (hd : 0 < d)
    (hBound : 2 * |x - d*q| ≤ d)
    (hEven : 2 * |x - d*q| = d → q % 2 = 0) :
    nearestEven x d = q := by
  let r := nearestEven x d
  have hr := nearestEven_spec x d hd
  change 2 * |x-d*r| ≤ d ∧ (2 * |x-d*r| = d → r % 2 = 0) at hr
  have hqLow : -d ≤ 2*(x-d*q) := by have := neg_le_abs (x-d*q); nlinarith
  have hqHigh : 2*(x-d*q) ≤ d := by have := le_abs_self (x-d*q); nlinarith
  have hrLow : -d ≤ 2*(x-d*r) := by have := neg_le_abs (x-d*r); nlinarith [hr.1]
  have hrHigh : 2*(x-d*r) ≤ d := by have := le_abs_self (x-d*r); nlinarith [hr.1]
  by_cases hqr : q < r
  · have hqstep : q+1 ≤ r := by omega
    have hmul := mul_le_mul_of_nonneg_left hqstep hd.le
    have hsum : 2*(x-d*q) = d := by nlinarith
    have hrSum : 2*(x-d*r) = -d := by nlinarith
    have hqAbs : 2*|x-d*q| = d := by rw [abs_of_nonneg (by nlinarith : 0 ≤ x-d*q)]; exact hsum
    have hrAbs : 2*|x-d*r| = d := by rw [abs_of_nonpos (by nlinarith : x-d*r ≤ 0)]; nlinarith
    have hqParity := hEven hqAbs
    have hrParity := hr.2 hrAbs
    have heq : r=q+1 := by nlinarith
    omega
  · by_cases hrq : r < q
    · have hrstep : r+1 ≤ q := by omega
      have hmul := mul_le_mul_of_nonneg_left hrstep hd.le
      have hsum : 2*(x-d*r) = d := by nlinarith
      have hqSum : 2*(x-d*q) = -d := by nlinarith
      have hrAbs : 2*|x-d*r| = d := by rw [abs_of_nonneg (by nlinarith : 0 ≤ x-d*r)]; exact hsum
      have hqAbs : 2*|x-d*q| = d := by rw [abs_of_nonpos (by nlinarith : x-d*q ≤ 0)]; nlinarith
      have hqParity := hEven hqAbs
      have hrParity := hr.2 hrAbs
      have heq : q=r+1 := by nlinarith
      omega
    · change r=q
      omega

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurNearestEven

namespace GRWTSK.Algebra.LinearAlgebra.PackedScalarRound

open FiniteSignDyadicLDL
open scoped BigOperators

private theorem unit_eq (base n : ℕ) :
    unit (base : ℤ) n = packDigits base (fun _ : Fin n => 1) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp only [packDigits,List.ofFn_succ,List.foldr_cons,unit,ih]

private theorem packed_eq (width raw n : ℕ) (bias : ℤ)
    (hRaw : raw < 1 <<< (width*n)) :
    packed width raw n bias = packDigits (2^width) (fun i : Fin n => digit width raw bias i.val) := by
  have hRaw' : raw < (2^width)^n := by
    simpa only [Nat.shiftLeft_eq,one_mul,← Nat.pow_mul] using hRaw
  have hDigit (i : Fin n) :
      digit width raw bias i.val = biasedLaneDigit (2^width) raw bias i.val := by
    simp only [digit,biasedLaneDigit,rawLaneDigit,Nat.shiftRight_eq_div_pow,Nat.pow_mul]
  rw [show (fun i : Fin n => digit width raw bias i.val) =
      (fun i : Fin n => biasedLaneDigit (2^width) raw bias i.val) from funext hDigit,
    pack_biasedLaneDigit,Nat.mod_eq_of_lt hRaw',packed]
  simpa only [Int.ofNat_eq_natCast] using
    congrArg (fun z : ℤ => (raw : ℤ)-bias*z) (unit_eq (2^width) n)

private theorem pack_linear {n : ℕ} (base : ℕ) (a d : ℤ) (c q : Fin n → ℤ) :
    packDigits base (fun i => a*c i-d*q i) =
      a*packDigits base c - d*packDigits base q := by
  simp only [packDigits_eq_sum,sub_mul,Finset.sum_sub_distrib,mul_assoc]
  rw [← Finset.mul_sum,← Finset.mul_sum]

/-- One packed comparison and strict digit separation recover every exact centered residual. -/
theorem residual_sound (width n rawC rawQ rawE C Q E : ℕ) (biasC biasQ biasE a d : ℤ)
    (hC : rawC < 1 <<< (width*n)) (hQ : rawQ < 1 <<< (width*n))
    (hE : rawE < 1 <<< (width*n))
    (sep : a.natAbs*C+d.natAbs*Q+E < 2^width)
    (magC : checkMagnitude width n rawC biasC C = true)
    (magQ : checkMagnitude width n rawQ biasQ Q = true)
    (magE : checkMagnitude width n rawE biasE E = true)
    (equation : checkPacked width n rawC rawQ rawE biasC biasQ biasE a d = true) :
    ∀ i : Fin n, a*digit width rawC biasC i.val - d*digit width rawQ biasQ i.val =
      digit width rawE biasE i.val := by
  let c : Fin n → ℤ := fun i => digit width rawC biasC i.val
  let q : Fin n → ℤ := fun i => digit width rawQ biasQ i.val
  let e : Fin n → ℤ := fun i => digit width rawE biasE i.val
  have hc : ∀ i, (c i).natAbs ≤ C := of_decide_eq_true magC
  have hq : ∀ i, (q i).natAbs ≤ Q := of_decide_eq_true magQ
  have he : ∀ i, (e i).natAbs ≤ E := of_decide_eq_true magE
  have hpack : packDigits (2^width) (fun i => a*c i-d*q i) = packDigits (2^width) e := by
    rw [pack_linear]
    have h := of_decide_eq_true equation
    simpa only [checkPacked,packed_eq width rawC n biasC hC,
      packed_eq width rawQ n biasQ hQ,packed_eq width rawE n biasE hE,c,q,e] using h
  have hdifference (i : Fin n) : (a*c i-d*q i-e i).natAbs < 2^width := by
    refine lt_of_le_of_lt ?_ sep
    calc
      _ ≤ (a*c i-d*q i).natAbs+(e i).natAbs := Int.natAbs_sub_le _ _
      _ ≤ (a*c i).natAbs+(d*q i).natAbs+E :=
        add_le_add (Int.natAbs_sub_le _ _) (he i)
      _ = a.natAbs*(c i).natAbs+d.natAbs*(q i).natAbs+E := by
        rw [Int.natAbs_mul,Int.natAbs_mul]
      _ ≤ a.natAbs*C+d.natAbs*Q+E :=
        Nat.add_le_add_right (add_le_add (Nat.mul_le_mul_left _ (hc i)) (Nat.mul_le_mul_left _ (hq i))) E
  have heq := eq_of_packDigits_eq (2^width) (by positivity)
    (fun i => a*c i-d*q i) e hdifference hpack
  exact fun i => congrFun heq i

/-- The packed residual identity carries the literal doubled rounding error bound. -/
theorem residual_bound (width n rawC rawQ rawE C Q E : ℕ) (biasC biasQ biasE a d : ℤ)
    (hD : 0 < d) (hC : rawC < 1 <<< (width*n)) (hQ : rawQ < 1 <<< (width*n))
    (hE : rawE < 1 <<< (width*n))
    (sep : a.natAbs*C+d.natAbs*Q+E < 2^width)
    (magC : checkMagnitude width n rawC biasC C = true)
    (magQ : checkMagnitude width n rawQ biasQ Q = true)
    (magE : checkMagnitude width n rawE biasE E = true)
    (equation : checkPacked width n rawC rawQ rawE biasC biasQ biasE a d = true)
    (remainders : checkRemainder width n rawQ rawE biasQ biasE d = true) :
    ∀ i : Fin n, 2*|a*digit width rawC biasC i.val-d*digit width rawQ biasQ i.val| ≤ d := by
  have hEq := residual_sound width n rawC rawQ rawE C Q E biasC biasQ biasE a d hC hQ hE
    sep magC magQ magE equation
  have hRem : ∀ i : Fin n,
      2*(digit width rawE biasE i.val).natAbs ≤ d.natAbs ∧
      (2*(digit width rawE biasE i.val).natAbs = d.natAbs →
        digit width rawQ biasQ i.val % 2 = 0) := of_decide_eq_true remainders
  intro i
  rw [hEq i,Int.abs_eq_natAbs]
  have h : ((2*(digit width rawE biasE i.val).natAbs : ℕ) : ℤ) ≤ (d.natAbs : ℤ) :=
    by exact_mod_cast (hRem i).1
  simpa only [Nat.cast_mul,Nat.cast_ofNat,Int.natCast_natAbs,abs_of_pos hD] using h

/-- Every decoded quotient equals the original nearest-even division. -/
theorem nearestEven_sound (width n rawC rawQ rawE C Q E : ℕ) (biasC biasQ biasE a d : ℤ)
    (hD : 0 < d) (hC : rawC < 1 <<< (width*n)) (hQ : rawQ < 1 <<< (width*n))
    (hE : rawE < 1 <<< (width*n))
    (sep : a.natAbs*C+d.natAbs*Q+E < 2^width)
    (magC : checkMagnitude width n rawC biasC C = true)
    (magQ : checkMagnitude width n rawQ biasQ Q = true)
    (magE : checkMagnitude width n rawE biasE E = true)
    (equation : checkPacked width n rawC rawQ rawE biasC biasQ biasE a d = true)
    (remainders : checkRemainder width n rawQ rawE biasQ biasE d = true) :
    ∀ i : Fin n, StructuredSchurNearestEven.nearestEven (a*digit width rawC biasC i.val) d =
      digit width rawQ biasQ i.val := by
  have hEq := residual_sound width n rawC rawQ rawE C Q E biasC biasQ biasE a d hC hQ hE
    sep magC magQ magE equation
  have hBound := residual_bound width n rawC rawQ rawE C Q E biasC biasQ biasE a d hD hC hQ hE
    sep magC magQ magE equation remainders
  have hRem : ∀ i : Fin n,
      2*(digit width rawE biasE i.val).natAbs ≤ d.natAbs ∧
      (2*(digit width rawE biasE i.val).natAbs = d.natAbs →
        digit width rawQ biasQ i.val % 2 = 0) := of_decide_eq_true remainders
  intro i
  refine StructuredSchurNearestEven.nearestEven_eq_of_spec _ _ _ hD (hBound i) ?_
  intro hTie
  apply (hRem i).2
  rw [hEq i,Int.abs_eq_natAbs] at hTie
  have hNat : ((2*(digit width rawE biasE i.val).natAbs : ℕ) : ℤ) = (d.natAbs : ℤ) := by
    rw [Nat.cast_mul,Nat.cast_ofNat,Int.natAbs_of_nonneg hD.le]
    exact hTie
  exact_mod_cast hNat


private theorem mask_lane (low width n i : ℕ) (hLow : low ≤ width) (hi : i < n) :
    (laneMask low width n >>> (width*i)) % 2^width = 2^low-1 := by
  have hlt : 2^low-1 < 2^width := by
    have h : 2^low ≤ 2^width := Nat.pow_le_pow_right (by decide) hLow
    have hpos : 0 < 2^low := by positivity
    omega
  induction n generalizing i with
  | zero => omega
  | succ n ih =>
    cases i with
    | zero => simp only [laneMask,Nat.mul_zero,Nat.shiftRight_zero,Nat.add_mul_mod_self_left,
        Nat.mod_eq_of_lt hlt]
    | succ i =>
      have hs : width*(i+1) = width + width*i := by ring
      rw [hs, Nat.shiftRight_add, laneMask]
      simp only [Nat.shiftRight_eq_div_pow]
      rw [Nat.add_mul_div_left _ _ (by positivity),Nat.div_eq_of_lt hlt,zero_add]
      simpa only [Nat.shiftRight_eq_div_pow] using ih i (by omega)

theorem mask_bound (low width n raw : ℕ) (hLow : low ≤ width)
    (hMask : checkMask low width n raw = true) (i : Fin n) :
    (raw >>> (width*i.val)) % 2^width < 2^low := by
  have heq : raw &&& laneMask low width n = raw := of_decide_eq_true hMask
  have hle : (raw >>> (width*i.val)) % 2^width ≤
      (laneMask low width n >>> (width*i.val)) % 2^width := by
    conv_lhs => rw [←heq,Nat.shiftRight_and_distrib,Nat.and_mod_two_pow]
    exact Nat.and_le_right
  rw [mask_lane low width n i.val hLow i.isLt] at hle
  have hpos : 0 < 2^low := by positivity
  omega

theorem mask_magnitude (low width n raw : ℕ) (hLow : low ≤ width) (hPos : 0 < low)
    (hMask : checkMask low width n raw = true) :
    checkMagnitude width n raw (2^(low-1) : ℕ) (2^(low-1)) = true := by
  simp only [checkMagnitude,decide_eq_true_eq]
  intro i
  have h := mask_bound low width n raw hLow hMask i
  have hp : 2^low = 2*(2^(low-1)) := by
    conv_lhs => rw [← Nat.sub_add_cancel (show 1 ≤ low by omega)]
    rw [pow_succ]
    omega
  have hi : (((raw >>> (width*i.val)) % 2^width : ℕ) : ℤ) < ((2^low : ℕ) : ℤ) := by exact_mod_cast h
  have hi0 : (0:ℤ) ≤ ((raw >>> (width*i.val)) % 2^width : ℕ) := by positivity
  have hp' : ((2^low : ℕ) : ℤ) = 2*((2^(low-1) : ℕ) : ℤ) := by exact_mod_cast hp
  have ha : |digit width raw (2^(low-1) : ℕ) i.val| ≤ ((2^(low-1) : ℕ) : ℤ) := by
    rw [abs_le]
    unfold digit
    simp only [Int.ofNat_eq_natCast]
    constructor <;> omega
  rw [Int.abs_eq_natAbs] at ha
  exact_mod_cast ha

theorem nearestEven_mask_sound (width n cLow qLow rawC rawQ rawE : ℕ) (biasE a d : ℤ)
    (hD : 0 < d) (hCLow : cLow ≤ width) (hQLow : qLow ≤ width)
    (hCPos : 0 < cLow) (hQPos : 0 < qLow)
    (hC : rawC < 1 <<< (width*n)) (hQ : rawQ < 1 <<< (width*n))
    (hE : rawE < 1 <<< (width*n))
    (sep : a.natAbs*2^(cLow-1)+d.natAbs*2^(qLow-1)+d.natAbs < 2^width)
    (maskC : checkMask cLow width n rawC = true)
    (maskQ : checkMask qLow width n rawQ = true)
    (equation : checkPacked width n rawC rawQ rawE (2^(cLow-1) : ℕ) (2^(qLow-1) : ℕ) biasE a d = true)
    (remainders : checkRemainder width n rawQ rawE (2^(qLow-1) : ℕ) biasE d = true) :
    ∀ i : Fin n, StructuredSchurNearestEven.nearestEven
      (a*digit width rawC (2^(cLow-1) : ℕ) i.val) d =
      digit width rawQ (2^(qLow-1) : ℕ) i.val := by
  have magC := mask_magnitude cLow width n rawC hCLow hCPos maskC
  have magQ := mask_magnitude qLow width n rawQ hQLow hQPos maskQ
  have magE : checkMagnitude width n rawE biasE d.natAbs = true := by
    simp only [checkMagnitude,decide_eq_true_eq]
    have h : ∀ i : Fin n, 2*(digit width rawE biasE i.val).natAbs ≤ d.natAbs ∧
        (2*(digit width rawE biasE i.val).natAbs = d.natAbs →
          digit width rawQ (2^(qLow-1) : ℕ) i.val % 2 = 0) := of_decide_eq_true remainders
    intro i
    have hi := (h i).1
    omega
  exact nearestEven_sound width n rawC rawQ rawE (2^(cLow-1)) (2^(qLow-1)) d.natAbs
    (2^(cLow-1) : ℕ) (2^(qLow-1) : ℕ) biasE a d hD hC hQ hE sep magC magQ magE equation remainders


end GRWTSK.Algebra.LinearAlgebra.PackedScalarRound
