# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeightedSourceEnergy.Variant98175118356af27b64830d529fab0ef40302fee56d56f79f786df69570988cad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `000c12c3e6659e36877d97c9f6a932820ee538dc` · SHA-256 `98175118356af27b64830d529fab0ef40302fee56d56f79f786df69570988cad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.WeightedSourcePickup
import FormalResearch.RiemannHypothesis.Conversation.WeightedSourceMass
import FormalResearch.RiemannHypothesis.Conversation.NativeCoherentPricing

/-!
# Actual weighted Möbius source and signed Gram energy

Written continuation 2026-10-09: grwtsk contributors. Local finite-source
adapter: OpenAI Codex. The original prescribedSource, prescribedCorrelation,
and prescribedGram remain unchanged and retain their qualified identities.
The cross sum is ordered, signed, and excludes only the diagonal. The full
physical energy is paid; no coefficient metric replaces it.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.WeightedSourceEnergy
open WeightedSourcePickup WeightedSourceMass
open FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open MeasureTheory Set
open scoped BigOperators
noncomputable section

def coefficient (A t : ℝ) (n : ℕ) : ℝ := realMoebius n * pickupWeight A t n

def sourceVector (A t x : ℝ) : ℝ :=
  ∑ n ∈ integerInventory A, coefficient A t n * prescribedSource A (x - Real.log n)

def physicalEnergy (A t : ℝ) : ℝ := ∫ x : ℝ, sourceVector A t x ^ 2

def sourceNorm (A t : ℝ) : ℝ := Real.sqrt (physicalEnergy A t)

/-- Both orders of every off-diagonal pair are present. -/
def crossEnergy (A t : ℝ) : ℝ :=
  ∑ m ∈ integerInventory A, ∑ n ∈ integerInventory A,
    if m ≠ n then coefficient A t m * coefficient A t n * prescribedGram A m n else 0

theorem source_continuous {A : ℝ} (hA : 1 ≤ A) : Continuous (prescribedSource A) := by
  rw [prescribedSource_eq A hA]
  exact (CorrelationRegularity.normalizedTest_contDiff A (by linarith)).continuous

theorem sourceVector_continuous {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Continuous (sourceVector A t) := by
  unfold sourceVector
  apply continuous_finsetSum
  intro n _
  exact continuous_const.mul ((source_continuous hA).comp (continuous_id.sub continuous_const))

theorem inventory_log_bounds {A : ℝ} {n : ℕ} (hn : n ∈ integerInventory A) :
    0 ≤ Real.log n ∧ Real.log n ≤ 2 * A := by
  have h := Finset.mem_Icc.mp hn
  have hp : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hu : (n : ℝ) ≤ Real.exp (2 * A) :=
    (by exact_mod_cast h.2 : (n : ℝ) ≤ (integerCutoff A : ℝ)).trans
      (Nat.floor_le (Real.exp_pos _).le)
  exact ⟨Real.log_nonneg (by exact_mod_cast h.1), (Real.log_le_iff_le_exp hp).mpr hu⟩

theorem sourceVector_support {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Function.support (sourceVector A t) ⊆ Ioc (-A) (3 * A) := by
  intro x hx
  by_contra hnot
  have hz : sourceVector A t x = 0 := by
    unfold sourceVector
    apply Finset.sum_eq_zero
    intro n hn
    have hl := inventory_log_bounds hn
    have hxoutside : A ≤ |x - Real.log n| := by
      simp only [mem_Ioc, not_and_or, not_lt, not_le] at hnot
      rcases hnot with hlo | hhi
      · have hab := neg_le_abs (x - Real.log n)
        linarith
      · have hab := le_abs_self (x - Real.log n)
        linarith
    rw [prescribedSource_eq A hA,
      CorrelationRegularity.normalizedTest_zero_of_le_abs A _ (by linarith) hxoutside, mul_zero]
  exact hx hz

theorem sourceVector_compact {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    HasCompactSupport (sourceVector A t) := by
  refine exists_compact_iff_hasCompactSupport.mp ⟨Icc (-A) (3 * A), isCompact_Icc, ?_⟩
  intro x hx
  by_contra hn
  have hmem := sourceVector_support hA t hn
  exact hx ⟨hmem.1.le, hmem.2⟩

theorem physicalEnergy_nonneg (A t : ℝ) : 0 ≤ physicalEnergy A t :=
  integral_nonneg (fun _ ↦ sq_nonneg _)

theorem sourceVector_integrable {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Integrable (sourceVector A t) volume :=
  (sourceVector_continuous hA t).integrable_of_hasCompactSupport (sourceVector_compact hA t)

/-- The exact normalized mass is shared by every translation. -/
theorem sourceVector_mass {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (∫ x : ℝ, sourceVector A t x) =
      weightedRecording A t * (∫ x : ℝ, prescribedSource A x) := by
  have hi : Integrable (prescribedSource A) volume := by
    rw [prescribedSource_eq A hA]
    exact CorrelationRegularity.normalizedTest_integrable A (by linarith)
  unfold sourceVector weightedRecording coefficient
  rw [integral_finsetSum]
  · simp_rw [integral_const_mul, integral_sub_right_eq_self]
    rw [Finset.sum_mul]
  · intro n _
    exact (hi.comp_sub_right _).const_mul _

theorem weightedRecording_mass_decoder {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    weightedRecording A t =
      (∫ x : ℝ, sourceVector A t x) / (∫ x : ℝ, prescribedSource A x) := by
  rw [sourceVector_mass hA, mul_div_cancel_right₀ _ (prescribed_mass_ne_zero hA)]

theorem weightedRecording_uniform_decoder {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |weightedRecording A t| ≤ massDecoder * sourceNorm A t := by
  rw [weightedRecording_mass_decoder hA]
  exact mass_readout_bound hA _ (sourceVector_continuous hA t) (sourceVector_support hA t)

/-- Genuine translated products; no divergent default integral is used. -/
theorem translated_product_integrable {A : ℝ} (hA : 1 ≤ A) (m n : ℕ) :
    Integrable (fun x : ℝ ↦ prescribedSource A (x - Real.log m) *
      prescribedSource A (x - Real.log n)) volume := by
  rw [prescribedSource_eq A hA]
  have hi := CorrelationRegularity.correlation_product_integrable A
    (Real.log m - Real.log n) (by linarith)
  convert hi.comp_sub_right (Real.log n) using 1
  funext x
  rw [show x - Real.log n - (Real.log m - Real.log n) = x - Real.log m by ring]
  ring

theorem translated_product_gram {A : ℝ} (hA : 1 ≤ A) {m n : ℕ}
    (hm : 1 ≤ m) (hn : 1 ≤ n) :
    (∫ x : ℝ, prescribedSource A (x - Real.log m) *
      prescribedSource A (x - Real.log n)) = prescribedGram A m n := by
  have hmp : (m : ℝ) ≠ 0 := by exact_mod_cast (by omega : m ≠ 0)
  have hnp : (n : ℝ) ≠ 0 := by exact_mod_cast (by omega : n ≠ 0)
  unfold prescribedGram
  rw [prescribedCorrelation_eq A hA, Real.log_div hmp hnp, sourceCorrelation]
  rw [← integral_sub_right_eq_self
    (fun x : ℝ ↦ normalizedTest Realization.explicitSecondDerivative A x *
      normalizedTest Realization.explicitSecondDerivative A (x - (Real.log m - Real.log n)))
    (Real.log n)]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [prescribedSource_eq A hA,
    show x - Real.log n - (Real.log m - Real.log n) = x - Real.log m by ring]
  ring

theorem gram_diagonal {A : ℝ} (hA : 1 ≤ A) {n : ℕ} (hn : 1 ≤ n) :
    prescribedGram A n n = 1 := by
  have hnp : (n : ℝ) ≠ 0 := by exact_mod_cast (by omega : n ≠ 0)
  simp only [prescribedGram, div_self hnp, Real.log_one, prescribedCorrelation_eq A hA]
  exact NativeCoherentPricing.actual_correlation_anchor hA

theorem physicalEnergy_eq_full_gram {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    physicalEnergy A t = ∑ m ∈ integerInventory A, ∑ n ∈ integerInventory A,
      coefficient A t m * coefficient A t n * prescribedGram A m n := by
  have hi (m n : ℕ) : Integrable
      (fun x : ℝ ↦ (coefficient A t m * prescribedSource A (x - Real.log m)) *
        (coefficient A t n * prescribedSource A (x - Real.log n))) volume := by
    convert (translated_product_integrable hA m n).const_mul
      (coefficient A t m * coefficient A t n) using 1
    funext x
    ring
  unfold physicalEnergy sourceVector
  simp_rw [pow_two, Finset.sum_mul_sum]
  rw [integral_finsetSum]
  · apply Finset.sum_congr rfl
    intro m hm
    rw [integral_finsetSum]
    · apply Finset.sum_congr rfl
      intro n hn
      have heq : (fun x : ℝ ↦ (coefficient A t m * prescribedSource A (x - Real.log m)) *
          (coefficient A t n * prescribedSource A (x - Real.log n))) =
          fun x ↦ (coefficient A t m * coefficient A t n) *
            (prescribedSource A (x - Real.log m) * prescribedSource A (x - Real.log n)) := by
        funext x
        ring
      rw [heq, integral_const_mul, translated_product_gram hA
        (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hn).1]
    · intro n _
      exact hi m n
  · intro m _
    exact integrable_finsetSum _ (fun n _ ↦ hi m n)

/-- The diagonal is paid once; every remaining ordered term keeps its sign. -/
theorem physicalEnergy_eq_diagonal_add_cross {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    physicalEnergy A t = diagonalEnergy A t + crossEnergy A t := by
  rw [physicalEnergy_eq_full_gram hA]
  have hrow (m : ℕ) (hm : m ∈ integerInventory A) :
      (∑ n ∈ integerInventory A, coefficient A t m * coefficient A t n * prescribedGram A m n) =
      coefficient A t m ^ 2 +
        ∑ n ∈ integerInventory A,
          if m ≠ n then coefficient A t m * coefficient A t n * prescribedGram A m n else 0 := by
    calc
      _ = ∑ n ∈ integerInventory A,
          ((if n = m then coefficient A t m ^ 2 else 0) +
          (if m ≠ n then coefficient A t m * coefficient A t n * prescribedGram A m n else 0)) := by
        apply Finset.sum_congr rfl
        intro n _
        by_cases he : n = m
        · subst n
          simp [gram_diagonal hA (Finset.mem_Icc.mp hm).1, pow_two]
        · simp [he, Ne.symm he]
      _ = _ := by rw [Finset.sum_add_distrib]; simp [hm]
  rw [Finset.sum_congr rfl hrow, Finset.sum_add_distrib]
  congr 1
  unfold diagonalEnergy coefficient
  apply Finset.sum_congr rfl
  intro n _
  ring

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedSourceEnergy
```
