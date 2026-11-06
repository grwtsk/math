/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalRealBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowRationalSignals
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRemoteAllowanceMatrix
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowEntryBounds

/-!
# Rational entry bounds for the complete unit-window remote matrix

The two signed traces are observed in the literal inclusion coordinates.
Their three scalar Gram coefficients sum every row from 513 to 2048.
The mixed coefficient uses the signed derivative weights before the
products and sums are enclosed. The rest of the matrix uses the two
infinite trace allowances and the complete cubic remainder in the
existing remote bound. The pole coordinate is included in the first
trace and the remainder.

The endpoint arithmetic uses the actual unit-window boundary series
and outward rational observations of the prime signal. The resulting
entry comparisons can be consumed by the first-stage inclusion theorem.
Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowRemoteBounds

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open OddRemoteAllowanceMatrix OddResidualRows OddResidualMajorant
open OddBoundarySignalBounds UnitWindowRationalSignals
open LowSchur UnitWindowPrimeData OddResidualSourceComparison

private abbrev Head := Fin 256 ⊕ Unit
private def traceRange : Finset ℕ := Finset.range (2048 - 512)
private def traceMode (k : ℕ) : ℕ := 512 + 1 + k
private def rate (k : ℕ) : ℚ := ((traceMode k : ℕ) : ℚ)⁻¹

private def piBounds : Bounds := (3.14159265358979323846, 3.14159265358979323847)
private def piInv : Bounds := inv piBounds

private theorem piInv_sound : Encloses piInv Real.pi⁻¹ := by
  apply inv_sound
  · exact ⟨by exact_mod_cast Real.pi_gt_d20.le, by exact_mod_cast Real.pi_lt_d20.le⟩
  · norm_num [piBounds]

private def massBounds : Bounds := (5.852464, 5.852474)
private theorem massBounds_sound : Encloses massBounds (primeMass 1) := by
  simpa only [Encloses, massBounds, Rat.cast_ofScientific] using primeMass_one_bounds

private def boundaryRaw (n : ℕ) : Bounds :=
  (boundaryLower 48 n 8192, boundaryUpper 48 n 8192)

private def boundaryTable : Vector Bounds 257 :=
  Vector.ofFn (fun i => boundaryRaw i.val)

private def boundary (n : ℕ) : Bounds :=
  if h : n < 257 then boundaryTable[n] else boundaryRaw n

private theorem boundary_sound (n : ℕ) : Encloses (boundary n) (boundarySignal 1 n) := by
  have h : boundary n = boundaryRaw n := by
    by_cases hn : n < 257 <;> simp [boundary, boundaryTable, hn]
  rw [h]
  exact boundary_bounds 48 n (by decide)

private def poleNodeBounds : Bounds := scale (1/4) (mul piInv piInv)

private theorem poleNodeBounds_sound : Encloses poleNodeBounds (poleNode 1) := by
  unfold poleNodeBounds
  convert scale_sound (1/4) (mul_sound piInv_sound piInv_sound) using 1
  simp [poleNode, div_eq_mul_inv, pow_two, mul_assoc]
  ring

private def poleScaleBounds : Bounds :=
  mul (poleMagnitudeLower 1, poleMagnitudeUpper 1) (add (point 1) poleNodeBounds)

private theorem poleScaleBounds_sound : Encloses poleScaleBounds (poleScale 1) := by
  have hm : Encloses (poleMagnitudeLower 1, poleMagnitudeUpper 1) (literalPoleEntry 1 1) := by
    simpa only [Encloses, Nat.reduceAdd, neg_one_sq, one_mul] using
      poleMagnitude_bounds (n := 1) (by decide)
  have h := mul_sound hm (add_sound (point_sound 1) poleNodeBounds_sound)
  have hne : (1 : ℝ) + poleNode 1 ≠ 0 := by unfold poleNode; positivity
  rw [literalPoleEntry_eq 1 (by norm_num) (m := 1) (by decide),
    sinePoleCoefficient_eq 1 (by norm_num)] at h
  unfold poleScaleBounds
  convert h using 1
  push_cast
  norm_num
  field_simp [hne]

private def decayBounds : Bounds := (0.36787944116, 0.3678794412)

private theorem decayBounds_sound : Encloses decayBounds (Real.exp (-1)) :=
  ⟨by exact_mod_cast Real.exp_neg_one_gt_d9.le, by exact_mod_cast Real.exp_neg_one_lt_d9.le⟩

private def decaySq : Bounds := mul decayBounds decayBounds
private def decayDen : Bounds := sub (point 1) (mul decaySq decaySq)
private def boundaryErrorBounds : Bounds :=
  mul (add (point 1) (mul decayBounds (inv decayDen))) (mul piInv piInv)

private theorem boundaryErrorBounds_sound :
    Encloses boundaryErrorBounds (boundaryErrorScale 1) := by
  have hd := mul_sound decayBounds_sound decayBounds_sound
  have hden : Encloses decayDen (1 - Real.exp (-4)) := by
    have h := sub_sound (point_sound 1) (mul_sound hd hd)
    change Encloses decayDen _ at h
    convert h using 1
    have he : Real.exp (-4) = Real.exp (-1) ^ 4 := by
      rw [← Real.exp_nat_mul]
      congr 1
      norm_num
    rw [he]
    push_cast
    ring
  have hpos : 0 < (decayDen.1 : ℝ) := by
    norm_num [decayDen, decaySq, decayBounds, sub, neg, add, point, mul, min_def, max_def]
  have h := mul_sound (add_sound (point_sound 1)
    (mul_sound decayBounds_sound (inv_sound hden hpos))) (mul_sound piInv_sound piInv_sound)
  unfold boundaryErrorBounds
  convert h using 1
  simp [boundaryErrorScale, div_eq_mul_inv, pow_two]

section PrimeInput

variable (prime : ℕ → Bounds)

private def derivative (m : ℕ) : Bounds :=
  add (point (1/2)) (mul (scale 2 piInv) (prime m))

private theorem derivative_sound (m : ℕ)
    (hp : Encloses (prime m) (primeSignal 1 m)) :
    Encloses (derivative prime m) (derivativeWeight 1 m) := by
  have h := add_sound (point_sound (1/2)) (mul_sound (scale_sound 2 piInv_sound) hp)
  simpa [derivative, derivativeWeight, div_eq_mul_inv] using h

private def secondRate (k : ℕ) : Bounds :=
  scale (rate k ^ 2) (derivative prime (traceMode k))

private theorem secondRate_sound (k : ℕ)
    (hp : Encloses (prime (traceMode k)) (primeSignal 1 (traceMode k))) :
    Encloses (secondRate prime k)
      (derivativeWeight 1 (traceMode k) / ((traceMode k : ℕ) : ℝ) ^ 2) := by
  have h := scale_sound (rate k ^ 2) (derivative_sound prime _ hp)
  unfold secondRate
  convert h using 1
  push_cast [rate]
  simp [div_eq_mul_inv, inv_pow, mul_comm]

private def gram11 : Bounds :=
  sum traceRange (fun k => round 48 (point (rate k ^ 2)))

private def gram12 : Bounds :=
  sum traceRange (fun k => round 48 (scale (rate k) (secondRate prime k)))

private def gram22 : Bounds :=
  sum traceRange (fun k => round 48 (mul (secondRate prime k) (secondRate prime k)))

private theorem gram11_sound : Encloses gram11
    (∑ k ∈ traceRange, (((traceMode k : ℕ) : ℝ)⁻¹) ^ 2) := by
  apply sum_sound
  intro k _
  apply round_sound
  have h := point_sound (rate k ^ 2)
  rw [show ((rate k ^ 2 : ℚ) : ℝ) = (((traceMode k : ℕ) : ℝ)⁻¹) ^ 2 by
    push_cast [rate]
    rfl] at h
  exact h

private theorem gram12_sound (hp : ∀ m ≤ 2048, Encloses (prime m) (primeSignal 1 m)) :
    Encloses (gram12 prime)
      (∑ k ∈ traceRange, ((traceMode k : ℕ) : ℝ)⁻¹ *
        (derivativeWeight 1 (traceMode k) / ((traceMode k : ℕ) : ℝ) ^ 2)) := by
  apply sum_sound
  intro k hk
  have hm : traceMode k ≤ 2048 := by
    have h := Finset.mem_range.mp hk
    unfold traceMode
    omega
  have h' := scale_sound (rate k) (secondRate_sound prime k (hp _ hm))
  exact round_sound 48 (by simpa only [rate, Rat.cast_inv, Rat.cast_natCast] using h')

private theorem gram22_sound (hp : ∀ m ≤ 2048, Encloses (prime m) (primeSignal 1 m)) :
    Encloses (gram22 prime)
      (∑ k ∈ traceRange, (derivativeWeight 1 (traceMode k) / ((traceMode k : ℕ) : ℝ) ^ 2) ^ 2) := by
  apply sum_sound
  intro k hk
  have hm : traceMode k ≤ 2048 := by
    have h := Finset.mem_range.mp hk
    unfold traceMode
    omega
  have h := secondRate_sound prime k (hp _ hm)
  exact round_sound 48 (by simpa only [pow_two] using mul_sound h h)

private def first (i : Head) : Bounds :=
  match i with
  | .inl i =>
    let n := i.val + 1
    scale ((-1 : ℚ)^n) (sub (scale (-2 * (n : ℚ)) (boundary n))
      (mul (scale 2 piInv) (prime n)))
  | .inr _ => neg poleScaleBounds

private theorem first_sound (hp : ∀ m ≤ 2048, Encloses (prime m) (primeSignal 1 m)) (i : Head) :
    Encloses (first prime i) (firstTraceRow 256 1 i) := by
  cases i with
  | inr u => exact neg_sound poleScaleBounds_sound
  | inl i =>
    have hi : i.val + 1 ≤ 2048 := by have := i.isLt; omega
    have h := scale_sound ((-1 : ℚ) ^ (i.val+1))
      (sub_sound (scale_sound (-2 * ((i.val+1 : ℕ) : ℚ)) (boundary_sound (i.val+1)))
        (mul_sound (scale_sound 2 piInv_sound) (hp _ hi)))
    simpa only [first, firstTraceRow, Sum.elim_inl, firstTraceEntry, Rat.cast_pow, Rat.cast_neg,
      Rat.cast_mul, Rat.cast_natCast, Rat.cast_ofNat, Rat.cast_one, div_eq_mul_inv,
      inv_one, mul_one, mul_assoc] using h

private def deriv (i : Head) : Bounds :=
  point (Sum.elim (fun i : Fin 256 => (-1 : ℚ) ^ (i.val+1) * ((i.val+1 : ℕ) : ℚ)) (fun _ => 0) i)

private theorem deriv_sound (i : Head) : Encloses (deriv i) (derivativeTraceRow 256 i) := by
  cases i <;> simp [deriv, derivativeTraceRow, Encloses, point]

private def pole (i : Head) : Bounds :=
  point (Sum.elim (fun _ : Fin 256 => 0) (fun _ => 1) i)

private theorem pole_sound (i : Head) : Encloses (pole i) (poleCoordinate 256 i) := by
  cases i <;> simp [pole, poleCoordinate, Encloses, point]

private structure HeadTable where
  physical : Vector Bounds 256
  scalar : Bounds

private def tabulateHead (f : Head → Bounds) : HeadTable :=
  ⟨Vector.ofFn (fun i => f (.inl i)), f (.inr ())⟩

private def HeadTable.get (table : HeadTable) : Head → Bounds :=
  Sum.elim (fun i => table.physical[i.val]) (fun _ => table.scalar)

private theorem tabulateHead_get (f : Head → Bounds) (i : Head) :
    (tabulateHead f).get i = f i := by
  cases i with
  | inl i => simp [HeadTable.get, tabulateHead]
  | inr i => cases i; rfl

private structure LeadingTable where
  firstColumn : HeadTable
  c11 : Bounds
  c12 : Bounds
  c22 : Bounds

private def prepareLeading : LeadingTable :=
  ⟨tabulateHead (first prime), gram11, gram12 prime, gram22 prime⟩

private def leading (table : LeadingTable) (i j : Head) : Bounds :=
  let f := table.firstColumn.get
  let cross := add (mul (f i) (deriv j)) (mul (deriv i) (f j))
  add (add (mul table.c11 (mul (f i) (f j))) (mul table.c12 cross))
    (mul table.c22 (mul (deriv i) (deriv j)))

private theorem leading_sound (hp : ∀ m ≤ 2048, Encloses (prime m) (primeSignal 1 m))
    (i j : Head) : Encloses (leading (prepareLeading prime) i j) (leadingGram 256 512 2048 1 i j) := by
  rw [leadingGram_eq_signedTraceGram]
  simp only [leading, prepareLeading, tabulateHead_get, signedTraceGram, Matrix.add_apply, Matrix.smul_apply,
    Matrix.vecMulVec_apply, smul_eq_mul]
  exact add_sound (add_sound (mul_sound gram11_sound (mul_sound (first_sound prime hp i)
      (first_sound prime hp j))) (mul_sound (gram12_sound prime hp)
      (add_sound (mul_sound (first_sound prime hp i) (deriv_sound j))
        (mul_sound (deriv_sound i) (first_sound prime hp j)))))
    (mul_sound (gram22_sound prime hp) (mul_sound (deriv_sound i) (deriv_sound j)))

private def leadingTail : Bounds :=
  let kap := add (point (1/2)) (mul massBounds piInv)
  scale (2 / (3 * (2048 : ℚ)^3)) (mul kap kap)

private theorem leadingTail_sound : Encloses leadingTail
    (2 * (1/2 + primeMass 1 / Real.pi)^2 / (3 * (2048 : ℝ)^3)) := by
  have hKap := add_sound (point_sound (1/2)) (mul_sound massBounds_sound piInv_sound)
  unfold leadingTail
  convert scale_sound (2 / (3 * (2048 : ℚ)^3)) (mul_sound hKap hKap) using 1
  push_cast
  ring

private def remWeight (n : ℕ) : Bounds :=
  let θ : ℚ := 1 - 256 / 513
  let θ₂ : ℚ := 1 - (256 / 513)^2
  add (scale (2 * (n : ℚ)^3 / θ₂) (boundary n))
    (scale ((n : ℚ)^2 / θ) (mul massBounds piInv))

private theorem remWeight_sound (n : ℕ) :
    Encloses (remWeight n) (remainderWeight 256 512 1 n) := by
  unfold remWeight
  have h1 := scale_sound (2 * (n : ℚ)^3 / (1 - (256 / 513)^2)) (boundary_sound n)
  have h2 := scale_sound ((n : ℚ)^2 / (1 - 256 / 513)) (mul_sound massBounds_sound piInv_sound)
  convert add_sound h1 h2 using 1
  push_cast
  simp only [remainderWeight, residualBuffer, squaredResidualBuffer, div_one, Nat.cast_ofNat]
  norm_num [div_eq_mul_inv]
  ring

private def remTotal : Bounds :=
  sum (Finset.Icc 1 256) (fun n => round 48 (remWeight n))

private theorem remTotal_sound :
    Encloses remTotal (∑ n ∈ Finset.Icc 1 256, remainderWeight 256 512 1 n) :=
  sum_sound _ (fun n _ => round_sound 48 (remWeight_sound n))

private def remDiagTable : HeadTable :=
  tabulateHead (Sum.elim (fun i => remWeight (i.val+1)) (fun _ => point 0))

private def remDiag (i : Head) : Bounds := remDiagTable.get i

private theorem remDiag_sound (i j : Head) :
    Encloses (if i = j then remDiag i else point 0) (remainderDiagonal 256 512 1 i j) := by
  by_cases hij : i = j
  · subst j
    rw [ite_eq_left rfl]
    simp only [remDiag, remDiagTable, tabulateHead_get, remainderDiagonal, Matrix.diagonal_apply_eq]
    cases i
    · exact remWeight_sound _
    · simpa only [Sum.elim_inr, Rat.cast_zero] using point_sound 0
  · rw [ite_eq_right hij]
    simp only [remainderDiagonal, Matrix.diagonal_apply_ne _ hij]
    simpa only [Rat.cast_zero] using point_sound 0

private def scaledBoundaryErrorSq : Bounds :=
  let e := scale 2 boundaryErrorBounds
  mul e e

private theorem scaledBoundaryErrorSq_sound :
    Encloses scaledBoundaryErrorSq ((2 / (1 : ℝ) * boundaryErrorScale 1)^2) := by
  have h := scale_sound 2 boundaryErrorBounds_sound
  simpa only [scaledBoundaryErrorSq, pow_two, div_one, Rat.cast_ofNat] using mul_sound h h

private def poleRemainderSq : Bounds :=
  let e := mul poleScaleBounds poleNodeBounds
  mul e e

private theorem poleRemainderSq_sound :
    Encloses poleRemainderSq ((poleScale 1 * poleNode 1)^2) := by
  have h := mul_sound poleScaleBounds_sound poleNodeBounds_sound
  simpa only [poleRemainderSq, pow_two] using mul_sound h h

private def assemble (table : LeadingTable) (i j : Head) : Bounds :=
  let f := table.firstColumn.get
  let d := mul (deriv i) (deriv j)
  let leadingPart :=
    add (add (leading table i j) (scale (2/2048) (mul (f i) (f j)))) (mul leadingTail d)
  let remainderPart :=
    add (add (mul remTotal (if i = j then remDiag i else point 0)) (mul scaledBoundaryErrorSq d))
      (mul poleRemainderSq (mul (pole i) (pole j)))
  add (scale (5/4) leadingPart) (scale (3 * 5 / (5 * (512 : ℚ)^5)) remainderPart)

private theorem assemble_sound (hp : ∀ m ≤ 2048, Encloses (prime m) (primeSignal 1 m))
    (i j : Head) :
    Encloses (assemble (prepareLeading prime) i j) (completeRemoteMatrix 256 512 2048 1 (1/4) i j) := by
  have hF := mul_sound (first_sound prime hp i) (first_sound prime hp j)
  have hD := mul_sound (deriv_sound i) (deriv_sound j)
  have hLead := add_sound (add_sound (leading_sound prime hp i j) (scale_sound (2/2048) hF))
    (mul_sound leadingTail_sound hD)
  have hRem := add_sound (add_sound (mul_sound remTotal_sound (remDiag_sound i j))
    (mul_sound scaledBoundaryErrorSq_sound hD))
    (mul_sound poleRemainderSq_sound (mul_sound (pole_sound i) (pole_sound j)))
  have h := add_sound (scale_sound (5/4) hLead)
    (scale_sound (3 * 5 / (5 * (512 : ℚ)^5)) hRem)
  simpa only [assemble, prepareLeading, tabulateHead_get, completeRemoteMatrix, Matrix.add_apply, Matrix.smul_apply,
    Matrix.vecMulVec_apply, smul_eq_mul, Rat.cast_mul, Rat.cast_div, Rat.cast_pow,
    Rat.cast_ofNat, Nat.cast_ofNat, show (1 : ℝ) + 1/4 = 5/4 by norm_num,
    show (1 : ℝ) + (1/4)⁻¹ = 5 by norm_num] using h

end PrimeInput

private def primeTable : Vector Bounds 2049 :=
  Vector.ofFn (fun i => UnitWindowEntryBounds.primeSignalBounds 48 i.val)

private def primeAt (n : ℕ) : Bounds :=
  if h : n < 2049 then primeTable[n] else point 0

private theorem primeAt_sound (n : ℕ) (hn : n ≤ 2048) :
    Encloses (primeAt n) (primeSignal 1 n) := by
  simp only [primeAt, dite_eq_left (show n < 2049 by omega), primeTable, Vector.getElem_ofFn]
  exact UnitWindowEntryBounds.primeSignalBounds_sound 48 hn

private def leadingTable : LeadingTable := prepareLeading primeAt

/-- Cached rational endpoints for the exact complete first-stage remote allowance. -/
def remoteEntryBounds : (Fin 256 ⊕ Unit) → (Fin 256 ⊕ Unit) → Bounds := assemble leadingTable

/-- Every literal entry lies inside its outward rational interval. -/
theorem remoteEntry_bounds (i j : Fin 256 ⊕ Unit) :
    Encloses (remoteEntryBounds i j) (completeRemoteMatrix 256 512 2048 1 (1/4) i j) :=
  assemble_sound primeAt primeAt_sound i j

/-- The enclosure shares the exact symmetry of the literal remote matrix. -/
theorem remoteEntryBounds_symm (i j : Fin 256 ⊕ Unit) :
    remoteEntryBounds i j = remoteEntryBounds j i := by
  by_cases h : i = j
  · subst j
    rfl
  · simp only [remoteEntryBounds, assemble, leading,
      ite_eq_right h, ite_eq_right (Ne.symm h), mul_comm_bounds, add_comm_bounds]

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowRemoteBounds
