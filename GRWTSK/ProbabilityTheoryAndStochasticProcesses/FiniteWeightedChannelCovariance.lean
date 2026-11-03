/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import Mathlib

/-!
# Finite weighted channel covariance with arbitrary source and frequency spaces

This source makes NO reference to a particular simulation, Fourier sample count,
residue modulus, or color palette. All results work for arbitrary types of source
indices, frequencies, channels, time points and random-choice outcomes, provided
the SUPPORT used at each stage is finite. The ambient types may be infinite.

All signed within-channel terms and cross-channel terms remain visible.
A finite random-choice law is a supplied joint law; pairwise orthogonality is
an explicit hypothesis, NOT an assumption about arithmetic coefficients.

The all-positive-rate Liouville/Mobius supplier does NOT follow from these
combinatorial identities or from generic independence of randomized choices.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.ProbabilityAndMathematicalStatistics.FiniteWeightedChannelCovariance

classical

variable {ι ν κ τ Ω : Type*}

/-- Any source-to-frequency map followed by any frequency-to-channel map. -/
def occupiedChannels (S : Finset ι) (frequency : ι → ν) (color : ν → κ) :
    Finset κ := S.image (fun i => color (frequency i))

/-- Signed amplitudes are summed BEFORE squaring, and retain multiplicity. -/
def channelAmplitude (S : Finset ι) (frequency : ι → ν)
    (color : ν → κ) (a : ι → ℝ) (r : κ) : ℝ :=
  ∑ i ∈ S, if color (frequency i) = r then a i else 0

/-- Every original source index appears in exactly one occupied channel.
No Fintype assumption on the ambient source, frequency, or color types. -/
theorem sum_channelAmplitude (S : Finset ι) (frequency : ι → ν)
    (color : ν → κ) (a : ι → ℝ) :
    (∑ r ∈ occupiedChannels S frequency color,
      channelAmplitude S frequency color a r) = ∑ i ∈ S, a i := by
  unfold occupiedChannels channelAmplitude
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i hi
  have himage : color (frequency i) ∈
      S.image (fun j => color (frequency j)) :=
    Finset.mem_image.mpr ⟨i, hi, rfl⟩
  simp [himage]

/-- The complete channel square contains BOTH ordered off-diagonal terms. -/
theorem square_channel_sum (C : Finset κ) (b : κ → ℝ) :
    (∑ r ∈ C, b r) ^ 2 =
      (∑ r ∈ C, b r ^ 2) +
        ∑ r ∈ C, ∑ s ∈ C, if r ≠ s then b r * b s else 0 := by
  have hdiag (r : κ) (hr : r ∈ C) :
      b r ^ 2 = ∑ s ∈ C, if r = s then b r * b s else 0 := by
    simp [hr, pow_two]
  calc
    (∑ r ∈ C, b r) ^ 2 = ∑ r ∈ C, ∑ s ∈ C, b r * b s := by
      rw [pow_two, Finset.sum_mul_sum]
    _ = ∑ r ∈ C,
          (b r ^ 2 + ∑ s ∈ C, if r ≠ s then b r * b s else 0) := by
      apply Finset.sum_congr rfl
      intro r hr
      rw [hdiag r hr, ← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro s hs
      by_cases h : r = s <;> simp [h]
    _ = _ := by rw [Finset.sum_add_distrib]

/-- Finite Cauchy, with the ACTUAL number of occupied channels paid. -/
theorem source_square_le_channel_squares (S : Finset ι)
    (frequency : ι → ν) (color : ν → κ) (a : ι → ℝ) :
    (∑ i ∈ S, a i) ^ 2 ≤
      ((occupiedChannels S frequency color).card : ℝ) *
        ∑ r ∈ occupiedChannels S frequency color,
          channelAmplitude S frequency color a r ^ 2 := by
  have h := sq_sum_le_card_mul_sum_sq
    (s := occupiedChannels S frequency color)
    (f := channelAmplitude S frequency color a)
  simpa only [sum_channelAmplitude] using h

/-- The true finite observation at a time point, without any randomization. -/
def observation (S : Finset ι) (live : ι → τ → Prop)
    (a : ι → ℝ) (t : τ) : ℝ :=
  ∑ i ∈ S, if live i t then a i else 0

/-- The complete weighted prefix/snapshot square, for arbitrary time sets. -/
def weightedEnergy (S : Finset ι) (times : Finset τ)
    (live : ι → τ → Prop) (a : ι → ℝ) (w : τ → ℝ) : ℝ :=
  ∑ t ∈ times, w t * observation S live a t ^ 2

/-- Kernel retains the full active time overlap, with its signed weights. -/
def overlapKernel (times : Finset τ) (live : ι → τ → Prop)
    (w : τ → ℝ) (i j : ι) : ℝ :=
  ∑ t ∈ times, if live i t ∧ live j t then w t else 0

/-- The exact signed full-pair Fubini identity. ALL ordered source pairs survive. -/
theorem weightedEnergy_eq_fullPairKernel (S : Finset ι)
    (times : Finset τ) (live : ι → τ → Prop)
    (a : ι → ℝ) (w : τ → ℝ) :
    weightedEnergy S times live a w =
      ∑ i ∈ S, ∑ j ∈ S, a i * a j * overlapKernel times live w i j := by
  unfold weightedEnergy
  calc
    (∑ t ∈ times, w t * observation S live a t ^ 2) =
        ∑ t ∈ times, ∑ i ∈ S, ∑ j ∈ S,
          w t * ((if live i t then a i else 0) *
            (if live j t then a j else 0)) := by
      apply Finset.sum_congr rfl
      intro t ht
      unfold observation
      rw [pow_two, Finset.sum_mul_sum, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i hi
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j hj
      ring
    _ = ∑ i ∈ S, ∑ j ∈ S, ∑ t ∈ times,
          w t * ((if live i t then a i else 0) *
            (if live j t then a j else 0)) := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro i hi
      rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro i hi
      apply Finset.sum_congr rfl
      intro j hj
      unfold overlapKernel
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro t ht
      by_cases hi' : live i t <;> by_cases hj' : live j t <;>
        simp [hi', hj'] <;> ring

/-- The exact channel observation at a fixed stage. -/
def channelObservation (S : Finset ι) (frequency : ι → ν)
    (color : ν → κ) (live : ι → τ → Prop)
    (a : ι → ℝ) (t : τ) (r : κ) : ℝ :=
  channelAmplitude S frequency color
    (fun i => if live i t then a i else 0) r

/-- The observed scalar is exactly the sum of ALL occupied color channels. -/
theorem observation_eq_channel_sum (S : Finset ι)
    (frequency : ι → ν) (color : ν → κ)
    (live : ι → τ → Prop) (a : ι → ℝ) (t : τ) :
    observation S live a t =
      ∑ r ∈ occupiedChannels S frequency color,
        channelObservation S frequency color live a t r := by
  exact (sum_channelAmplitude S frequency color
    (fun i => if live i t then a i else 0)).symm

/-- Sum of squares of each color's WHOLE signed stage amplitude. -/
def channelEnergy (S : Finset ι) (times : Finset τ)
    (frequency : ι → ν) (color : ν → κ)
    (live : ι → τ → Prop) (a : ι → ℝ) (w : τ → ℝ) : ℝ :=
  ∑ t ∈ times, w t *
    (∑ r ∈ occupiedChannels S frequency color,
      channelObservation S frequency color live a t r ^ 2)

/-- Both orientations of the cross-color Gram remain in this signed term. -/
def crossChannelEnergy (S : Finset ι) (times : Finset τ)
    (frequency : ι → ν) (color : ν → κ)
    (live : ι → τ → Prop) (a : ι → ℝ) (w : τ → ℝ) : ℝ :=
  ∑ t ∈ times, w t *
    (∑ r ∈ occupiedChannels S frequency color,
      ∑ s ∈ occupiedChannels S frequency color,
        if r ≠ s then
          channelObservation S frequency color live a t r *
            channelObservation S frequency color live a t s else 0)

/-- The complete deterministic energy is diagonal-colored energy PLUS
all signed cross-channel terms, not a sum of independent variances. -/
theorem weightedEnergy_eq_channel_add_cross (S : Finset ι)
    (times : Finset τ) (frequency : ι → ν) (color : ν → κ)
    (live : ι → τ → Prop) (a : ι → ℝ) (w : τ → ℝ) :
    weightedEnergy S times live a w =
      channelEnergy S times frequency color live a w +
        crossChannelEnergy S times frequency color live a w := by
  unfold weightedEnergy channelEnergy crossChannelEnergy
  calc
    (∑ t ∈ times, w t * observation S live a t ^ 2) =
        ∑ t ∈ times, w t *
          ((∑ r ∈ occupiedChannels S frequency color,
            channelObservation S frequency color live a t r ^ 2) +
            ∑ r ∈ occupiedChannels S frequency color,
              ∑ s ∈ occupiedChannels S frequency color,
                if r ≠ s then
                  channelObservation S frequency color live a t r *
                    channelObservation S frequency color live a t s else 0) := by
      apply Finset.sum_congr rfl
      intro t ht
      rw [observation_eq_channel_sum]
      rw [square_channel_sum]
    _ = _ := by simp only [mul_add, Finset.sum_add_distrib]

/-- Pointwise Cauchy paid at each stage gives a true weighted comparison.
The time weights must be nonnegative; the number of channels is explicit. -/
theorem weightedEnergy_le_channel_card (S : Finset ι) (times : Finset τ)
    (frequency : ι → ν) (color : ν → κ)
    (live : ι → τ → Prop) (a : ι → ℝ) (w : τ → ℝ)
    (hw : ∀ t ∈ times, 0 ≤ w t) :
    weightedEnergy S times live a w ≤
      ((occupiedChannels S frequency color).card : ℝ) *
        channelEnergy S times frequency color live a w := by
  unfold weightedEnergy channelEnergy
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro t ht
  have h := source_square_le_channel_squares S frequency color
    (fun i => if live i t then a i else 0)
  have h' : observation S live a t ^ 2 ≤
      ((occupiedChannels S frequency color).card : ℝ) *
        ∑ r ∈ occupiedChannels S frequency color,
          channelObservation S frequency color live a t r ^ 2 := h
  calc
    w t * observation S live a t ^ 2 ≤
        w t * (((occupiedChannels S frequency color).card : ℝ) *
          ∑ r ∈ occupiedChannels S frequency color,
            channelObservation S frequency color live a t r ^ 2) :=
      mul_le_mul_of_nonneg_left h' (hw t ht)
    _ = ((occupiedChannels S frequency color).card : ℝ) *
          (w t * ∑ r ∈ occupiedChannels S frequency color,
            channelObservation S frequency color live a t r ^ 2) := by ring

/-- The finite outcome law is arbitrary: no probabilistic independence or
sign model is secretly imposed. The masses may be signed for the identity. -/
def choiceCorrelation (outcomes : Finset Ω) (mass : Ω → ℝ)
    (choice : Ω → κ → ℝ) (r s : κ) : ℝ :=
  ∑ ω ∈ outcomes, mass ω * (choice ω r * choice ω s)

/-- Finite joint-law average of the square AFTER summing signed channels. -/
def choiceMeanSquare (outcomes : Finset Ω) (mass : Ω → ℝ)
    (choice : Ω → κ → ℝ) (C : Finset κ) (b : κ → ℝ) : ℝ :=
  ∑ ω ∈ outcomes, mass ω *
    (∑ r ∈ C, choice ω r * b r) ^ 2

/-- Unconditional exact covariance expansion for any finite joint law.
The formula does not require independent choices or a fixed color count. -/
theorem choiceMeanSquare_eq_covariance (outcomes : Finset Ω)
    (mass : Ω → ℝ) (choice : Ω → κ → ℝ)
    (C : Finset κ) (b : κ → ℝ) :
    choiceMeanSquare outcomes mass choice C b =
      ∑ r ∈ C, ∑ s ∈ C,
        b r * b s * choiceCorrelation outcomes mass choice r s := by
  unfold choiceMeanSquare
  calc
    (∑ ω ∈ outcomes, mass ω * (∑ r ∈ C, choice ω r * b r) ^ 2) =
        ∑ ω ∈ outcomes, ∑ r ∈ C, ∑ s ∈ C,
          mass ω * ((choice ω r * b r) * (choice ω s * b s)) := by
      apply Finset.sum_congr rfl
      intro ω hω
      rw [pow_two, Finset.sum_mul_sum, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro r hr
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro s hs
      ring
    _ = ∑ r ∈ C, ∑ s ∈ C, ∑ ω ∈ outcomes,
          mass ω * ((choice ω r * b r) * (choice ω s * b s)) := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro r hr
      rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro r hr
      apply Finset.sum_congr rfl
      intro s hs
      unfold choiceCorrelation
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro ω hω
      ring

/-- Pairwise-orthogonal unit-second-moment choice laws produce the sum of
WHOLE color-bin squares. Intra-color signed terms do NOT disappear. -/
theorem choiceMeanSquare_eq_channelSquares_of_orthogonal
    (outcomes : Finset Ω) (mass : Ω → ℝ)
    (choice : Ω → κ → ℝ) (C : Finset κ) (b : κ → ℝ)
    (horth : ∀ r ∈ C, ∀ s ∈ C,
      choiceCorrelation outcomes mass choice r s =
        if r = s then 1 else 0) :
    choiceMeanSquare outcomes mass choice C b = ∑ r ∈ C, b r ^ 2 := by
  rw [choiceMeanSquare_eq_covariance]
  calc
    (∑ r ∈ C, ∑ s ∈ C,
        b r * b s * choiceCorrelation outcomes mass choice r s) =
        ∑ r ∈ C, ∑ s ∈ C,
          if r = s then b r ^ 2 else 0 := by
      apply Finset.sum_congr rfl
      intro r hr
      apply Finset.sum_congr rfl
      intro s hs
      rw [horth r hr s hs]
      by_cases h : r = s
      · subst s
        simp [pow_two]
      · simp [h]
    _ = _ := by simp

/-- For two independently selected fair signs, the four joint outcomes
really have zero cross-correlation. This is NOT a Liouville assertion. -/
theorem two_independent_fair_signs (x y : ℝ) :
    (x * y + x * (-y) + (-x) * y + (-x) * (-y)) / 4 = 0 := by
  ring

/-- Under orthogonal choices, the deterministic source square is bounded
by occupied-channel count times the RANDOMIZED channel mean square. Thus
color randomization alone does not establish any arithmetic saving. -/
theorem source_square_le_card_times_choiceMean (S : Finset ι)
    (frequency : ι → ν) (color : ν → κ) (a : ι → ℝ)
    (outcomes : Finset Ω) (mass : Ω → ℝ) (choice : Ω → κ → ℝ)
    (horth : ∀ r ∈ occupiedChannels S frequency color,
      ∀ s ∈ occupiedChannels S frequency color,
      choiceCorrelation outcomes mass choice r s =
        if r = s then 1 else 0) :
    (∑ i ∈ S, a i) ^ 2 ≤
      ((occupiedChannels S frequency color).card : ℝ) *
        choiceMeanSquare outcomes mass choice
          (occupiedChannels S frequency color)
          (channelAmplitude S frequency color a) := by
  rw [choiceMeanSquare_eq_channelSquares_of_orthogonal
    outcomes mass choice (occupiedChannels S frequency color)
    (channelAmplitude S frequency color a) horth]
  exact source_square_le_channel_squares S frequency color a


/-- Hostile two-channel source: the ORIGINAL signed sum can vanish exactly
while orthogonal random choice keeps both large channel squares. No geometry
or randomization law is sufficient to control actual or averaged arithmetic. -/
theorem opposite_channels_have_zero_source_but_nonzero_mean (x : ℝ) :
    (x + (-x)) ^ 2 = 0 ∧
      x ^ 2 + (-x) ^ 2 = 2 * x ^ 2 := by
  constructor <;> ring

end GRWTSK.ProbabilityAndMathematicalStatistics.FiniteWeightedChannelCovariance
