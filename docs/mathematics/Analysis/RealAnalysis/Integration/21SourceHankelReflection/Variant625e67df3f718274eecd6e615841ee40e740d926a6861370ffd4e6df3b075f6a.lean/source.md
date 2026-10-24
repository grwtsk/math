# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.21SourceHankelReflection.Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b64b12c796ba744dddee71eeb1c573d6203a9633` · SHA-256 `89b8e8fe594d5b1b2afe00ee55f2972d43131006553a85c24f7efd094b547871`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ForwardProfile.Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ForwardProfile.Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf","mathematical_subject":"Analysis.Integration","original_sha256":"9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/actual-vaughan-hankel-storage-prerequisite-assessment-20261007T061827Z/source-captures/21-SourceHankelReflection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
import FormalResearch.MathematicalTooling.Reflection.Polarization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
import Mathlib.MeasureTheory.Function.L2Space

/-!
# Actual source Hankel pairing and signed reflection polarization

Every profile uses the unchanged normalized pole-annihilated polynomial source.
Translation against the oppositely shifted profile yields the logarithm of the
product, rather than the logarithm of a ratio. Finite coefficients remain signed.
The difference of the two square sectors is an exact identity, not a bound.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ForwardProfile.Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceHankelReflection

open MeasureTheory Set Filter
open scoped BigOperators InnerProductSpace
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization

/-- The finite forward profile of the literal normalized source. -/
noncomputable def forwardProfile (A : ℝ) (s : Finset ℕ) (c : ℕ → ℝ) (x : ℝ) : ℝ :=
  ∑ m ∈ s, c m * normalizedTest explicitSecondDerivative A (x - Real.log (m : ℝ))

/-- The oppositely shifted profile, with its independent signed coefficients. -/
noncomputable def reflectedProfile (A : ℝ) (s : Finset ℕ) (c : ℕ → ℝ) (x : ℝ) : ℝ :=
  ∑ n ∈ s, c n * normalizedTest explicitSecondDerivative A (x + Real.log (n : ℝ))

/-- Both translated factors have a genuine integrable product. -/
theorem translated_reflected_product_integrable {A : ℝ} (hA : 0 < A) (m n : ℝ) :
    Integrable (fun x : ℝ ↦ normalizedTest explicitSecondDerivative A (x - Real.log m) *
      normalizedTest explicitSecondDerivative A (x + Real.log n)) := by
  convert (correlation_product_integrable A (Real.log m + Real.log n) hA).comp_add_right
    (Real.log n) using 1
  funext x
  rw [show x + Real.log n - (Real.log m + Real.log n) = x - Real.log m by ring]
  exact mul_comm _ _

/-- The actual translated-reflected coefficient is the source correlation at the product log. -/
theorem translated_reflected_pairing (A : ℝ) {m n : ℝ} (hm : 0 < m) (hn : 0 < n) :
    (∫ x : ℝ, normalizedTest explicitSecondDerivative A (x - Real.log m) *
      normalizedTest explicitSecondDerivative A (x + Real.log n)) =
      sourceCorrelation explicitSecondDerivative A (Real.log (m * n)) := by
  rw [Real.log_mul (ne_of_gt hm) (ne_of_gt hn)]
  unfold sourceCorrelation
  calc
    _ = ∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + Real.log n) *
        normalizedTest explicitSecondDerivative A (x + Real.log n -
          (Real.log m + Real.log n)) := by
      apply integral_congr_ae
      filter_upwards [] with x
      rw [show x + Real.log n - (Real.log m + Real.log n) = x - Real.log m by ring]
      exact mul_comm _ _
    _ = _ := integral_add_right_eq_self
      (fun x : ℝ ↦ normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x - (Real.log m + Real.log n)))
      (Real.log n)

/-- Finite forward profiles retain the actual global continuity. -/
theorem forwardProfile_continuous {A : ℝ} (hA : 0 < A) (s : Finset ℕ) (c : ℕ → ℝ) :
    Continuous (forwardProfile A s c) := by
  unfold forwardProfile
  exact continuous_finsetSum s (fun m _ ↦ continuous_const.mul
    ((normalizedTest_contDiff A hA).continuous.comp (continuous_id.sub continuous_const)))

/-- Finite reflected profiles retain the actual global continuity. -/
theorem reflectedProfile_continuous {A : ℝ} (hA : 0 < A) (s : Finset ℕ) (c : ℕ → ℝ) :
    Continuous (reflectedProfile A s c) := by
  unfold reflectedProfile
  exact continuous_finsetSum s (fun n _ ↦ continuous_const.mul
    ((normalizedTest_contDiff A hA).continuous.comp (continuous_id.add continuous_const)))

/-- A finite sum of actual source translates has compact support. -/
theorem forwardProfile_hasCompactSupport {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) : HasCompactSupport (forwardProfile A s c) := by
  unfold forwardProfile
  have hs := HasCompactSupport.finset_sum (s := s) (f := fun m x ↦
    c m * normalizedTest explicitSecondDerivative A (x - Real.log (m : ℝ))) (fun m _ ↦
      ((normalizedTest_hasCompactSupport A hA).comp_homeomorph
        (Homeomorph.subRight (Real.log (m : ℝ)))).mul_left)
  convert hs using 1 <;> try rfl
  ext x
  simp only [Finset.sum_apply]

/-- The opposite shifts also give a compactly supported finite profile. -/
theorem reflectedProfile_hasCompactSupport {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) : HasCompactSupport (reflectedProfile A s c) := by
  unfold reflectedProfile
  have hs := HasCompactSupport.finset_sum (s := s) (f := fun n x ↦
    c n * normalizedTest explicitSecondDerivative A (x + Real.log (n : ℝ))) (fun n _ ↦
      ((normalizedTest_hasCompactSupport A hA).comp_homeomorph
        (Homeomorph.addRight (Real.log (n : ℝ)))).mul_left)
  convert hs using 1 <;> try rfl
  ext x
  simp only [Finset.sum_apply]

/-- The finite signed interaction has no missing integrability premise. -/
theorem profile_product_integrable {A : ℝ} (hA : 0 < A)
    (s t : Finset ℕ) (c d : ℕ → ℝ) :
    Integrable (fun x ↦ forwardProfile A s c x * reflectedProfile A t d x) :=
  ((forwardProfile_continuous hA s c).mul (reflectedProfile_continuous hA t d))
    |>.integrable_of_hasCompactSupport (forwardProfile_hasCompactSupport hA s c).mul_right

/-- Expanding the actual finite signed interaction gives the exact Hankel kernel. -/
theorem finite_hankel_pairing {A : ℝ} (hA : 0 < A) (s t : Finset ℕ) (c d : ℕ → ℝ)
    (hs : ∀ m ∈ s, 0 < m) (ht : ∀ n ∈ t, 0 < n) :
    (∫ x : ℝ, forwardProfile A s c x * reflectedProfile A t d x) =
      ∑ m ∈ s, ∑ n ∈ t, c m * d n *
        sourceCorrelation explicitSecondDerivative A (Real.log ((m : ℝ) * (n : ℝ))) := by
  calc
    _ = ∫ x : ℝ, ∑ m ∈ s, ∑ n ∈ t,
        (c m * normalizedTest explicitSecondDerivative A (x - Real.log (m : ℝ))) *
          (d n * normalizedTest explicitSecondDerivative A (x + Real.log (n : ℝ))) := by
      apply integral_congr_ae
      filter_upwards [] with x
      unfold forwardProfile reflectedProfile
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro m hm
      rw [Finset.mul_sum]
    _ = _ := by
      rw [integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro m hm
        rw [integral_finsetSum]
        · apply Finset.sum_congr rfl
          intro n hn
          have he : (fun x : ℝ ↦ (c m * normalizedTest explicitSecondDerivative A
              (x - Real.log (m : ℝ))) * (d n * normalizedTest explicitSecondDerivative A
                (x + Real.log (n : ℝ)))) =
              fun x ↦ (c m * d n) * (normalizedTest explicitSecondDerivative A
                (x - Real.log (m : ℝ)) * normalizedTest explicitSecondDerivative A
                  (x + Real.log (n : ℝ))) := by funext x; ring
          rw [he, integral_const_mul, translated_reflected_pairing A
            (by exact_mod_cast hs m hm) (by exact_mod_cast ht n hn)]
        · intro n hn
          convert (translated_reflected_product_integrable hA (m : ℝ) (n : ℝ)).const_mul
            (c m * d n) using 1
          funext x
          ring
      · intro m hm
        apply integrable_finsetSum t
        intro n hn
        convert (translated_reflected_product_integrable hA (m : ℝ) (n : ℝ)).const_mul
          (c m * d n) using 1 <;> try rfl
        funext x
        ring

/-- The two actual square sectors are integrable before any subtraction is made. -/
theorem profile_square_sectors_integrable {A : ℝ} (hA : 0 < A)
    (s t : Finset ℕ) (c d : ℕ → ℝ) :
    Integrable (fun x ↦ (forwardProfile A s c x + reflectedProfile A t d x) ^ 2) ∧
      Integrable (fun x ↦ (forwardProfile A s c x - reflectedProfile A t d x) ^ 2) := by
  have hf := forwardProfile_continuous hA s c
  have hg := reflectedProfile_continuous hA t d
  have hfs := forwardProfile_hasCompactSupport hA s c
  have hgs := reflectedProfile_hasCompactSupport hA t d
  constructor
  · exact ((hf.add hg).pow 2).integrable_of_hasCompactSupport
      (by simpa only [pow_two] using (hfs.add hgs).mul_right)
  · exact ((hf.sub hg).pow 2).integrable_of_hasCompactSupport
      (by simpa only [pow_two] using (hfs.sub hgs).mul_right)

/-- The exact signed interaction is the surplus of the two actual square sectors. -/
theorem signed_energy_surplus {A : ℝ} (hA : 0 < A)
    (s t : Finset ℕ) (c d : ℕ → ℝ) :
    (∫ x : ℝ, forwardProfile A s c x * reflectedProfile A t d x) =
      ((∫ x : ℝ, (forwardProfile A s c x + reflectedProfile A t d x) ^ 2) -
        (∫ x : ℝ, (forwardProfile A s c x - reflectedProfile A t d x) ^ 2)) / 4 := by
  obtain ⟨hp, hm⟩ := profile_square_sectors_integrable hA s t c d
  calc
    _ = ∫ x : ℝ, ((forwardProfile A s c x + reflectedProfile A t d x) ^ 2 -
        (forwardProfile A s c x - reflectedProfile A t d x) ^ 2) / 4 := by
      apply integral_congr_ae
      filter_upwards [] with x
      ring
    _ = _ := by rw [integral_div, integral_sub hp hm]

/-- Each actual forward profile defines a real `L²` vector. -/
theorem forwardProfile_memLp {A : ℝ} (hA : 0 < A) (s : Finset ℕ) (c : ℕ → ℝ) :
    MemLp (forwardProfile A s c) 2 volume := by
  apply (memLp_two_iff_integrable_sq
    (forwardProfile_continuous hA s c).aestronglyMeasurable).2
  exact ((forwardProfile_continuous hA s c).pow 2).integrable_of_hasCompactSupport
    (by simpa only [pow_two] using (forwardProfile_hasCompactSupport hA s c).mul_right)

/-- Each reflected profile defines a real `L²` vector, with signed coefficients unchanged. -/
theorem reflectedProfile_memLp {A : ℝ} (hA : 0 < A) (s : Finset ℕ) (c : ℕ → ℝ) :
    MemLp (reflectedProfile A s c) 2 volume := by
  apply (memLp_two_iff_integrable_sq
    (reflectedProfile_continuous hA s c).aestronglyMeasurable).2
  exact ((reflectedProfile_continuous hA s c).pow 2).integrable_of_hasCompactSupport
    (by simpa only [pow_two] using (reflectedProfile_hasCompactSupport hA s c).mul_right)

/-- The actual forward profile's equivalence class, without renormalizing its finite state. -/
noncomputable def forwardL2 (A : ℝ) (hA : 0 < A) (s : Finset ℕ) (c : ℕ → ℝ) :
    Lp ℝ 2 (volume : Measure ℝ) :=
  (forwardProfile_memLp hA s c).toLp (forwardProfile A s c)

/-- The reflected profile's literal real `L²` equivalence class. -/
noncomputable def reflectedL2 (A : ℝ) (hA : 0 < A) (s : Finset ℕ) (c : ℕ → ℝ) :
    Lp ℝ 2 (volume : Measure ℝ) :=
  (reflectedProfile_memLp hA s c).toLp (reflectedProfile A s c)

/-- The real `L²` inner product is the exact finite source pairing. -/
theorem l2_inner_eq_pairing {A : ℝ} (hA : 0 < A)
    (s t : Finset ℕ) (c d : ℕ → ℝ) :
    ⟪forwardL2 A hA s c, reflectedL2 A hA t d⟫_ℝ =
      ∫ x : ℝ, forwardProfile A s c x * reflectedProfile A t d x := by
  rw [L2.inner_def]
  apply integral_congr_ae
  filter_upwards [(forwardProfile_memLp hA s c).coeFn_toLp,
    (reflectedProfile_memLp hA t d).coeFn_toLp] with x hf hg
  change inner ℝ ((forwardProfile_memLp hA s c).toLp _ x)
    ((reflectedProfile_memLp hA t d).toLp _ x) = _
  rw [hf, hg, Real.inner_apply]

/-- The changing forward state's norm is its literal profile-square integral. -/
theorem forwardL2_norm_sq_eq_integral {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) :
    ‖forwardL2 A hA s c‖ ^ 2 = ∫ x : ℝ, (forwardProfile A s c x) ^ 2 := by
  rw [← real_inner_self_eq_norm_sq, L2.inner_def]
  apply integral_congr_ae
  filter_upwards [(forwardProfile_memLp hA s c).coeFn_toLp] with x hx
  change inner ℝ ((forwardProfile_memLp hA s c).toLp _ x)
    ((forwardProfile_memLp hA s c).toLp _ x) = _
  rw [hx, Real.inner_apply, pow_two]

/-- The reflected state's norm also retains its literal signed coefficient inventory. -/
theorem reflectedL2_norm_sq_eq_integral {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) :
    ‖reflectedL2 A hA s c‖ ^ 2 = ∫ x : ℝ, (reflectedProfile A s c x) ^ 2 := by
  rw [← real_inner_self_eq_norm_sq, L2.inner_def]
  apply integral_congr_ae
  filter_upwards [(reflectedProfile_memLp hA s c).coeFn_toLp] with x hx
  change inner ℝ ((reflectedProfile_memLp hA s c).toLp _ x)
    ((reflectedProfile_memLp hA s c).toLp _ x) = _
  rw [hx, Real.inner_apply, pow_two]

/-- Exact real `L²` polarization retains the two actual states and their signed surplus. -/
theorem signed_l2_energy_surplus {A : ℝ} (hA : 0 < A)
    (s t : Finset ℕ) (c d : ℕ → ℝ) :
    (∫ x : ℝ, forwardProfile A s c x * reflectedProfile A t d x) =
      (‖forwardL2 A hA s c + reflectedL2 A hA t d‖ ^ 2 -
        ‖forwardL2 A hA s c - reflectedL2 A hA t d‖ ^ 2) / 4 := by
  rw [← l2_inner_eq_pairing hA]
  exact FormalResearch.MathematicalTooling.Reflection.real_inner_eq_signed_norm_square _ _

/-- The unchanged normalized polynomial source is even, including its support seams. -/
theorem normalized_source_even {A : ℝ} (hA : 0 < A) (x : ℝ) :
    normalizedTest explicitSecondDerivative A (-x) =
      normalizedTest explicitSecondDerivative A x := by
  rw [normalizedTest_eq_indicator A hA]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by
    simp only [mem_Icc]
    constructor <;> rintro ⟨h1, h2⟩ <;> constructor <;> linarith
  simp only [indicator_apply, hm]
  split_ifs
  · simp only [normalizedInterior, secondInterior, bumpInterior, neg_div]
    ring
  · rfl

/-- The opposite-shift profile is the actual reflection of the forward profile. -/
theorem reflectedProfile_eq_forwardProfile_neg {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) (x : ℝ) :
    reflectedProfile A s c x = forwardProfile A s c (-x) := by
  unfold reflectedProfile forwardProfile
  apply Finset.sum_congr rfl
  intro n hn
  congr 1
  rw [show -x - Real.log (n : ℝ) = -(x + Real.log (n : ℝ)) by ring,
    normalized_source_even hA]

/-- An actual normalized source fixture has a negative signed pairing. -/
theorem singleton_pairing_negative {A : ℝ} (hA : 1 ≤ A) :
    (∫ x : ℝ, forwardProfile A {1} (fun _ ↦ 1) x *
      reflectedProfile A {1} (fun _ ↦ -1) x) = -1 := by
  simp only [forwardProfile, reflectedProfile, Finset.sum_singleton, Nat.cast_one,
    Real.log_one, sub_zero, add_zero, one_mul, neg_one_mul, mul_neg, ← pow_two]
  rw [integral_neg, normalized_square_integral A hA]

/-- Nonnegative actual `L²` square sectors can have a strictly negative signed surplus. -/
theorem actual_nonnegative_sectors_negative_surplus {A : ℝ} (hA : 1 ≤ A) :
    let hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
    let f := forwardL2 A hp {1} (fun _ ↦ 1)
    let g := reflectedL2 A hp {1} (fun _ ↦ -1)
    0 ≤ ‖f + g‖ ^ 2 ∧ 0 ≤ ‖f - g‖ ^ 2 ∧
      (‖f + g‖ ^ 2 - ‖f - g‖ ^ 2) / 4 < 0 := by
  dsimp only
  refine ⟨sq_nonneg _, sq_nonneg _, ?_⟩
  rw [← signed_l2_energy_surplus, singleton_pairing_negative hA]
  norm_num

end FormalResearch.RiemannHypothesis.SourceHankelReflection
```
