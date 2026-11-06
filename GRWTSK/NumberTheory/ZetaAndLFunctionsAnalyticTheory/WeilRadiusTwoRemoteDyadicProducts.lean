/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoDyadicReplay

/-!
# Projected radius-two remote intervals from integer products

The signed first trace uses its doubled centers and absolute-coefficient
radii. The cubic remainder uses the corresponding two physical weighted
Gram products. In both identities, the interval endpoints are computed on
the exact product grid. The signed derivative and the scalar pole project
as exact dyadic points. These identities connect a checked integer product
to its rational projection given the literal input enclosures. The leading
moments and the input enclosures have their own proof obligations.
Independent analytical review and novelty assessment are pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRemoteDyadicProducts

open Matrix RadiusTwoCandidateEntries RadiusTwoDyadicReplay RadiusTwoRemoteProjection
open RadiusTwoRemoteLeading RadiusTwoRemoteScalars RadiusTwoPrimeObservations RadiusTwoPrimeNorm
open OddResidualRows OddResidualMajorant OddRemoteAllowanceMatrix OddBoundarySignalBounds LowSchur
open GRWTSK.Algebra.LinearAlgebra.FiniteDyadicIntervalProducts
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

/-- Reconstruct a signed projected interval from its two exact integer products. -/
theorem projectedTraceBounds_eq_products (sourceBits coefficientBits : ℕ) (X : Matrix Trial Head ℤ)
    (source : Trial → Bounds) (lower upper : Trial → ℤ)
    (h : ∀ k, source k = endpoints sourceBits (lower k) (upper k))
    (horder : ∀ k, lower k ≤ upper k) (i : Head) :
    let centre := X.transpose.mulVec (fun k => lower k + upper k) i
    let radius := (Matrix.of fun j k => |X k j| : Matrix Head Trial ℤ).mulVec
      (fun k => upper k - lower k) i
    projectedTraceBounds (X.map (dyadic coefficientBits)) source i =
      endpoints (coefficientBits + sourceBits + 1) (centre - radius) (centre + radius) := by
  rw [projectedTraceBounds_eq_grid sourceBits coefficientBits X source lower upper h horder]
  simp only [weightedSum, Matrix.mulVec, dotProduct, Matrix.transpose_apply, Matrix.of_apply]

/-- The physical coordinates of the trial, with the pole coordinate separate. -/
def physicalRows (X : Matrix Trial Head ℤ) : Matrix (Fin 512) Head ℤ :=
  fun k => X (.inl k)

/-- Scale each physical row by its own doubled center or radius numerator. -/
def weightedGram (A : Matrix (Fin 512) Head ℤ) (weight : Fin 512 → ℤ) : Matrix Head Head ℤ :=
  A.transpose * Matrix.of (fun k j => weight k * A k j)

/-- The two integer Gram products recover both projected remainder endpoints. -/
theorem projectedRemainderBounds_eq_products (sourceBits coefficientBits : ℕ)
    (X : Matrix Trial Head ℤ) (weight : Fin 512 → Bounds) (lower upper : Fin 512 → ℤ)
    (h : ∀ k, weight k = endpoints sourceBits (lower k) (upper k))
    (horder : ∀ k, lower k ≤ upper k) (i j : Head) :
    let physical := physicalRows X
    let centre := weightedGram physical (fun k => lower k + upper k) i j
    let radius := weightedGram (Matrix.of fun k j => |physical k j|) (fun k => upper k - lower k) i j
    projectedRemainderBounds (X.map (dyadic coefficientBits)) weight i j =
      endpoints (coefficientBits * 2 + sourceBits + 1) (centre - radius) (centre + radius) := by
  rw [projectedRemainderBounds_eq_grid sourceBits coefficientBits X weight lower upper h horder]
  dsimp only [weightedSum, weightedGram, physicalRows, Matrix.mul_apply, Matrix.transpose_apply,
    Matrix.of_apply]
  have hc :
      (∑ k : Fin 512, X (.inl k) i * X (.inl k) j * (lower k + upper k)) =
        ∑ k : Fin 512, X (.inl k) i * ((lower k + upper k) * X (.inl k) j) :=
    Finset.sum_congr rfl (fun _ _ => by ring)
  have hr :
      (∑ k : Fin 512, |X (.inl k) i| * |X (.inl k) j| * (upper k - lower k)) =
        ∑ k : Fin 512, |X (.inl k) i| * ((upper k - lower k) * |X (.inl k) j|) :=
    Finset.sum_congr rfl (fun _ _ => by ring)
  simp only [abs_mul, hc, hr]

/-- The signed integer derivative coefficient in the exact sine basis. -/
def derivativeNumerator : Trial → ℤ :=
  Sum.elim (fun i => (-1 : ℤ) ^ (i.val + 1) * (i.val + 1 : ℕ)) (fun _ => 0)

private theorem cast_derivativeNumerator (k : Trial) :
    (derivativeNumerator k : ℝ) = derivativeTraceRow 512 k := by
  rcases k with k | ⟨⟩
  · simp [derivativeNumerator, derivativeTraceRow]
  · simp [derivativeNumerator, derivativeTraceRow]

/-- The projected derivative trace is an exact point on the coefficient grid. -/
theorem derivativeTrace_eq_product (coefficientBits : ℕ) (X : Matrix Trial Head ℤ) (i : Head) :
    ((X.map (dyadic coefficientBits)).map (Rat.castHom ℝ)).transpose.mulVec
        (derivativeTraceRow 512) i =
      (dyadic coefficientBits (X.transpose.mulVec derivativeNumerator i) : ℝ) := by
  simp only [Matrix.mulVec, dotProduct, Matrix.transpose_apply, Matrix.map_apply, Rat.coe_castHom,
    ← cast_derivativeNumerator, dyadic, Rat.cast_div, Rat.cast_intCast, Rat.cast_pow,
    Rat.cast_ofNat, Rat.cast_sum, Rat.cast_mul, Int.cast_sum, Int.cast_mul, ← Finset.sum_div, div_mul_eq_mul_div]

/-- The pole projection is the exact final reconstruction row. -/
theorem poleTrace_eq_row (coefficientBits : ℕ) (X : Matrix Trial Head ℤ) (i : Head) :
    ((X.map (dyadic coefficientBits)).map (Rat.castHom ℝ)).transpose.mulVec (poleCoordinate 512) i =
      (dyadic coefficientBits (X (.inr ()) i) : ℝ) := by
  simp only [Matrix.mulVec, dotProduct, Matrix.transpose_apply, Matrix.map_apply, Rat.coe_castHom,
    Fintype.sum_sum_type, poleCoordinate, Sum.elim_inl, Sum.elim_inr, mul_zero, mul_one,
    Finset.sum_const_zero, Fintype.sum_unique, zero_add]

/-- Dyadic observations before applying the reconstruction. -/
structure InputTables where
  firstLower : Trial → ℤ
  firstUpper : Trial → ℤ
  weightLower : Fin 512 → ℤ
  weightUpper : Fin 512 → ℤ
  leading11 : Bounds
  leading12 : Bounds
  leading22 : Bounds

/-- Literal inputs for the two signed traces, the remainder, and the leading moments. -/
structure InputTables.Sound (bits : ℕ) (t : InputTables) : Prop where
  first : ∀ k, Encloses (endpoints bits (t.firstLower k) (t.firstUpper k)) (firstTraceRow 512 2 k)
  weight : ∀ k, Encloses (endpoints bits (t.weightLower k) (t.weightUpper k))
    (remainderWeight 512 2048 2 (k.val + 1))
  leading11 : Encloses t.leading11 (c11 + linearTail)
  leading12 : Encloses t.leading12 c12
  leading22 : Encloses t.leading22 (c22 + derivativeTail)

/-- Use dyadic products for the signed first trace and the two weighted Grams. -/
def project (sourceBits coefficientBits : ℕ) (X : Matrix Trial Head ℤ) (t : InputTables) :
    ProjectedTables :=
  let firstCentre := X.transpose.mulVec (fun k => t.firstLower k + t.firstUpper k)
  let firstRadius := (Matrix.of fun j k => |X k j| : Matrix Head Trial ℤ).mulVec
    (fun k => t.firstUpper k - t.firstLower k)
  let physical := physicalRows X
  let gramCentre := weightedGram physical (fun k => t.weightLower k + t.weightUpper k)
  let gramRadius := weightedGram (Matrix.of fun k j => |physical k j|)
    (fun k => t.weightUpper k - t.weightLower k)
  ⟨fun i => endpoints (coefficientBits + sourceBits + 1)
      (firstCentre i - firstRadius i) (firstCentre i + firstRadius i),
    fun i => point (dyadic coefficientBits (X.transpose.mulVec derivativeNumerator i)),
    fun i => point (dyadic coefficientBits (X (.inr ()) i)),
    t.leading11, t.leading12, t.leading22,
    sum Finset.univ (fun k => endpoints sourceBits (t.weightLower k) (t.weightUpper k)),
    fun i j => endpoints (coefficientBits * 2 + sourceBits + 1)
      (gramCentre i j - gramRadius i j) (gramCentre i j + gramRadius i j)⟩

private theorem endpoints_order {bits : ℕ} {l u : ℤ} {x : ℝ}
    (h : Encloses (endpoints bits l u) x) : l ≤ u := by
  have hh := h.1.trans h.2
  have hQ : dyadic bits l ≤ dyadic bits u := Rat.cast_le.mp hh
  unfold dyadic at hQ
  have hInt := (div_le_div_iff_of_pos_right (by positivity : (0 : ℚ) < 2^bits)).mp hQ
  exact_mod_cast hInt

private theorem sum_weights_eq :
    (∑ k : Fin 512, remainderWeight 512 2048 2 (k.val + 1)) =
      ∑ n ∈ Finset.Icc 1 512, remainderWeight 512 2048 2 n := by
  apply Finset.sum_bij (fun k _ => k.val + 1)
  · intro k _
    have hk := k.isLt
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  · intro k _ j _ h
    apply Fin.ext
    omega
  · intro n hn
    have hn' := Finset.mem_Icc.mp hn
    exact ⟨⟨n - 1, by omega⟩, Finset.mem_univ _, by dsimp; omega⟩
  · intros
    rfl

/-- Checked integer products give the projected source enclosures once the input tables are sound. -/
theorem project_sound (sourceBits coefficientBits : ℕ) (X : Matrix Trial Head ℤ)
    {t : InputTables} (ht : t.Sound sourceBits) :
    (project sourceBits coefficientBits X t).Sound
      ((X.map (dyadic coefficientBits)).map (Rat.castHom ℝ)) := by
  refine ⟨?_, ?_, ?_, ht.leading11, ht.leading12, ht.leading22, ?_, ?_⟩
  · intro i
    dsimp only [project]
    rw [← projectedTraceBounds_eq_products sourceBits coefficientBits X
      (fun k => endpoints sourceBits (t.firstLower k) (t.firstUpper k))
      t.firstLower t.firstUpper (fun _ => rfl) (fun k => endpoints_order (ht.first k)) i]
    exact projectedTraceBounds_sound _ _ ht.first i
  · intro i
    dsimp only [project]
    rw [derivativeTrace_eq_product]
    exact point_sound _
  · intro i
    dsimp only [project]
    rw [poleTrace_eq_row]
    exact point_sound _
  · rw [← sum_weights_eq]
    exact sum_sound _ (fun k _ => ht.weight k)
  · intro i j
    dsimp only [project]
    rw [← projectedRemainderBounds_eq_products sourceBits coefficientBits X
      (fun k => endpoints sourceBits (t.weightLower k) (t.weightUpper k))
      t.weightLower t.weightUpper (fun _ => rfl) (fun k => endpoints_order (ht.weight k)) i j]
    exact projectedRemainderBounds_sound _ _ ht.weight i j

/-- The checked prime inventory before dyadic rounding. This common
interval is reused by the physical remainder weights and the remote tail. -/
def primeMassInterval : Bounds :=
  scale 2 (sum (Finset.Icc 2 54) primeWeightBounds)

theorem primeMassInterval_sound : Encloses primeMassInterval (primeMass 2) := by
  unfold primeMassInterval primeMass
  rw [activePrimePowers_two]
  exact scale_sound 2 (sum_sound _ (fun _ hq => primeWeightBounds_sound hq))

/-- The signed first trace, including the separate negative pole row. -/
def firstSourceBounds (bits : ℕ) (boundary prime : ℕ → Bounds) : Trial → Bounds
  | .inl k => scale ((-1 : ℚ)^(k.val + 1))
      (firstTraceEntryBoundsFrom bits (k.val + 1) (boundary (k.val + 1)) (prime (k.val + 1)))
  | .inr _ => round bits (neg poleScaleBounds)

theorem firstSourceBounds_sound (bits : ℕ) {boundary prime : ℕ → Bounds}
    (hb : ∀ n, 0 < n → n ≤ 512 → Encloses (boundary n) (boundarySignal 2 n))
    (hp : ∀ n, 0 < n → n ≤ 512 → Encloses (prime n) (primeSignal 2 (n : ℝ)))
    (k : Trial) : Encloses (firstSourceBounds bits boundary prime k) (firstTraceRow 512 2 k) := by
  rcases k with k | ⟨⟩
  · have hk := k.isLt
    simpa only [firstSourceBounds, firstTraceRow, Sum.elim_inl, Rat.cast_pow, Rat.cast_neg,
      Rat.cast_one] using scale_sound ((-1 : ℚ)^(k.val + 1))
        (firstTraceEntryBoundsFrom_sound bits (hb (k.val + 1) (by omega) (by omega))
          (hp (k.val + 1) (by omega) (by omega)))
  · exact round_sound bits (neg_sound poleScaleBounds_sound)

/-- Retain the derivative sign and round each full moment summand once. -/
def derivativeInterval (signal : Bounds) : Bounds :=
  add (point (1 / 2)) (mul (scale 2 piInvBounds) signal)

theorem derivativeInterval_sound {n : ℕ} {signal : Bounds}
    (hp : Encloses signal (primeSignal 2 (n : ℝ))) :
    Encloses (derivativeInterval signal) (derivativeWeight 2 n) := by
  have h := add_sound (point_sound (1 / 2)) (mul_sound (scale_sound 2 piInvBounds_sound) hp)
  norm_num only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] at h
  simpa only [derivativeInterval, derivativeWeight, div_eq_mul_inv] using h

/-- The exact rational endpoint recipe for the squared-derivative tail. -/
def derivativeTailInterval : Bounds :=
  let kappa := add (point (1 / 2)) (mul primeMassInterval piInvBounds)
  scale (2 / (3 * (8192 : ℚ)^3)) (mul kappa kappa)

theorem derivativeTailInterval_sound : Encloses derivativeTailInterval derivativeTail := by
  have h := add_sound (point_sound (1 / 2)) (mul_sound primeMassInterval_sound piInvBounds_sound)
  have hTail := scale_sound (2 / (3 * (8192 : ℚ)^3)) (mul_sound h h)
  unfold derivativeTailInterval derivativeTail
  convert hTail using 1
  norm_num [div_eq_mul_inv, pow_two]
  ring

/-- Compare the dyadic input packet to the source-derived scalar intervals.
The products downstream may then be replayed on the packet's exact grids. -/
theorem input_sound_of_source (bits : ℕ) (t : InputTables) {boundary prime : ℕ → Bounds}
    (hb : ∀ n, 0 < n → n ≤ 512 → Encloses (boundary n) (boundarySignal 2 n))
    (hp : ∀ n, 0 < n → n ≤ 8192 → Encloses (prime n) (primeSignal 2 (n : ℝ)))
    (hfirst : ∀ k, endpoints bits (t.firstLower k) (t.firstUpper k) =
      firstSourceBounds bits boundary prime k)
    (hweight : ∀ k, endpoints bits (t.weightLower k) (t.weightUpper k) =
      remainderWeightBoundsFrom bits 512 2048 (k.val + 1) (boundary (k.val + 1)) primeMassInterval)
    (h11 : t.leading11 = add (c11Bounds bits) linearTailBounds)
    (h12 : t.leading12 = c12BoundsFrom bits (fun n => derivativeInterval (prime n)))
    (h22 : t.leading22 = add (c22BoundsFrom bits (fun n => derivativeInterval (prime n)))
      derivativeTailInterval) :
    t.Sound bits := by
  have hd n (hl : 2048 < n) (hu : n ≤ 8192) :
      Encloses (derivativeInterval (prime n)) (derivativeWeight 2 n) :=
    derivativeInterval_sound (hp n (by omega) hu)
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · intro k
    rw [hfirst k]
    exact firstSourceBounds_sound bits hb (fun n h0 h512 => hp n h0 (by omega)) k
  · intro k
    have hk := k.isLt
    rw [hweight k]
    exact remainderWeightBoundsFrom_sound bits 512 2048 (hb _ (by omega) (by omega))
      primeMassInterval_sound
  · rw [h11]
    exact add_sound (c11Bounds_sound bits) linearTailBounds_sound
  · rw [h12]
    exact c12BoundsFrom_sound bits hd
  · rw [h22]
    exact add_sound (c22BoundsFrom_sound bits hd) derivativeTailInterval_sound

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoRemoteDyadicProducts
