/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalRealBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowRationalSignals
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowPrimeTrig
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddInclusionWindow

/-!
# Rational entry enclosures for the first radius-one odd window

Local attribution is to grwtsk contributors.

The prime sine signal sums the five nonzero signed von Mangoldt terms.
On the diagonal the cosine is multiplied by the support length and the
sine is divided by the mode frequency. Off the diagonal the exact
boundary and prime divided differences keep their signed coefficients.
The physical spectral shift contributes only to the diagonal.

For the head, compute each symmetric pair in one orientation. The pole
uses its exact alternating sign and the scalar corner is one half. The
rectangular residual uses physical rows 257 through 512 with the same
physical and pole recipes. Every rational endpoint is rounded outwards
on the chosen grid. The entry return can use any scalar tables with
checked enclosures of the same signals on the indices it reads. This
permits a shorter scalar certificate without changing the analytic
matrix. The finite packet aggregate, remote allowance and independent
mathematical review have separate scopes.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowEntryBounds

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.LinearAlgebra.SchurObserver
open LowSchur OddRootProjection OddOutputTrace OddPrimeRow OddSchurAccounting
open OddResidualSourceComparison OddInclusionWindow OddBoundarySignalBounds OddBoundaryObservation
open UnitWindowOddEntries UnitWindowPrimeData UnitWindowPrimeTrig UnitWindowRationalSignals

private def inventory : Finset ℕ := {2, 3, 4, 5, 7}

private theorem sum_active_eq_inventory (f : ℕ → ℝ) (h6 : f 6 = 0) :
    (∑ q ∈ activePrimePowers 1, f q) = ∑ q ∈ inventory, f q := by
  rw [activePrimePowers_one]
  symm
  apply Finset.sum_subset (by decide)
  intro q hq hq'
  simp only [Finset.mem_Icc] at hq
  simp only [inventory, Finset.mem_insert, Finset.mem_singleton, not_or] at hq'
  obtain rfl : q = 6 := by omega
  exact h6

private def centered (c r : ℚ) : Bounds := (c - r, c + r)

private theorem centered_sound {c r : ℚ} {x : ℝ} (h : |x - (c : ℝ)| ≤ (r : ℝ)) :
    Encloses (centered c r) x := by
  have h' := abs_le.mp h
  unfold Encloses centered
  push_cast
  exact ⟨by linarith [h'.1], by linarith [h'.2]⟩

private def weightedSinBounds (bits q n : ℕ) : Bounds :=
  round bits (centered (primeWeightHat q * sinHat ((n : ℚ) * logHat q)) (4 / 10 ^ (13 : ℕ)))

private def weightedCosBounds (bits q n : ℕ) : Bounds :=
  round bits (centered (primeWeightHat q * cosHat ((n : ℚ) * logHat q)) (4 / 10 ^ (13 : ℕ)))

private theorem weightedSinBounds_sound (bits : ℕ) {q n : ℕ} (hq : q ∈ inventory)
    (hn : n ≤ 2048) :
    Encloses (weightedSinBounds bits q n) (primeWeight q * Real.sin (frequency 1 n * Real.log q)) :=
  round_sound bits (centered_sound (by
    simpa only [Rat.cast_div, Rat.cast_pow, Rat.cast_ofNat] using
      (primeWeightedTrig_observation hq hn).1))

private theorem weightedCosBounds_sound (bits : ℕ) {q n : ℕ} (hq : q ∈ inventory)
    (hn : n ≤ 2048) :
    Encloses (weightedCosBounds bits q n) (primeWeight q * Real.cos (frequency 1 n * Real.log q)) :=
  round_sound bits (centered_sound (by
    simpa only [Rat.cast_div, Rat.cast_pow, Rat.cast_ofNat] using
      (primeWeightedTrig_observation hq hn).2))

/-- Signed sine signal of all five active nonzero prime weights. -/
def primeSignalBounds (bits n : ℕ) : Bounds := sum inventory (fun q => weightedSinBounds bits q n)

theorem primeSignalBounds_sound (bits : ℕ) {n : ℕ} (hn : n ≤ 2048) :
    Encloses (primeSignalBounds bits n) (primeSignal 1 (n : ℝ)) := by
  unfold primeSignal
  rw [sum_active_eq_inventory _ (by simp [primeWeight_six])]
  exact sum_sound inventory (fun q hq => weightedSinBounds_sound bits hq hn)

private def logBounds (bits q : ℕ) : Bounds :=
  round bits (centered (logHat q) (1 / 10 ^ (17 : ℕ)))

private theorem logBounds_sound (bits : ℕ) {q : ℕ} (hq : q ∈ inventory) :
    Encloses (logBounds bits q) (Real.log q) :=
  round_sound bits (centered_sound (by
    simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_pow, Rat.cast_ofNat] using
      abs_log_sub_logHat_le hq))

private def invPiBounds : Bounds := inv (3.14159265358979323846, 3.14159265358979323847)

private theorem invPiBounds_sound : Encloses invPiBounds Real.pi⁻¹ := by
  unfold invPiBounds
  apply inv_sound
  · exact ⟨by exact Real.pi_gt_d20.le, by exact Real.pi_lt_d20.le⟩
  · norm_num

private def boundaryBounds (bits n K : ℕ) : Bounds :=
  (boundaryLower bits n K, boundaryUpper bits n K)

private theorem boundaryBounds_sound (bits n : ℕ) {K : ℕ} (hK : 0 < K) :
    Encloses (boundaryBounds bits n K) (boundarySignal 1 n) :=
  boundary_bounds bits n hK

private def archDiagonalBounds (bits terms n : ℕ) : Bounds :=
  (-5.382 + multiplierLower bits terms n + correctionLower bits n 1024,
    -5.362 + multiplierUpper bits terms n + correctionUpper bits n 1024)

private theorem archDiagonalBounds_sound (bits terms : ℕ) {n : ℕ} (hn : 0 < n)
    (hn' : n ≤ 257) :
    Encloses (archDiagonalBounds bits terms n) (sineArchimedeanEntry 1 (gammaConstant 1 0) 0 n n) :=
  archimedeanDiagonal_bounds bits terms hn hn'

private def primeDiagonalBounds (bits n : ℕ) : Bounds :=
  sum inventory fun q =>
    add (mul (sub (point 2) (logBounds bits q)) (weightedCosBounds bits q n))
      (scale (n : ℚ)⁻¹ (mul invPiBounds (weightedSinBounds bits q n)))

private theorem primeDiagonalBounds_sound (bits : ℕ) {n : ℕ} (hn : 0 < n) (hn' : n ≤ 2048) :
    Encloses (primeDiagonalBounds bits n)
      (∑ q ∈ activePrimePowers 1, primeWeight q * sineShiftEntry 1 n n (Real.log q)) := by
  rw [primeShiftSum_one_diagonal n hn]
  apply sum_sound inventory
  intro q hq
  have h := add_sound (mul_sound (sub_sound (point_sound 2) (logBounds_sound bits hq))
    (weightedCosBounds_sound bits hq hn'))
    (scale_sound (n : ℚ)⁻¹ (mul_sound invPiBounds_sound (weightedSinBounds_sound bits hq hn')))
  convert h using 1
  push_cast
  simp only [frequency, div_eq_mul_inv, mul_inv_rev]
  ring

private def archOffDiagonalBounds (boundary : ℕ → Bounds) (m n : ℕ) : Bounds :=
  scale (((-1 : ℚ) ^ (m + n) * (-2) * (m : ℚ) * (n : ℚ)) / ((m : ℚ) ^ 2 - (n : ℚ) ^ 2))
    (sub (boundary n) (boundary m))

private theorem archOffDiagonalBounds_sound {boundary : ℕ → Bounds} {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) (hmn : m ≠ n)
    (hM : Encloses (boundary m) (boundarySignal 1 m))
    (hN : Encloses (boundary n) (boundarySignal 1 n)) :
    Encloses (archOffDiagonalBounds boundary m n)
      (sineArchimedeanEntry 1 (gammaConstant 1 0) 0 m n) := by
  rw [sineArchimedeanEntry_one_off_diagonal hm hn hmn]
  have h := scale_sound
    (((-1 : ℚ) ^ (m + n) * (-2) * (m : ℚ) * (n : ℚ)) / ((m : ℚ) ^ 2 - (n : ℚ) ^ 2))
    (sub_sound hN hM)
  unfold archOffDiagonalBounds
  convert h using 1
  unfold archimedeanOffDiagonal
  push_cast
  simp only [div_eq_mul_inv]
  ring

private def primeOffDiagonalBounds (signal : ℕ → Bounds) (m n : ℕ) : Bounds :=
  scale (((-1 : ℚ) ^ (m + n) * 2) / ((m : ℚ) ^ 2 - (n : ℚ) ^ 2))
    (mul invPiBounds (sub (scale m (signal n)) (scale n (signal m))))

private theorem primeOffDiagonalBounds_sound {signal : ℕ → Bounds} {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) (hmn : m ≠ n)
    (hM : Encloses (signal m) (primeSignal 1 (m : ℝ)))
    (hN : Encloses (signal n) (primeSignal 1 (n : ℝ))) :
    Encloses (primeOffDiagonalBounds signal m n)
      (∑ q ∈ activePrimePowers 1, primeWeight q * sineShiftEntry 1 m n (Real.log q)) := by
  rw [prime_shift_sum_off_diagonal 1 m n (by norm_num) hm hn hmn]
  have h := scale_sound (((-1 : ℚ) ^ (m + n) * 2) / ((m : ℚ) ^ 2 - (n : ℚ) ^ 2))
    (mul_sound invPiBounds_sound
      (sub_sound (scale_sound (m : ℚ) hN) (scale_sound (n : ℚ) hM)))
  unfold primeOffDiagonalBounds
  convert h using 1
  unfold oddPrimeRow primeRow
  push_cast
  simp only [div_eq_mul_inv]
  ring

/-- The four scalar tables shared by the physical head and residual entries. -/
structure PhysicalTables where
  boundary : ℕ → Bounds
  primeSignal : ℕ → Bounds
  gammaDiagonal : ℕ → Bounds
  primeDiagonal : ℕ → Bounds

/-- Each scalar table encloses the corresponding literal signal on the
indices used by the physical entry formula. -/
structure PhysicalTables.Sound (t : PhysicalTables) (modes diagonals : ℕ) : Prop where
  boundary : ∀ n, 0 < n → n ≤ modes → Encloses (t.boundary n) (boundarySignal 1 n)
  primeSignal : ∀ n, 0 < n → n ≤ modes → Encloses (t.primeSignal n) (LowSchur.primeSignal 1 (n : ℝ))
  gammaDiagonal : ∀ n, 0 < n → n ≤ diagonals →
    Encloses (t.gammaDiagonal n) (sineArchimedeanEntry 1 (gammaConstant 1 0) 0 n n)
  primeDiagonal : ∀ n, 0 < n → n ≤ diagonals →
    Encloses (t.primeDiagonal n)
      (∑ q ∈ activePrimePowers 1, primeWeight q * sineShiftEntry 1 n n (Real.log q))

/-- Scalar entries from the literal radius-one formulas. -/
def physicalTables (bits terms K : ℕ) : PhysicalTables where
  boundary n := boundaryBounds bits n K
  primeSignal := primeSignalBounds bits
  gammaDiagonal := archDiagonalBounds bits terms
  primeDiagonal := primeDiagonalBounds bits

theorem physicalTables_sound (bits terms : ℕ) {K modes diagonals : ℕ} (hK : 0 < K)
    (hm : modes ≤ 2048) (hd : diagonals ≤ 257) :
    (physicalTables bits terms K).Sound modes diagonals :=
  ⟨fun n _ _ => boundaryBounds_sound bits n hK,
    fun _ _ hn => primeSignalBounds_sound bits (hn.trans hm),
    fun _ hn hn' => archDiagonalBounds_sound bits terms hn (hn'.trans hd),
    fun _ hn hn' => primeDiagonalBounds_sound bits hn (hn'.trans (hd.trans (by decide)))⟩

/-- A stored prefix together with the original function for indices beyond it. -/
structure BoundsCache where
  values : Array Bounds
  fallback : ℕ → Bounds

/-- Read the stored prefix, or evaluate the original function outside it. -/
def BoundsCache.get (cache : BoundsCache) (n : ℕ) : Bounds :=
  if h : n < cache.values.size then cache.values[n] else cache.fallback n

instance : CoeFun BoundsCache (fun _ => ℕ → Bounds) where
  coe := BoundsCache.get

/-- Build the stored array before supplying a lookup function to a consumer. -/
def memoizeBounds (size : ℕ) (f : ℕ → Bounds) : BoundsCache :=
  ⟨Array.ofFn (fun i : Fin size => f i.val), f⟩

theorem memoizeBounds_eq (size : ℕ) (f : ℕ → Bounds) : (memoizeBounds size f).get = f := by
  funext n
  simp [memoizeBounds, BoundsCache.get]

/-- Cache the two full mode tables and the two shorter diagonal tables. -/
def cachePhysicalTables (modeCount diagonalCount : ℕ) (t : PhysicalTables) : PhysicalTables where
  boundary := (memoizeBounds modeCount t.boundary).get
  primeSignal := (memoizeBounds modeCount t.primeSignal).get
  gammaDiagonal := (memoizeBounds diagonalCount t.gammaDiagonal).get
  primeDiagonal := (memoizeBounds diagonalCount t.primeDiagonal).get

theorem cachePhysicalTables_eq (modeCount diagonalCount : ℕ) (t : PhysicalTables) :
    cachePhysicalTables modeCount diagonalCount t = t := by
  cases t
  simp [cachePhysicalTables, memoizeBounds_eq]

/-- Assemble an entry from the scalar tables, with a shift only on equal modes. -/
def physicalBoundsFrom (bits : ℕ) (t : PhysicalTables) (m n : ℕ) (β : ℚ) : Bounds :=
  round bits <| if m = n then
    sub (sub (t.gammaDiagonal n) (t.primeDiagonal n)) (point β)
  else
    sub (archOffDiagonalBounds t.boundary m n) (primeOffDiagonalBounds t.primeSignal m n)

/-- The full physical entry from the literal tables. -/
def physicalBounds (bits terms K m n : ℕ) (β : ℚ) : Bounds :=
  physicalBoundsFrom bits (physicalTables bits terms K) m n β

theorem physicalBoundsFrom_sound (bits : ℕ) {t : PhysicalTables} {modes diagonals m n : ℕ}
    (ht : t.Sound modes diagonals)
    (hm : 0 < m) (hn : 0 < n) (hm' : m ≤ modes) (hn' : n ≤ modes)
    (hdiag : m = n → n ≤ diagonals) (β : ℚ) :
    Encloses (physicalBoundsFrom bits t m n β)
      (literalCoreEntry 1 m n - (if m = n then (β : ℝ) else 0)) := by
  unfold physicalBoundsFrom
  apply round_sound
  by_cases h : m = n
  · subst m
    simp only [ite_true, literalCoreEntry]
    exact sub_sound (sub_sound (ht.gammaDiagonal n hn (hdiag rfl))
      (ht.primeDiagonal n hn (hdiag rfl))) (point_sound β)
  · simp only [ite_eq_right h, literalCoreEntry, sub_zero]
    exact sub_sound (archOffDiagonalBounds_sound hm hn h (ht.boundary m hm hm') (ht.boundary n hn hn'))
      (primeOffDiagonalBounds_sound hm hn h (ht.primeSignal m hm hm') (ht.primeSignal n hn hn'))

theorem physicalBounds_sound (bits terms : ℕ) {K m n : ℕ} (hK : 0 < K)
    (hm : 0 < m) (hn : 0 < n) (hm' : m ≤ 2048) (hn' : n ≤ 2048)
    (hdiag : m = n → n ≤ 257) (β : ℚ) :
    Encloses (physicalBounds bits terms K m n β)
      (literalCoreEntry 1 m n - (if m = n then (β : ℝ) else 0)) :=
  physicalBoundsFrom_sound bits (physicalTables_sound bits terms hK le_rfl le_rfl)
    hm hn hm' hn' hdiag β

/-- The signed pole enclosure rounded on the same grid as the physical entries. -/
def poleBounds (bits n : ℕ) : Bounds :=
  round bits (scale ((-1 : ℚ) ^ (n+1)) (poleMagnitudeLower n, poleMagnitudeUpper n))

theorem poleBounds_sound (bits : ℕ) {n : ℕ} (hn : 0 < n) :
    Encloses (poleBounds bits n) (literalPoleEntry 1 n) := by
  have h := scale_sound ((-1 : ℚ) ^ (n+1))
    (show Encloses (poleMagnitudeLower n, poleMagnitudeUpper n)
      ((-1 : ℝ) ^ (n+1) * literalPoleEntry 1 n) from poleMagnitude_bounds hn)
  apply round_sound
  convert h using 1
  push_cast
  rw [← mul_assoc, ← mul_pow]
  norm_num

private theorem literalCoreEntry_symmetric (m n : ℕ) :
    literalCoreEntry 1 m n = literalCoreEntry 1 n m := by
  have hGamma : sineArchimedeanEntry 1 (gammaConstant 1 0) 0 m n =
      sineArchimedeanEntry 1 (gammaConstant 1 0) 0 n m := by
    unfold sineArchimedeanEntry
    simp_rw [show ∀ t : ℝ,
      zeroExtendedSine 1 m t * zeroExtendedSine 1 n t =
        zeroExtendedSine 1 n t * zeroExtendedSine 1 m t from fun _ => mul_comm _ _,
      show ∀ r t : ℝ,
      (zeroExtendedSine 1 m (t + r) - zeroExtendedSine 1 m t) *
          (zeroExtendedSine 1 n (t + r) - zeroExtendedSine 1 n t) =
        (zeroExtendedSine 1 n (t + r) - zeroExtendedSine 1 n t) *
          (zeroExtendedSine 1 m (t + r) - zeroExtendedSine 1 m t) from fun _ _ => mul_comm _ _]
  unfold literalCoreEntry
  rw [hGamma]
  simp_rw [sineShiftEntry_symmetric 1 m n]

/-- Assemble the head from shared tables, using one orientation per symmetric pair. -/
def headBoundsFrom (bits : ℕ) (t : PhysicalTables) (pole : ℕ → Bounds) :
    (Fin 256 ⊕ Unit) → (Fin 256 ⊕ Unit) → Bounds
  | .inl i, .inl j =>
    physicalBoundsFrom bits t (max i.val j.val + 1) (min i.val j.val + 1) (-1)
  | .inl i, .inr _ => pole (i.val + 1)
  | .inr _, .inl j => pole (j.val + 1)
  | .inr _, .inr _ => point (1 / 2)

/-- Entry enclosures of the shifted head from the literal tables. -/
def headBounds (bits terms K : ℕ) : (Fin 256 ⊕ Unit) → (Fin 256 ⊕ Unit) → Bounds :=
  headBoundsFrom bits (physicalTables bits terms K) (poleBounds bits)

theorem headBounds_symmetric (bits terms K : ℕ) (i j : Fin 256 ⊕ Unit) :
    headBounds bits terms K i j = headBounds bits terms K j i := by
  cases i <;> cases j <;> simp [headBounds, headBoundsFrom, min_comm, max_comm]

theorem headBoundsFrom_sound (bits : ℕ) {t : PhysicalTables} {pole : ℕ → Bounds}
    (ht : t.Sound 512 256)
    (hp : ∀ n, 0 < n → n ≤ 512 → Encloses (pole n) (literalPoleEntry 1 n))
    (i j : Fin 256 ⊕ Unit) :
    Encloses (headBoundsFrom bits t pole i j)
      (shiftedBlock (borderedSourceMatrix 1 256) poleShiftMetric (-1) i j) := by
  rcases i with i | ⟨⟩ <;> rcases j with j | ⟨⟩
  · rw [shiftedBordered_physicalEntry 1 (by norm_num) i j (-1)]
    have hi := i.isLt
    have hj := j.isLt
    have hij : (i.val + 1 = j.val + 1) ↔ i = j := by simp [Fin.ext_iff]
    by_cases h : i.val ≤ j.val
    · simp only [headBoundsFrom, max_eq_right h, min_eq_left h]
      have heq : (j.val + 1 = i.val + 1) ↔ i = j := by rw [eq_comm, hij]
      have h' := physicalBoundsFrom_sound bits ht (m := j.val + 1) (n := i.val + 1)
        (by omega) (by omega) (by omega) (by omega) (by omega) (-1)
      rw [literalCoreEntry_symmetric] at h'
      simpa only [heq, Rat.cast_neg, Rat.cast_one] using h'
    · have h' : j.val ≤ i.val := by omega
      simp only [headBoundsFrom, max_eq_left h', min_eq_right h']
      have hBound := physicalBoundsFrom_sound bits ht (m := i.val + 1) (n := j.val + 1)
        (by omega) (by omega) (by omega) (by omega) (by omega) (-1)
      simpa only [hij, Rat.cast_neg, Rat.cast_one] using hBound
  · rw [shiftedBordered_poleColumn 1 i (-1)]
    exact hp (i.val + 1) (Nat.succ_pos _) (by have := i.isLt; omega)
  · rw [shiftedBordered_poleRow_one j (-1), shiftedBordered_poleColumn 1 j (-1)]
    exact hp (j.val + 1) (Nat.succ_pos _) (by have := j.isLt; omega)
  · rw [shiftedBordered_poleCorner_one 256 (-1)]
    simpa [headBoundsFrom] using point_sound (1 / 2)

theorem headBounds_sound (bits terms : ℕ) {K : ℕ} (hK : 0 < K)
    (i j : Fin 256 ⊕ Unit) :
    Encloses (headBounds bits terms K i j)
      (shiftedBlock (borderedSourceMatrix 1 256) poleShiftMetric (-1) i j) :=
  headBoundsFrom_sound bits (physicalTables_sound bits terms hK (by decide) (by decide))
    (fun _ hn _ => poleBounds_sound bits hn) i j

/-- Assemble every finite residual row from the shared tables. -/
def residualBoundsFrom (bits : ℕ) (t : PhysicalTables) (pole : ℕ → Bounds)
    (i : Fin (512 - 256)) : (Fin 256 ⊕ Unit) → Bounds
  | .inl j => physicalBoundsFrom bits t (256 + 1 + i.val) (j.val + 1) 0
  | .inr _ => pole (256 + 1 + i.val)

/-- All finite residual rows from the literal tables, including the pole column. -/
def residualBounds (bits terms K : ℕ) :
    Fin (512 - 256) → (Fin 256 ⊕ Unit) → Bounds :=
  residualBoundsFrom bits (physicalTables bits terms K) (poleBounds bits)

/-- Residual indices lie strictly above the trial, so no diagonal
scalar enclosure is consumed here. -/
theorem residualBoundsFrom_sound (bits : ℕ) {t : PhysicalTables} {pole : ℕ → Bounds}
    {diagonals : ℕ} (ht : t.Sound 512 diagonals)
    (hp : ∀ n, 0 < n → n ≤ 512 → Encloses (pole n) (literalPoleEntry 1 n))
    (i : Fin (512 - 256)) (j : Fin 256 ⊕ Unit) :
    Encloses (residualBoundsFrom bits t pole i j) (literalResidualMatrix 1 256 512 i j) := by
  rcases j with j | ⟨⟩
  · have hi := i.isLt
    have hj := j.isLt
    have h := physicalBoundsFrom_sound bits ht (m := 256 + 1 + i.val) (n := j.val + 1)
      (by omega) (by omega) (by omega) (by omega) (by omega) 0
    simpa [residualBoundsFrom, literalResidualMatrix] using h
  · exact hp (256 + 1 + i.val) (by omega) (by have := i.isLt; omega)

theorem residualBounds_sound (bits terms : ℕ) {K : ℕ} (hK : 0 < K)
    (i : Fin (512 - 256)) (j : Fin 256 ⊕ Unit) :
    Encloses (residualBounds bits terms K i j) (literalResidualMatrix 1 256 512 i j) :=
  residualBoundsFrom_sound bits (diagonals := 0)
    (physicalTables_sound bits terms hK (by decide) (by decide))
    (fun _ hn _ => poleBounds_sound bits hn) i j

end GRWTSK.NumberTheory.WeilQuadraticForm.UnitWindowEntryBounds
