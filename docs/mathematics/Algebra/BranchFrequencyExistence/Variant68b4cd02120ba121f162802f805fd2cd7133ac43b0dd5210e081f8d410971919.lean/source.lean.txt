import FormalResearch.RiemannHypothesis.Conversation.BranchSequenceRealization
import Mathlib.Algebra.ContinuedFractions.Computation.ApproximationCorollaries
import Mathlib.Topology.Compactness.Compact
import Mathlib.Topology.Instances.Real.Lemmas

/-!
# Real realization of every infinite positive partial-quotient stream

The sequence-role extension previously required a real native-frequency
certificate as an explicit input. Here complete quotients are constructed
by compactness of a product of closed bounded real intervals. Every finite
prefix has a backward-built witness. The resulting infinite recurrence
identifies the exact native continued-fraction computation and proves
irrationality without assuming a frequency certificate.

This is an arithmetic adapter, not a spectral or CCC pickup identification.
Human mathematical direction: grwtsk contributors. Formalization: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.BranchFrequencyExistence

open Set Filter
open scoped Topology
open BranchSequenceRealization

/-- A finite backward complete quotient ends with a strict half-unit tail. -/
def finiteTail (a : ℕ → ℕ) : ℕ → ℕ → ℝ
  | 0, n => (a n : ℝ) + 1 / 2
  | depth + 1, n => (a n : ℝ) + (finiteTail a depth (n + 1))⁻¹

/-- Every finite complete quotient lies strictly between its digit and digit plus one. -/
theorem finiteTail_bounds (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) (depth n : ℕ) :
    (a n : ℝ) < finiteTail a depth n ∧ finiteTail a depth n < (a n : ℝ) + 1 := by
  induction depth generalizing n with
  | zero => simp only [finiteTail]; constructor <;> linarith
  | succ depth ih =>
    have h := ih (n + 1)
    have hdigit : (1 : ℝ) ≤ a (n + 1) := by exact_mod_cast Nat.succ_le_of_lt (ha (n + 1))
    have hgt : 1 < finiteTail a depth (n + 1) := lt_of_le_of_lt hdigit h.1
    have hp : 0 < finiteTail a depth (n + 1) := zero_lt_one.trans hgt
    have hi := inv_pos.mpr hp
    have hi1 := (inv_lt_one₀ hp).2 hgt
    simp only [finiteTail]
    constructor <;> linarith

/-- Simultaneously bound every coordinate, without selecting finite convergence lengths. -/
def tailBox (a : ℕ → ℕ) : Set (ℕ → ℝ) :=
  {x | ∀ n, x n ∈ Icc (a n : ℝ) ((a n : ℝ) + 1)}

/-- Closed equations retain the reciprocal relation without a division singularity. -/
def prefixSet (a : ℕ → ℕ) (length : ℕ) : Set (ℕ → ℝ) :=
  tailBox a ∩ {x | ∀ n, n < length → (x n - (a n : ℝ)) * x (n + 1) = 1}

/-- Coordinatewise bounded intervals form a compact infinite product. -/
theorem tailBox_compact (a : ℕ → ℕ) : IsCompact (tailBox a) :=
  isCompact_pi_infinite (fun _ ↦ isCompact_Icc)

/-- The box is closed in the real product topology. -/
theorem tailBox_closed (a : ℕ → ℕ) : IsClosed (tailBox a) :=
  (tailBox_compact a).isClosed

/-- Each finite prefix of polynomial recurrence constraints is closed. -/
theorem prefixSet_closed (a : ℕ → ℕ) (length : ℕ) : IsClosed (prefixSet a length) := by
  apply (tailBox_closed a).inter
  have he (n : ℕ) : IsClosed {x : ℕ → ℝ |
      (x n - (a n : ℝ)) * x (n + 1) = 1} :=
    isClosed_eq ((continuous_apply n).sub continuous_const |>.mul (continuous_apply (n + 1)))
      continuous_const
  have hc (n : ℕ) : IsClosed {x : ℕ → ℝ |
      n < length → (x n - (a n : ℝ)) * x (n + 1) = 1} := by
    by_cases hn : n < length
    · simpa only [hn, true_implies] using he n
    · simp [hn]
  simpa only [ofPred_forall] using isClosed_iInter hc

/-- Increasing the required prefix preserves all earlier constraints. -/
theorem prefixSet_succ_subset (a : ℕ → ℕ) (length : ℕ) :
    prefixSet a (length + 1) ⊆ prefixSet a length := by
  intro x hx
  exact ⟨hx.1, fun n hn ↦ hx.2 n (by omega)⟩

/-- A fixed finite endpoint defines a complete quotient at every coordinate. -/
def finiteWitness (a : ℕ → ℕ) (length n : ℕ) : ℝ := finiteTail a (length - n) n

/-- Every coordinate of a finite witness belongs to the compact box. -/
theorem finiteWitness_mem_box (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) (length : ℕ) :
    finiteWitness a length ∈ tailBox a := by
  intro n
  have h := finiteTail_bounds a ha (length - n) n
  exact ⟨h.1.le, h.2.le⟩

/-- Every coordinate strictly before the endpoint obeys the exact reciprocal recurrence. -/
theorem finiteWitness_recurrence (a : ℕ → ℕ) {length n : ℕ} (hn : n < length) :
    finiteWitness a length n = (a n : ℝ) + (finiteWitness a length (n + 1))⁻¹ := by
  unfold finiteWitness
  have h : length - n = length - (n + 1) + 1 := by omega
  rw [h, finiteTail]

/-- Finite witnesses solve every required prefix constraint. -/
theorem prefixSet_nonempty (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) (length : ℕ) :
    (prefixSet a length).Nonempty := by
  refine ⟨finiteWitness a length, finiteWitness_mem_box a ha length, ?_⟩
  intro n hn
  have hp : 0 < finiteWitness a length (n + 1) := by
    have h := finiteTail_bounds a ha (length - (n + 1)) (n + 1)
    have hd : (0 : ℝ) < a (n + 1) := by exact_mod_cast ha (n + 1)
    exact hd.trans h.1
  rw [finiteWitness_recurrence a hn]
  simp [ne_of_gt hp]

/-- The empty prefix is exactly the compact coordinate box. -/
theorem prefixSet_zero (a : ℕ → ℕ) : prefixSet a 0 = tailBox a := by
  ext x
  simp [prefixSet]

/-- Compactness supplies an infinite bounded complete-quotient solution. -/
theorem exists_complete_quotients (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) :
    ∃ x : ℕ → ℝ, x ∈ tailBox a ∧
      ∀ n, (x n - (a n : ℝ)) * x (n + 1) = 1 := by
  have h0 : IsCompact (prefixSet a 0) := by rw [prefixSet_zero]; exact tailBox_compact a
  obtain ⟨x, hx⟩ := IsCompact.nonempty_iInter_of_sequence_nonempty_isCompact_isClosed
    (prefixSet a) (prefixSet_succ_subset a) (prefixSet_nonempty a ha) h0 (prefixSet_closed a)
  refine ⟨x, (mem_iInter.mp hx 0).1, fun n ↦ ?_⟩
  exact (mem_iInter.mp hx (n + 1)).2 n (Nat.lt_succ_self n)

/-- Bounded positive quotients solve the nonsingular reciprocal recurrence. -/
theorem complete_quotient_recurrence (a : ℕ → ℕ) (ha : ∀ n, 0 < a n)
    {x : ℕ → ℝ} (hbox : x ∈ tailBox a)
    (hrec : ∀ n, (x n - (a n : ℝ)) * x (n + 1) = 1) (n : ℕ) :
    x n = (a n : ℝ) + (x (n + 1))⁻¹ := by
  have hp : 0 < x (n + 1) :=
    lt_of_lt_of_le (by exact_mod_cast ha (n + 1)) (hbox (n + 1)).1
  have hd := (eq_div_iff (ne_of_gt hp)).2 (hrec n)
  simp only [one_div] at hd
  linarith

/-- Infinite recurrence excludes both endpoints of every complete-quotient interval. -/
theorem complete_quotient_bounds (a : ℕ → ℕ) (ha : ∀ n, 0 < a n)
    {x : ℕ → ℝ} (hbox : x ∈ tailBox a)
    (hrec : ∀ n, (x n - (a n : ℝ)) * x (n + 1) = 1) (n : ℕ) :
    (a n : ℝ) < x n ∧ x n < (a n : ℝ) + 1 := by
  have hp (k : ℕ) : 0 < x k :=
    lt_of_lt_of_le (by exact_mod_cast ha k) (hbox k).1
  have hr := complete_quotient_recurrence a ha hbox hrec n
  have hl (k : ℕ) : (a k : ℝ) < x k := by
    have hk := complete_quotient_recurrence a ha hbox hrec k
    have hi := inv_pos.mpr (hp (k + 1))
    linarith
  have hd : (1 : ℝ) ≤ a (n + 1) := by exact_mod_cast Nat.succ_le_of_lt (ha (n + 1))
  have hi := (inv_lt_one₀ (hp (n + 1))).2 (hd.trans_lt (hl (n + 1)))
  exact ⟨hl n, by linarith⟩

/-- Native floor computation reads exactly the prescribed partial quotient. -/
theorem complete_quotient_floor (a : ℕ → ℕ) (ha : ∀ n, 0 < a n)
    {x : ℕ → ℝ} (hbox : x ∈ tailBox a)
    (hrec : ∀ n, (x n - (a n : ℝ)) * x (n + 1) = 1) (n : ℕ) :
    ⌊x n⌋ = (a n : ℤ) := by
  have h := complete_quotient_bounds a ha hbox hrec n
  apply Int.floor_eq_iff.2
  simpa only [Int.cast_natCast] using And.intro h.1.le h.2

/-- Native fractional parts are the reciprocals of the next complete quotient. -/
theorem complete_quotient_fract (a : ℕ → ℕ) (ha : ∀ n, 0 < a n)
    {x : ℕ → ℝ} (hbox : x ∈ tailBox a)
    (hrec : ∀ n, (x n - (a n : ℝ)) * x (n + 1) = 1) (n : ℕ) :
    Int.fract (x n) = (x (n + 1))⁻¹ := by
  rw [Int.fract, complete_quotient_floor a ha hbox hrec, Int.cast_natCast,
    complete_quotient_recurrence a ha hbox hrec n]
  ring

/-- The native integer/fraction pair of each complete quotient is exact. -/
theorem complete_quotient_pair (a : ℕ → ℕ) (ha : ∀ n, 0 < a n)
    {x : ℕ → ℝ} (hbox : x ∈ tailBox a)
    (hrec : ∀ n, (x n - (a n : ℝ)) * x (n + 1) = 1) (n : ℕ) :
    GenContFract.IntFractPair.of (x n) = ⟨(a n : ℤ), (x (n + 1))⁻¹⟩ := by
  simp only [GenContFract.IntFractPair.of, complete_quotient_floor a ha hbox hrec,
    complete_quotient_fract a ha hbox hrec]

/-- Native continued-fraction computation follows every complete quotient indefinitely. -/
theorem complete_quotient_stream (a : ℕ → ℕ) (ha : ∀ n, 0 < a n)
    {x : ℕ → ℝ} (hbox : x ∈ tailBox a)
    (hrec : ∀ n, (x n - (a n : ℝ)) * x (n + 1) = 1) (n : ℕ) :
    GenContFract.IntFractPair.stream (x 0) n =
      some ⟨(a n : ℤ), (x (n + 1))⁻¹⟩ := by
  induction n with
  | zero => rw [GenContFract.IntFractPair.stream_zero, complete_quotient_pair a ha hbox hrec]
  | succ n ih =>
    have hp : 0 < x (n + 1) :=
      lt_of_lt_of_le (by exact_mod_cast ha (n + 1)) (hbox (n + 1)).1
    rw [GenContFract.IntFractPair.stream_succ_of_some ih (inv_ne_zero (ne_of_gt hp))]
    simp only [inv_inv, complete_quotient_pair a ha hbox hrec]

/-- The reciprocal first quotient is a real frequency strictly between zero and one. -/
theorem reciprocal_frequency_bounds (a : ℕ → ℕ) (ha : ∀ n, 0 < a n)
    {x : ℕ → ℝ} (hbox : x ∈ tailBox a)
    (hrec : ∀ n, (x n - (a n : ℝ)) * x (n + 1) = 1) :
    0 < (x 0)⁻¹ ∧ (x 0)⁻¹ < 1 := by
  have hd : (1 : ℝ) ≤ a 0 := by exact_mod_cast Nat.succ_le_of_lt (ha 0)
  have hgt : 1 < x 0 := hd.trans_lt (complete_quotient_bounds a ha hbox hrec 0).1
  have hp : 0 < x 0 := zero_lt_one.trans hgt
  exact ⟨inv_pos.mpr hp, (inv_lt_one₀ hp).2 hgt⟩

/-- The compactness solution identifies every native partial numerator and denominator. -/
theorem reciprocal_frequency_realization (a : ℕ → ℕ) (ha : ∀ n, 0 < a n)
    {x : ℕ → ℝ} (hbox : x ∈ tailBox a)
    (hrec : ∀ n, (x n - (a n : ℝ)) * x (n + 1) = 1) :
    FrequencyRealization a (x 0)⁻¹ := by
  have hb := reciprocal_frequency_bounds a ha hbox hrec
  have hf : Int.fract (x 0)⁻¹ = (x 0)⁻¹ := Int.fract_eq_self.2 ⟨hb.1.le, hb.2⟩
  have hfloor : ⌊(x 0)⁻¹⌋ = (0 : ℤ) := Int.floor_eq_zero_iff.2 ⟨hb.1.le, hb.2⟩
  apply GenContFract.ext
  · simp only [GenContFract.of_h_eq_floor, hfloor, Int.cast_zero, continuedFraction]
  · apply Stream'.Seq.ext
    intro n
    have hs : GenContFract.IntFractPair.stream (x 0)⁻¹ (n + 1) =
        some ⟨(a n : ℤ), (x (n + 1))⁻¹⟩ := by
      rw [GenContFract.IntFractPair.stream_succ (by rw [hf]; exact ne_of_gt hb.1),
        hf, inv_inv]
      exact complete_quotient_stream a ha hbox hrec n
    have ht := GenContFract.get?_of_eq_some_of_succ_get?_intFractPair_stream hs
    simpa only [Int.cast_natCast, continuedFraction_term] using ht

/-- Every infinite positive partial-quotient stream has an actual irrational real realization. -/
theorem exists_frequency_realization (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) :
    ∃ alpha : ℝ, 0 < alpha ∧ alpha < 1 ∧ FrequencyRealization a alpha ∧ Irrational alpha := by
  obtain ⟨x, hbox, hrec⟩ := exists_complete_quotients a ha
  have hr := reciprocal_frequency_realization a ha hbox hrec
  have hb := reciprocal_frequency_bounds a ha hbox hrec
  exact ⟨(x 0)⁻¹, hb.1, hb.2, hr, frequency_irrational hr⟩

/-- A fixed native continued-fraction expansion has only one real realization. -/
theorem frequency_realization_unique {a : ℕ → ℕ} {alpha beta : ℝ}
    (ha : FrequencyRealization a alpha) (hb : FrequencyRealization a beta) : alpha = beta := by
  have hfirst := GenContFract.of_convergence alpha
  have hsecond := GenContFract.of_convergence beta
  rw [ha] at hfirst
  rw [hb] at hsecond
  exact tendsto_nhds_unique hfirst hsecond

/-- The unique real frequency chosen from the checked compactness realization. -/
def realizedFrequency (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) : ℝ :=
  Classical.choose (exists_frequency_realization a ha)

/-- The selected frequency is normalized to the open unit interval. -/
theorem realizedFrequency_bounds (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) :
    0 < realizedFrequency a ha ∧ realizedFrequency a ha < 1 := by
  have h := Classical.choose_spec (exists_frequency_realization a ha)
  exact ⟨h.1, h.2.1⟩

/-- The selected real frequency supplies the formerly required native certificate. -/
theorem realizedFrequency_realization (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) :
    FrequencyRealization a (realizedFrequency a ha) :=
  (Classical.choose_spec (exists_frequency_realization a ha)).2.2.1

/-- The selected frequency is irrational, without an assumed irrationality certificate. -/
theorem realizedFrequency_irrational (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) :
    Irrational (realizedFrequency a ha) :=
  frequency_irrational (realizedFrequency_realization a ha)

/-- Every other native realization equals the chosen one. -/
theorem realizedFrequency_eq {a : ℕ → ℕ} (ha : ∀ n, 0 < a n) {alpha : ℝ}
    (h : FrequencyRealization a alpha) : realizedFrequency a ha = alpha :=
  frequency_realization_unique (realizedFrequency_realization a ha) h

/-- Natural convergents converge to the actual selected real frequency. -/
theorem realizedFrequency_convergence (a : ℕ → ℕ) (ha : ∀ n, 0 < a n) :
    Tendsto (fun n ↦ (numerator a n : ℝ) / (denominator a n : ℝ))
      atTop (𝓝 (realizedFrequency a ha)) := by
  have h := GenContFract.of_convergence (realizedFrequency a ha)
  have he : (GenContFract.of (realizedFrequency a ha)).convs =
      fun n ↦ (numerator a n : ℝ) / (denominator a n : ℝ) :=
    funext (frequency_convergent (realizedFrequency_realization a ha))
  rw [he] at h
  exact h

/-- Arithmetic exponent read from the native real continued-fraction denominator continuants.
The floor is exact on every positive-stream realization; this is not a raw driver exponent. -/
def frequencyExponent (alpha : ℝ) : ENNReal :=
  arithmeticExponent (fun n ↦ ⌊(GenContFract.of alpha).dens n⌋₊)

/-- Native denominator continuants read back the exact natural denominator stream. -/
theorem native_denominator_readback {a : ℕ → ℕ} {alpha : ℝ}
    (h : FrequencyRealization a alpha) (n : ℕ) :
    ⌊(GenContFract.of alpha).dens n⌋₊ = denominator a n := by
  rw [h]
  change ⌊((continuedFraction a).conts n).b⌋₊ = _
  rw [native_continuants]
  simp

/-- A native real-frequency certificate identifies its complete extended arithmetic exponent. -/
theorem frequencyExponent_eq {a : ℕ → ℕ} {alpha : ℝ}
    (h : FrequencyRealization a alpha) :
    frequencyExponent alpha = arithmeticExponent (denominator a) := by
  unfold frequencyExponent
  congr 1
  funext n
  exact native_denominator_readback h n

/-- Arbitrary signed integer driver data produce a unique genuine irrational frequency. -/
theorem source_frequency_exists (b : ℕ → ℤ) :
    ∃ alpha : ℝ, 0 < alpha ∧ alpha < 1 ∧
      FrequencyRealization (partialQuotient b) alpha ∧ Irrational alpha :=
  exists_frequency_realization _ (partialQuotient_pos b)

/-- The all-ones frequency is actual irrational real data with arithmetic exponent zero. -/
theorem allOnes_frequency_exists :
    ∃ alpha : ℝ, Irrational alpha ∧ FrequencyRealization (fun _ ↦ 1) alpha ∧
      frequencyExponent alpha = 0 := by
  have ha : ∀ _ : ℕ, 0 < (1 : ℕ) := fun _ ↦ Nat.zero_lt_one
  refine ⟨realizedFrequency (fun _ ↦ 1) ha, realizedFrequency_irrational _ ha,
    realizedFrequency_realization _ ha, ?_⟩
  rw [frequencyExponent_eq (realizedFrequency_realization _ ha)]
  exact fibonacci_arithmeticExponent_zero

/-- Controlled exponential spikes realize the complete extended exponent on a real frequency. -/
theorem spike_frequency_exists (gamma : ℕ → ℝ) (hgamma : ∀ n, 0 ≤ gamma n) :
    ∃ alpha : ℝ, 0 < alpha ∧ alpha < 1 ∧ Irrational alpha ∧
      FrequencyRealization (spikePartialQuotient gamma) alpha ∧
      frequencyExponent alpha = limsup (fun n ↦ ENNReal.ofReal (gamma n)) atTop := by
  have ha : ∀ n, 0 < spikePartialQuotient gamma n :=
    fun n ↦ spikeCoefficient_pos (gamma n) _
  let alpha := realizedFrequency (spikePartialQuotient gamma) ha
  have hr : FrequencyRealization (spikePartialQuotient gamma) alpha :=
    realizedFrequency_realization _ ha
  have hb := realizedFrequency_bounds (spikePartialQuotient gamma) ha
  refine ⟨alpha, hb.1, hb.2, frequency_irrational hr, hr, ?_⟩
  rw [frequencyExponent_eq hr, ← spikeDenominator_identifies]
  exact spikeDenominator_exponent gamma hgamma

/-- Sparse spikes realize the effective-strength limsup, including an infinite value. -/
theorem selected_spike_frequency_exists (selected : ℕ → Bool) (gamma : ℕ → ℝ)
    (hgamma : ∀ n, 0 ≤ gamma n) :
    ∃ alpha : ℝ, 0 < alpha ∧ alpha < 1 ∧ Irrational alpha ∧
      FrequencyRealization (spikePartialQuotient (effectiveStrength selected gamma)) alpha ∧
      frequencyExponent alpha =
        limsup (fun n ↦ ENNReal.ofReal (effectiveStrength selected gamma n)) atTop :=
  spike_frequency_exists _ (effectiveStrength_nonneg selected gamma hgamma)

/-- Every prescribed nonnegative finite exponent occurs for an actual irrational frequency. -/
theorem prescribed_finite_exponent_exists (beta : ℝ) (hbeta : 0 ≤ beta) :
    ∃ alpha : ℝ, 0 < alpha ∧ alpha < 1 ∧ Irrational alpha ∧
      frequencyExponent alpha = ENNReal.ofReal beta := by
  obtain ⟨alpha, hp, hlt, hirr, _, he⟩ :=
    spike_frequency_exists (fun _ ↦ beta) (fun _ ↦ hbeta)
  exact ⟨alpha, hp, hlt, hirr, by simpa only [limsup_const] using he⟩

/-- Unbounded prescribed strengths realize the infinite arithmetic exponent. -/
theorem infinite_exponent_exists :
    ∃ alpha : ℝ, 0 < alpha ∧ alpha < 1 ∧ Irrational alpha ∧
      frequencyExponent alpha = ⊤ := by
  obtain ⟨alpha, hp, hlt, hirr, _, he⟩ :=
    spike_frequency_exists (fun n ↦ (n : ℝ)) (fun n ↦ Nat.cast_nonneg n)
  have ht : Tendsto (fun n : ℕ ↦ ENNReal.ofReal (n : ℝ)) atTop (𝓝 ⊤) :=
    ENNReal.tendsto_ofReal_atTop.comp tendsto_natCast_atTop_atTop
  exact ⟨alpha, hp, hlt, hirr, he.trans ht.limsup_eq⟩

end FormalResearch.RiemannHypothesis.BranchFrequencyExistence
