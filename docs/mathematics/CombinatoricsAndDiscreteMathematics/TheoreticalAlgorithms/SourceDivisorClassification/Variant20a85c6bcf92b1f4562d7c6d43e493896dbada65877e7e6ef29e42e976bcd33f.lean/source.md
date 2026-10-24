# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SourceDivisorClassification.Variant20a85c6bcf92b1f4562d7c6d43e493896dbada65877e7e6ef29e42e976bcd33f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84379cf16098f156e85859318c1fb7351abaaec2` · SHA-256 `59211c73eaee4e6c11056a14388d98aab9babeba9dcd08d0d0be9ce68a42c34a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CenteredBetaEqDivisorDiscrepancy.Variant48e6e91e44b4caa1fe7ee280fe34cb34026cd55b3f84d6882501c835e3e413b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48e6e91e44b4caa1fe7ee280fe34cb34026cd55b3f84d6882501c835e3e413b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CenteredBetaEqDivisorDiscrepancy.Variant48e6e91e44b4caa1fe7ee280fe34cb34026cd55b3f84d6882501c835e3e413b3","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"48e6e91e44b4caa1fe7ee280fe34cb34026cd55b3f84d6882501c835e3e413b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/resume-counterterm/comment-repair-v1/source/SourceDivisorClassification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceVaughanHankel
import Mathlib.Data.Finset.Powerset

/-!
# Literal finite divisor classification of the signed Vaughan source

The centered coefficient is expanded only on the long row, with its exceptional
index-one delta guarded explicitly. The quotient profiles retain both natural
floor endpoints, the inverse-square-root scaling and the actual normalized
source translation. Pattern refinement keeps all source translates and signed
coefficients; it does not average a fiber, construct a finite-rank projection,
or prove a uniform signed estimate.

This review retains the recorded unmerged Vaughan closure. No prerequisite is
silently promoted into the accepted root. The physical Hankel reconstruction
retains the centered deleted diagonal and its existing centering correction.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CenteredBetaEqDivisorDiscrepancy.Variant48e6e91e44b4caa1fe7ee280fe34cb34026cd55b3f84d6882501c835e3e413b3

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDivisorClassification
open MeasureTheory ArithmeticFunction SourceVaughanHankel SourceHankelReflection SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanIdentity EstimateVaughanSource EstimateSourceMobiusKernel
open EstimateBetaCentering
noncomputable section

/-- The centered long coefficient is the exact signed short-divisor discrepancy. -/
theorem centeredBeta_eq_divisor_discrepancy (U n : ℕ) (hU : 1 ≤ U) (hn : U < n) :
    centeredBeta U n = ∑ d ∈ Finset.Icc 1 U,
      (moebius d : ℝ) * (1 / (d : ℝ) - if d ∣ n then 1 else 0) := by
  classical
  have hn1 : 1 < n := by omega
  unfold centeredBeta
  rw [beta_eq_delta_sub_short, if_neg (by omega), zero_sub,
    short_divisor_sum_eq_indicator U n (by omega)]
  unfold alpha
  rw [← Finset.sum_neg_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  split_ifs <;> simp <;> ring

/-- The lower-cutoff hypothesis is material at the exceptional index one. -/
theorem zero_cutoff_discrepancy_fails :
    centeredBeta 0 1 ≠ ∑ d ∈ Finset.Icc 1 0,
      (moebius d : ℝ) * (1 / (d : ℝ) - if d ∣ 1 then 1 else 0) := by
  norm_num [centeredBeta, beta, alpha, Finset.sum_filter]

/-- Multiples in the original open-closed interval have exactly these quotient endpoints. -/
theorem sum_multiples_eq_quotient_interval (U N d : ℕ) (hd : 0 < d) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Ioc U N, if d ∣ n then f n else 0) =
      ∑ j ∈ Finset.Icc (U / d + 1) (N / d), f (d * j) := by
  classical
  rw [← Finset.sum_filter]
  symm
  refine Finset.sum_bij (fun j _ => d * j) ?_ ?_ ?_ ?_
  · intro j hj
    obtain ⟨hjU, hjN⟩ := Finset.mem_Icc.mp hj
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_Ioc.mpr ⟨?_, ?_⟩, dvd_mul_right d j⟩
    · have h := (Nat.div_lt_iff_lt_mul hd).mp (by omega : U / d < j)
      simpa only [Nat.mul_comm] using h
    · have h := (Nat.le_div_iff_mul_le hd).mp hjN
      simpa only [Nat.mul_comm] using h
  · intro i hi j hj he
    exact Nat.eq_of_mul_eq_mul_left hd he
  · intro n hn
    obtain ⟨hnI, hdn⟩ := Finset.mem_filter.mp hn
    obtain ⟨hnU, hnN⟩ := Finset.mem_Ioc.mp hnI
    refine ⟨n / d, ?_, Nat.mul_div_cancel' hdn⟩
    apply Finset.mem_Icc.mpr
    constructor
    · have he := Nat.mul_div_cancel' hdn
      have h : U / d < n / d := (Nat.div_lt_iff_lt_mul hd).mpr (by
        rw [Nat.mul_comm, he]
        exact hnU)
      omega
    · exact Nat.div_le_div_right hnN
  · intro j hj
    rfl

/-- The coefficient-one literal reflected long row. -/
def plainLongReflectedProfile (A : ℝ) (U N : ℕ) (x : ℝ) : ℝ :=
  reflectedProfile A (Finset.Ioc U N) (fun n => 1 / Real.sqrt (n : ℝ)) x

/-- A full signed divisor discrepancy profile; no averaging of its fiber occurs. -/
def divisorDiscrepancyProfile (A : ℝ) (U N d : ℕ) (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Ioc U N,
    (1 / (d : ℝ) - if d ∣ n then 1 else 0) / Real.sqrt (n : ℝ) *
      normalizedTest explicitSecondDerivative A (x + Real.log (n : ℝ))

/-- The exact quotient interval, before any estimate or continuous replacement. -/
def quotientReflectedBlock (A : ℝ) (U N d : ℕ) (x : ℝ) : ℝ :=
  reflectedProfile A (Finset.Icc (U / d + 1) (N / d))
    (fun j => 1 / Real.sqrt (j : ℝ)) (x + Real.log (d : ℝ))

/-- Centering expands the entire signed reflected row into short-divisor discrepancies. -/
theorem reflectedProfile_eq_divisor_discrepancy (A : ℝ) (U N : ℕ) (hU : 1 ≤ U)
    (x : ℝ) :
    reflectedProfile A (Finset.Ioc U N)
        (fun n => centeredBeta U n / Real.sqrt (n : ℝ)) x =
      ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * divisorDiscrepancyProfile A U N d x := by
  classical
  unfold reflectedProfile divisorDiscrepancyProfile
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n hn
  rw [centeredBeta_eq_divisor_discrepancy U n hU (Finset.mem_Ioc.mp hn).1,
    Finset.sum_div, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro d hd
  ring

/-- Reindexing a multiple retains the exact source translation and square-root scaling. -/
theorem multiple_source_term (A x : ℝ) {d j : ℕ} (hd : 0 < d) (hj : 0 < j) :
    (1 / Real.sqrt ((d * j : ℕ) : ℝ)) *
        normalizedTest explicitSecondDerivative A (x + Real.log ((d * j : ℕ) : ℝ)) =
      (1 / Real.sqrt (d : ℝ)) * ((1 / Real.sqrt (j : ℝ)) *
        normalizedTest explicitSecondDerivative A
          (x + Real.log (d : ℝ) + Real.log (j : ℝ))) := by
  have hdR : 0 < (d : ℝ) := by exact_mod_cast hd
  have hjR : 0 < (j : ℝ) := by exact_mod_cast hj
  rw [Nat.cast_mul, Real.log_mul hdR.ne' hjR.ne', Real.sqrt_mul hdR.le]
  rw [show x + Real.log (d : ℝ) + Real.log (j : ℝ) =
    x + (Real.log (d : ℝ) + Real.log (j : ℝ)) by ring]
  ring

/-- Each divisor profile has the exact original long baseline and quotient block. -/
theorem divisorDiscrepancyProfile_eq_quotient_block (A : ℝ) (U N d : ℕ)
    (hd : 0 < d) (x : ℝ) :
    divisorDiscrepancyProfile A U N d x =
      (1 / (d : ℝ)) * plainLongReflectedProfile A U N x -
        (1 / Real.sqrt (d : ℝ)) * quotientReflectedBlock A U N d x := by
  classical
  unfold divisorDiscrepancyProfile plainLongReflectedProfile quotientReflectedBlock
  unfold reflectedProfile
  have hs :
      (∑ n ∈ Finset.Ioc U N, if d ∣ n then
        (1 / Real.sqrt (n : ℝ)) *
          normalizedTest explicitSecondDerivative A (x + Real.log (n : ℝ)) else 0) =
      (1 / Real.sqrt (d : ℝ)) *
        ∑ j ∈ Finset.Icc (U / d + 1) (N / d), (1 / Real.sqrt (j : ℝ)) *
          normalizedTest explicitSecondDerivative A
            (x + Real.log (d : ℝ) + Real.log (j : ℝ)) := by
    rw [sum_multiples_eq_quotient_interval U N d hd, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    exact multiple_source_term A x hd ((Nat.succ_pos _).trans_le (Finset.mem_Icc.mp hj).1)
  rw [← hs, Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  split_ifs <;> ring

/-- The literal actual beta row has the full finite divisor reconstruction. -/
theorem centeredMobiusReflectedProfile_eq_divisor_discrepancy (A : ℝ) (hA : 1 ≤ A)
    (x : ℝ) :
    centeredMobiusReflectedProfile A x =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
        divisorDiscrepancyProfile A (vaughanCutoff A) (sourceKernelCutoff A) d x :=
  reflectedProfile_eq_divisor_discrepancy A (vaughanCutoff A) (sourceKernelCutoff A)
    (vaughanCutoff_pos A hA) x

/-- The actual reflected profile keeps floor(U/d)+1 through floor(N/d) exactly. -/
theorem centeredMobiusReflectedProfile_eq_quotient_blocks (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    centeredMobiusReflectedProfile A x =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
        ((1 / (d : ℝ)) * plainLongReflectedProfile A (vaughanCutoff A) (sourceKernelCutoff A) x -
          (1 / Real.sqrt (d : ℝ)) *
            quotientReflectedBlock A (vaughanCutoff A) (sourceKernelCutoff A) d x) := by
  rw [centeredMobiusReflectedProfile_eq_divisor_discrepancy A hA x]
  apply Finset.sum_congr rfl
  intro d hd
  rw [divisorDiscrepancyProfile_eq_quotient_block A _ _ d (by
    have := (Finset.mem_Icc.mp hd).1; omega)]

/-- Literal divisibility data on a finite divisor inventory. -/
def divisorPattern (S : Finset ℕ) (n : ℕ) : Finset ℕ := S.filter (fun d => d ∣ n)

/-- A pattern is always a member of the finite classification space. -/
theorem divisorPattern_mem_powerset (S : Finset ℕ) (n : ℕ) :
    divisorPattern S n ∈ S.powerset :=
  Finset.mem_powerset.mpr (Finset.filter_subset _ _)

/-- Forgetting the newly inspected divisors is restriction by intersection. -/
def restrictPattern (S p : Finset ℕ) : Finset ℕ := p ∩ S

/-- Restriction really maps into the finite coarse pattern space. -/
theorem restrictPattern_mem_powerset (S p : Finset ℕ) :
    restrictPattern S p ∈ S.powerset :=
  Finset.mem_powerset.mpr Finset.inter_subset_right

/-- Refinement is coherent with the literal divisor data. -/
theorem divisorPattern_restrict {S T : Finset ℕ} (hST : S ⊆ T) (n : ℕ) :
    restrictPattern S (divisorPattern T n) = divisorPattern S n := by
  classical
  ext d
  simp only [restrictPattern, divisorPattern, Finset.mem_inter, Finset.mem_filter]
  constructor
  · rintro ⟨⟨_, hd⟩, hdS⟩
    exact ⟨hdS, hd⟩
  · rintro ⟨hdS, hd⟩
    exact ⟨⟨hST hdS, hd⟩, hdS⟩

/-- Restriction maps compose exactly across nested classification inventories. -/
theorem restrictPattern_comp {R S : Finset ℕ} (hRS : R ⊆ S) (p : Finset ℕ) :
    restrictPattern R (restrictPattern S p) = restrictPattern R p := by
  classical
  ext d
  simp only [restrictPattern, Finset.mem_inter]
  constructor
  · rintro ⟨⟨hdp, _⟩, hdR⟩
    exact ⟨hdp, hdR⟩
  · rintro ⟨hdp, hdR⟩
    exact ⟨⟨hdp, hRS hdR⟩, hdR⟩

/-- Restriction is identity on patterns already within the requested inventory. -/
theorem restrictPattern_id {S p : Finset ℕ} (hp : p ⊆ S) : restrictPattern S p = p :=
  Finset.inter_eq_left.mpr hp

/-- A sector keeps every source translate and its original signed coefficient. -/
def patternSectorProfile (A : ℝ) (I S p : Finset ℕ) (c : ℕ → ℝ) (x : ℝ) : ℝ :=
  reflectedProfile A (I.filter (fun n => divisorPattern S n = p)) c x

/-- The finite classification reconstructs the entire source profile without averaging. -/
theorem reflectedProfile_eq_pattern_sectors (A : ℝ) (I S : Finset ℕ)
    (c : ℕ → ℝ) (x : ℝ) :
    reflectedProfile A I c x = ∑ p ∈ S.powerset, patternSectorProfile A I S p c x := by
  classical
  unfold reflectedProfile patternSectorProfile
  exact (Finset.sum_fiberwise_of_maps_to
    (fun n (_hn : n ∈ I) => divisorPattern_mem_powerset S n)
    (fun n => c n * normalizedTest explicitSecondDerivative A (x + Real.log (n : ℝ)))).symm

/-- The actual centered beta row is reconstructed with its full signed source fibers. -/
theorem centeredMobiusReflectedProfile_eq_pattern_sectors (A : ℝ) (S : Finset ℕ) (x : ℝ) :
    centeredMobiusReflectedProfile A x = ∑ p ∈ S.powerset,
      patternSectorProfile A (longInventory A) S p
        (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ)) x :=
  reflectedProfile_eq_pattern_sectors A (longInventory A) S
    (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ)) x

/-- The unequal-index signed covariance interaction of one short divisor. -/
def divisorCovarianceInteraction (A : ℝ) (d : ℕ) : ℝ :=
  ∑ m ∈ longInventory A,
    ∑ n ∈ (longInventory A).filter (fun n => n ≠ m),
      vonMangoldt m * (1 / (d : ℝ) - if d ∣ n then 1 else 0) *
        EstimatePlainKernel.sourcePlainWeight A ((m * n : ℕ) : ℝ)

/-- The actual centered covariance is the full signed short-divisor interaction sum. -/
theorem centeredCovariance_eq_divisor_interactions (A : ℝ) (hA : 1 ≤ A) :
    EstimateBetaSourceRecombination.centeredTypeTwoOffDiagonal A =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
        divisorCovarianceInteraction A d := by
  classical
  rw [centeredOffDiagonal_eq_unmasked_rectangle A hA]
  unfold divisorCovarianceInteraction
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n hn
  rw [centeredBeta_eq_divisor_discrepancy _ _ (vaughanCutoff_pos A hA)
    (Finset.mem_Ioc.mp (Finset.mem_filter.mp hn).1).1,
    Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro d hd
  ring

/-- The existing Vaughan operator retains exactly these signed interactions,
without absolute values. -/
theorem covarianceOperator_half_eq_divisor_interactions (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 =
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
        divisorCovarianceInteraction A d := by
  rw [VaughanOperatorReview.covarianceOperatorValue_eq_twice_centered,
    centeredCovariance_eq_divisor_interactions A hA]
  ring

/-- Every coarse sector is the exact sum of its finer sectors, retaining every translate. -/
theorem patternSectorProfile_eq_refined_sectors (A : ℝ) (I : Finset ℕ)
    {S T : Finset ℕ} (hST : S ⊆ T) (p : Finset ℕ) (c : ℕ → ℝ) (x : ℝ) :
    patternSectorProfile A I S p c x =
      ∑ q ∈ T.powerset.filter (fun q => restrictPattern S q = p),
        patternSectorProfile A I T q c x := by
  classical
  unfold patternSectorProfile reflectedProfile
  rw [Finset.sum_fiberwise_eq_sum_filter]
  apply Finset.sum_congr
  · ext n
    simp only [Finset.mem_filter, divisorPattern_mem_powerset, true_and,
      divisorPattern_restrict hST]
  · intro n hn
    rfl

/-- The exact centered coefficient associated to a finite short-divisor pattern. -/
def patternCoefficient (U : ℕ) (p : Finset ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U,
    (moebius d : ℝ) * (1 / (d : ℝ) - if d ∈ p then 1 else 0)

/-- The classifier determines beta's coefficient, but retains the distinct source translates. -/
theorem centeredBeta_eq_patternCoefficient (U n : ℕ) (hU : 1 ≤ U) (hn : U < n) :
    centeredBeta U n = patternCoefficient U (divisorPattern (Finset.Icc 1 U) n) := by
  classical
  rw [centeredBeta_eq_divisor_discrepancy U n hU hn]
  unfold patternCoefficient
  apply Finset.sum_congr rfl
  intro d hd
  simp only [divisorPattern, Finset.mem_filter, hd, true_and]

/-- Equal short-divisor patterns give equal centered coefficients on the literal long row. -/
theorem centeredBeta_eq_of_pattern_eq (U m n : ℕ) (hU : 1 ≤ U)
    (hm : U < m) (hn : U < n)
    (h : divisorPattern (Finset.Icc 1 U) m = divisorPattern (Finset.Icc 1 U) n) :
    centeredBeta U m = centeredBeta U n := by
  rw [centeredBeta_eq_patternCoefficient U m hU hm,
    centeredBeta_eq_patternCoefficient U n hU hn, h]

/-- The finite classifier does not replace a source fiber by its average or scalar moment. -/
theorem actual_pattern_sector_eq_coefficient_times_full_fiber (A : ℝ) (hA : 1 ≤ A)
    (p : Finset ℕ) (x : ℝ) :
    patternSectorProfile A (longInventory A) (Finset.Icc 1 (vaughanCutoff A)) p
        (fun n => centeredBeta (vaughanCutoff A) n / Real.sqrt (n : ℝ)) x =
      patternCoefficient (vaughanCutoff A) p *
        reflectedProfile A
          ((longInventory A).filter
            (fun n => divisorPattern (Finset.Icc 1 (vaughanCutoff A)) n = p))
          (fun n => 1 / Real.sqrt (n : ℝ)) x := by
  classical
  unfold patternSectorProfile reflectedProfile
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hnI, hnp⟩ := Finset.mem_filter.mp hn
  dsimp only
  rw [centeredBeta_eq_patternCoefficient _ _ (vaughanCutoff_pos A hA)
    (Finset.mem_Ioc.mp hnI).1, hnp]
  ring

/-- Each full divisor discrepancy is a genuine real L² source profile. -/
theorem divisorDiscrepancyProfile_memLp (A : ℝ) (hA : 0 < A) (U N d : ℕ) :
    MemLp (divisorDiscrepancyProfile A U N d) 2 (volume : Measure ℝ) :=
  reflectedProfile_memLp hA (Finset.Ioc U N)
    (fun n => (1 / (d : ℝ) - if d ∣ n then 1 else 0) / Real.sqrt (n : ℝ))

/-- Its literal interaction with the actual Mangoldt row is integrable. -/
theorem divisor_source_product_integrable (A : ℝ) (hA : 1 ≤ A) (d : ℕ) :
    Integrable (fun x => mangoldtForwardProfile A x *
      divisorDiscrepancyProfile A (vaughanCutoff A) (sourceKernelCutoff A) d x) :=
  profile_product_integrable (by linarith : 0 < A) (longInventory A)
    (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A))
    (fun m => vonMangoldt m / Real.sqrt (m : ℝ))
    (fun n => (1 / (d : ℝ) - if d ∣ n then 1 else 0) / Real.sqrt (n : ℝ))

/-- The full signed physical source interaction of a divisor, before diagonal deletion. -/
def divisorHankelPairing (A : ℝ) (d : ℕ) : ℝ :=
  ∫ x : ℝ, mangoldtForwardProfile A x *
    divisorDiscrepancyProfile A (vaughanCutoff A) (sourceKernelCutoff A) d x

/-- The actual Hankel pairing reconstructs from the full signed divisor interactions. -/
theorem sourceHankelPairing_eq_divisor_pairings (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A = ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      (moebius d : ℝ) * divisorHankelPairing A d := by
  classical
  unfold sourceHankelPairing divisorHankelPairing
  simp_rw [centeredMobiusReflectedProfile_eq_divisor_discrepancy A hA, Finset.mul_sum]
  rw [integral_finsetSum _ (fun d hd => by
    convert (divisor_source_product_integrable A hA d).const_mul (moebius d : ℝ) using 1
    ext x
    ring)]
  apply Finset.sum_congr rfl
  intro d hd
  rw [← integral_const_mul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun x => by ring)

/-- The physical divisor reconstruction retains the actual centered deleted diagonal. -/
theorem covarianceOperator_half_eq_divisor_pairings_sub_diagonal (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) * divisorHankelPairing A d) -
        centeredDeletedDiagonal A := by
  rw [covarianceOperator_half_eq_pairing_sub_diagonal A hA,
    sourceHankelPairing_eq_divisor_pairings A hA]

end
end FormalResearch.RiemannHypothesis.SourceDivisorClassification
```
