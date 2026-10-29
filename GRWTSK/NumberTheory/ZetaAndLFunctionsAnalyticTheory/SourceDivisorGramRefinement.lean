-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PatternImage.Variantfc6999289b0a600d4e1ddf19e3c6f5cc9ea9b775ba3fb4d7a235ffe6982ce18a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc6999289b0a600d4e1ddf19e3c6f5cc9ea9b775ba3fb4d7a235ffe6982ce18a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PatternImage.Variantfc6999289b0a600d4e1ddf19e3c6f5cc9ea9b775ba3fb4d7a235ffe6982ce18a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"fc6999289b0a600d4e1ddf19e3c6f5cc9ea9b775ba3fb4d7a235ffe6982ce18a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle5/mangoldt-ledger/overlay/SourceDivisorGramRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceDivisorCounterterms
import SourceWeightedOrbitAdapter

/-!
# Actual finite divisor disclosure in the signed source Gram geometry

Classification fixes the source and both literal long arithmetic axes. Its
comparison maps forget inspected divisors, and its fibers retain every translate
and every signed coefficient. The complete Gram and reflection forms keep all
mixed sectors. Arithmetic equality, rather than a channel or pattern label,
controls the deleted diagonal. The independent global and divisor counterterms
remain unchanged.

This review adapter retains the recorded thirteen unmerged Vaughan dependencies.
It asserts no coefficient independence, unitary refinement, cross-scale nesting,
positivity, norm budget, or uniform signed arithmetic estimate.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PatternImage.Variantfc6999289b0a600d4e1ddf19e3c6f5cc9ea9b775ba3fb4d7a235ffe6982ce18a

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceDivisorGramRefinement

open scoped BigOperators InnerProductSpace
open SourceReflectionDuality SourceArithmeticOrbit SourceOrbitCoordinates
open SourceDivisorClassification SourceWeightedOrbitAdapter SourceDivisorCounterterms
open SourceVaughanHankel SourceSamplingLedger SourceCompensatedReadout SourceReflectionArithmetic
open SourcePureRotationObstruction SourceHankelReflection
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateVaughanSource EstimateBetaCentering
open EstimateVaughanTranslationGate EstimateMertensAbel

/-- Only patterns actually attained by the retained arithmetic inventory are disclosed. -/
def patternImage (I S : Finset ℕ) : Finset (Finset ℕ) := I.image (divisorPattern S)

/-- A disclosed fiber keeps each underlying arithmetic index, without averaging. -/
def patternFiber (I S p : Finset ℕ) : Finset ℕ :=
  I.filter (fun n => divisorPattern S n = p)

/-- Every retained arithmetic index has an attained pattern. -/
theorem divisorPattern_mem_image {I : Finset ℕ} (S : Finset ℕ) {n : ℕ} (hn : n ∈ I) :
    divisorPattern S n ∈ patternImage I S := by
  classical
  exact Finset.mem_image.mpr ⟨n, hn, rfl⟩

/-- Fiber membership states both the original inventory and exact divisor data. -/
theorem mem_patternFiber (I S p : Finset ℕ) (n : ℕ) :
    n ∈ patternFiber I S p ↔ n ∈ I ∧ divisorPattern S n = p := by
  classical
  exact Finset.mem_filter

/-- Refinement forgets precisely the newly inspected divisors on the attained images. -/
theorem patternImage_restriction {S T : Finset ℕ} (hST : S ⊆ T) (I : Finset ℕ) :
    (patternImage I T).image (restrictPattern S) = patternImage I S := by
  classical
  ext p
  simp only [patternImage, Finset.mem_image]
  constructor
  · rintro ⟨q, ⟨n, hn, rfl⟩, rfl⟩
    exact ⟨n, hn, (divisorPattern_restrict hST n).symm⟩
  · rintro ⟨n, hn, rfl⟩
    exact ⟨divisorPattern T n, ⟨n, hn, rfl⟩, divisorPattern_restrict hST n⟩

/-- The actual comparison map is restriction on attained patterns, rather than a free rotation. -/
def patternComparison {I S T : Finset ℕ} (hST : S ⊆ T) :
    ↥(patternImage I T) → ↥(patternImage I S) :=
  fun p => ⟨restrictPattern S p, by
    classical
    rw [← patternImage_restriction hST I]
    exact Finset.mem_image.mpr ⟨p, p.property, rfl⟩⟩

/-- Its underlying pattern is the literal intersection with the coarse divisor inventory. -/
theorem patternComparison_val {I S T : Finset ℕ} (hST : S ⊆ T)
    (p : ↥(patternImage I T)) :
    (patternComparison hST p : Finset ℕ) = restrictPattern S p := rfl

/-- Every attained coarse pattern has an attained finer pattern above it. -/
theorem patternComparison_surjective {I S T : Finset ℕ} (hST : S ⊆ T) :
    Function.Surjective (patternComparison (I := I) hST) := by
  classical
  intro p
  obtain ⟨n, hn, he⟩ := Finset.mem_image.mp p.property
  refine ⟨⟨divisorPattern T n, divisorPattern_mem_image T hn⟩, ?_⟩
  apply Subtype.ext
  change restrictPattern S (divisorPattern T n) = (p : Finset ℕ)
  rw [divisorPattern_restrict hST, he]

/-- Literal disclosure comparisons compose in the fine-to-coarse direction. -/
theorem patternComparison_comp {I R S T : Finset ℕ} (hRS : R ⊆ S) (hST : S ⊆ T)
    (p : ↥(patternImage I T)) :
    patternComparison hRS (patternComparison hST p) =
      patternComparison (hRS.trans hST) p := by
  apply Subtype.ext
  exact restrictPattern_comp hRS p

/-- An identity disclosure comparison keeps every attained pattern. -/
theorem patternComparison_refl (I S : Finset ℕ) (p : ↥(patternImage I S)) :
    patternComparison (Finset.Subset.refl S) p = p := by
  apply Subtype.ext
  exact restrictPattern_id (Finset.mem_powerset.mp (by
    obtain ⟨n, _, he⟩ := Finset.mem_image.mp p.property
    rw [← he]
    exact divisorPattern_mem_powerset S n))

/-- A coarse arithmetic fiber is the full union of its actual finer fibers. -/
theorem patternFiber_refinement {S T : Finset ℕ} (hST : S ⊆ T)
    (I p : Finset ℕ) :
    patternFiber I S p =
      ((patternImage I T).filter (fun q => restrictPattern S q = p)).biUnion
        (patternFiber I T) := by
  classical
  ext n
  simp only [mem_patternFiber, Finset.mem_biUnion, Finset.mem_filter]
  constructor
  · rintro ⟨hn, hp⟩
    refine ⟨divisorPattern T n, ⟨divisorPattern_mem_image T hn, ?_⟩, hn, rfl⟩
    rw [divisorPattern_restrict hST, hp]
  · rintro ⟨q, ⟨_, hq⟩, hn, hnq⟩
    exact ⟨hn, by rw [← divisorPattern_restrict hST n, hnq, hq]⟩

/-- Distinct attained sectors have disjoint underlying arithmetic fibers. -/
theorem patternFiber_disjoint (I S p r : Finset ℕ) (hpr : p ≠ r) :
    Disjoint (patternFiber I S p) (patternFiber I S r) := by
  classical
  apply Finset.disjoint_left.mpr
  intro n hn hp
  exact hpr (((mem_patternFiber I S p n).mp hn).2.symm.trans
    (((mem_patternFiber I S r n).mp hp).2))

/-- Summing all attained fibers retains every original finite arithmetic occurrence exactly once. -/
theorem sum_patternFibers {V : Type*} [AddCommMonoid V] (I S : Finset ℕ) (f : ℕ → V) :
    (∑ p ∈ patternImage I S, ∑ n ∈ patternFiber I S p, f n) = ∑ n ∈ I, f n := by
  classical
  exact Finset.sum_fiberwise_of_maps_to (fun n hn => divisorPattern_mem_image S hn) f

/-- Disclosure restricts full four-channel coordinates by actual index data. -/
def sectorCoordinates (I S p : Finset ℕ) (c : OrbitIndex I → ℂ) : OrbitIndex I → ℂ :=
  fun i => if divisorPattern S (i.2.2 : ℕ) = p then c i else 0

/-- The complete attained classification reconstructs every signed channel coefficient. -/
theorem sum_sectorCoordinates (I S : Finset ℕ) (c : OrbitIndex I → ℂ) :
    (∑ p ∈ patternImage I S, sectorCoordinates I S p c) = c := by
  classical
  funext i
  have hi := divisorPattern_mem_image S i.2.2.property
  simp [sectorCoordinates, hi]

/-- Every coarse channel coordinate is the exact sum over its finer disclosure fiber. -/
theorem sectorCoordinates_refinement {S T : Finset ℕ} (hST : S ⊆ T)
    (I p : Finset ℕ) (c : OrbitIndex I → ℂ) :
    sectorCoordinates I S p c =
      ∑ q ∈ (patternImage I T).filter (fun q => restrictPattern S q = p),
        sectorCoordinates I T q c := by
  classical
  funext i
  have hi := divisorPattern_mem_image T i.2.2.property
  have hr := divisorPattern_restrict hST (i.2.2 : ℕ)
  simp [sectorCoordinates, hi, hr]

/-- A sector state uses the actual source synthesis and its existing dependency kernel. -/
def sectorState (q : ComplexL2) (I S p : Finset ℕ) (c : OrbitIndex I → ℂ) : ComplexL2 :=
  synthesis q I (sectorCoordinates I S p c)

/-- Disclosed states belong to the same actual fixed-source orbit. -/
theorem sectorState_mem (q : ComplexL2) (I S p : Finset ℕ) (c : OrbitIndex I → ℂ) :
    sectorState q I S p c ∈ finiteOrbit q I := synthesis_mem q I _

/-- Channel selection retains its coefficient on every disclosed arithmetic index. -/
theorem sectorCoordinates_embedChannel (I S p : Finset ℕ) (ε δ : Bool) (c : ℕ → ℂ) :
    sectorCoordinates I S p (embedChannel I ε δ c) =
      embedChannel I ε δ (fun n => if divisorPattern S n = p then c n else 0) := by
  classical
  funext i
  simp only [sectorCoordinates, embedChannel]
  split_ifs <;> rfl

/-- A sector remains the full weighted source fiber, rather than its pattern's mean. -/
theorem sectorState_embedChannel (q : ComplexL2) (I S p : Finset ℕ)
    (ε δ : Bool) (c : ℕ → ℂ) :
    sectorState q I S p (embedChannel I ε δ c) =
      finiteProfile q (patternFiber I S p) ε δ c := by
  classical
  unfold sectorState
  rw [sectorCoordinates_embedChannel, synthesis_embedChannel]
  simp [finiteProfile, patternFiber, Finset.sum_filter, ite_smul]

/-- Actual synthesis equals the sum of every attained sector state. -/
theorem synthesis_eq_sum_sectorStates (q : ComplexL2) (I S : Finset ℕ)
    (c : OrbitIndex I → ℂ) :
    synthesis q I c = ∑ p ∈ patternImage I S, sectorState q I S p c := by
  unfold sectorState
  rw [← map_sum, sum_sectorCoordinates]

/-- Refinement keeps each coarse synthesized state exactly, including all dependent channels. -/
theorem sectorState_refinement (q : ComplexL2) {S T : Finset ℕ} (hST : S ⊆ T)
    (I p : Finset ℕ) (c : OrbitIndex I → ℂ) :
    sectorState q I S p c =
      ∑ r ∈ (patternImage I T).filter (fun r => restrictPattern S r = p),
        sectorState q I T r c := by
  unfold sectorState
  rw [sectorCoordinates_refinement hST, map_sum]

/-- The literal Hermitian block retains the full ambient Gram form and signed coefficients. -/
def gramSectorBlock (q : ComplexL2) (I S p r : Finset ℕ)
    (c d : OrbitIndex I → ℂ) : ℂ :=
  ∑ i, ∑ j, star (sectorCoordinates I S p c i) * sectorCoordinates I S r d j *
    gramMatrix q I i j

/-- The reflection block keeps the signed interaction of its actual states. -/
def reflectedSectorBlock (q : ComplexL2) (I S p r : Finset ℕ)
    (c d : OrbitIndex I → ℂ) : ℂ :=
  ∑ i, ∑ j, star (sectorCoordinates I S p c i) * sectorCoordinates I S r d j *
    reflectedMatrix q I i j

/-- The Hermitian sector block is the actual L² inner product of its full states. -/
theorem gramSectorBlock_eq_inner (q : ComplexL2) (I S p r : Finset ℕ)
    (c d : OrbitIndex I → ℂ) :
    gramSectorBlock q I S p r c d = ⟪sectorState q I S p c, sectorState q I S r d⟫_ℂ :=
  (synthesis_inner q I _ _).symm

/-- The signed sector block is the actual reflected L² pairing of its full states. -/
theorem reflectedSectorBlock_eq_inner (q : ComplexL2) (I S p r : Finset ℕ)
    (c d : OrbitIndex I → ℂ) :
    reflectedSectorBlock q I S p r c d =
      ⟪sectorState q I S p c, reflection (sectorState q I S r d)⟫_ℂ :=
  (synthesis_reflected_inner q I _ _).symm

/-- The complete Gram readout reconstructs with every pair of sectors, including mixed blocks. -/
theorem synthesis_inner_eq_sector_blocks (q : ComplexL2) (I S : Finset ℕ)
    (c d : OrbitIndex I → ℂ) :
    ⟪synthesis q I c, synthesis q I d⟫_ℂ =
      ∑ p ∈ patternImage I S, ∑ r ∈ patternImage I S, gramSectorBlock q I S p r c d := by
  rw [synthesis_eq_sum_sectorStates q I S c, synthesis_eq_sum_sectorStates q I S d]
  simp only [sum_inner, inner_sum, ← gramSectorBlock_eq_inner]
  rw [Finset.sum_comm]

/-- The complete reflection readout also reconstructs with every mixed signed sector. -/
theorem synthesis_reflected_inner_eq_sector_blocks (q : ComplexL2) (I S : Finset ℕ)
    (c d : OrbitIndex I → ℂ) :
    ⟪synthesis q I c, reflection (synthesis q I d)⟫_ℂ =
      ∑ p ∈ patternImage I S, ∑ r ∈ patternImage I S,
        reflectedSectorBlock q I S p r c d := by
  rw [synthesis_eq_sum_sectorStates q I S c, synthesis_eq_sum_sectorStates q I S d]
  simp only [map_sum, sum_inner, inner_sum, ← reflectedSectorBlock_eq_inner]
  rw [Finset.sum_comm]

/-- Refining both block axes retains the complete Hermitian cross-fiber interaction. -/
theorem gramSectorBlock_refinement (q : ComplexL2) {S T : Finset ℕ} (hST : S ⊆ T)
    (I p r : Finset ℕ) (c d : OrbitIndex I → ℂ) :
    gramSectorBlock q I S p r c d =
      ∑ a ∈ (patternImage I T).filter (fun a => restrictPattern S a = p),
        ∑ b ∈ (patternImage I T).filter (fun b => restrictPattern S b = r),
          gramSectorBlock q I T a b c d := by
  rw [gramSectorBlock_eq_inner, sectorState_refinement q hST I p c,
    sectorState_refinement q hST I r d]
  simp only [sum_inner, inner_sum, ← gramSectorBlock_eq_inner]
  rw [Finset.sum_comm]

/-- The signed reflected refinement retains all fine-fiber interactions on both axes. -/
theorem reflectedSectorBlock_refinement (q : ComplexL2) {S T : Finset ℕ} (hST : S ⊆ T)
    (I p r : Finset ℕ) (c d : OrbitIndex I → ℂ) :
    reflectedSectorBlock q I S p r c d =
      ∑ a ∈ (patternImage I T).filter (fun a => restrictPattern S a = p),
        ∑ b ∈ (patternImage I T).filter (fun b => restrictPattern S b = r),
          reflectedSectorBlock q I T a b c d := by
  rw [reflectedSectorBlock_eq_inner, sectorState_refinement q hST I p c,
    sectorState_refinement q hST I r d]
  simp only [map_sum, sum_inner, inner_sum, ← reflectedSectorBlock_eq_inner]
  rw [Finset.sum_comm]


/-- The actual centered coefficient is determined by short-divisor data on the long row. -/
theorem actual_centeredCoefficient_eq_pattern (A : ℝ) (hA : 1 ≤ A) {n : ℕ}
    (hn : n ∈ longInventory A) :
    centeredCoefficient (vaughanCutoff A) n =
      ((patternCoefficient (vaughanCutoff A)
        (divisorPattern (Finset.Icc 1 (vaughanCutoff A)) n) /
          Real.sqrt (n : ℝ) : ℝ) : ℂ) := by
  unfold centeredCoefficient
  rw [centeredBeta_eq_patternCoefficient _ _ (vaughanCutoff_pos A hA)
    (Finset.mem_Ioc.mp hn).1]

/-- The actual Mangoldt state reconstructs from the complete signed disclosure sectors. -/
theorem actual_mangoldt_state_eq_sectors (A : ℝ) (hA : 1 ≤ A) (S : Finset ℕ) :
    mangoldtComplexL2 A hA =
      ∑ p ∈ patternImage (longInventory A) S,
        sectorState (originalSourceL2 A (by linarith)) (longInventory A) S p
          (mangoldtCoordinates (longInventory A)) := by
  rw [mangoldtComplexL2_eq_finiteProfile, ← synthesis_embedChannel]
  exact synthesis_eq_sum_sectorStates _ _ S _

/-- The original beta-plus-alpha state reconstructs without taking coefficient absolute values. -/
theorem actual_centered_state_eq_sectors (A : ℝ) (hA : 1 ≤ A) (S : Finset ℕ) :
    centeredMobiusComplexL2 A hA =
      ∑ p ∈ patternImage (longInventory A) S,
        sectorState (originalSourceL2 A (by linarith)) (longInventory A) S p
          (centeredCoordinates (vaughanCutoff A) (longInventory A)) := by
  rw [centeredMobiusComplexL2_eq_finiteProfile, ← synthesis_embedChannel]
  exact synthesis_eq_sum_sectorStates _ _ S _

/-- Each actual forward Mangoldt sector retains all weighted logarithmic source translates. -/
theorem actual_mangoldt_sector_eq_full_fiber (A : ℝ) (hA : 1 ≤ A) (S p : Finset ℕ) :
    sectorState (originalSourceL2 A (by linarith)) (longInventory A) S p
        (mangoldtCoordinates (longInventory A)) =
      finiteProfile (originalSourceL2 A (by linarith))
        (patternFiber (longInventory A) S p) false false mangoldtCoefficient :=
  sectorState_embedChannel _ _ _ _ _ _ _

/-- Each actual centered sector keeps its original coefficient and full source fiber. -/
theorem actual_centered_sector_eq_full_fiber (A : ℝ) (hA : 1 ≤ A) (S p : Finset ℕ) :
    sectorState (originalSourceL2 A (by linarith)) (longInventory A) S p
        (centeredCoordinates (vaughanCutoff A) (longInventory A)) =
      finiteProfile (originalSourceL2 A (by linarith))
        (patternFiber (longInventory A) S p) false false
        (centeredCoefficient (vaughanCutoff A)) :=
  sectorState_embedChannel _ _ _ _ _ _ _

/-- The actual reflected sector reverses the source shift and carries no extra minus sign. -/
theorem actual_reflected_sector_eq_full_fiber (A : ℝ) (hA : 1 ≤ A) (S p : Finset ℕ) :
    reflection (sectorState (originalSourceL2 A (by linarith)) (longInventory A) S p
        (centeredCoordinates (vaughanCutoff A) (longInventory A))) =
      finiteProfile (originalSourceL2 A (by linarith))
        (patternFiber (longInventory A) S p) true false
        (centeredCoefficient (vaughanCutoff A)) := by
  rw [actual_centered_sector_eq_full_fiber A hA S p,
    finiteProfile_reflection_original (originalSourceL2_even A (by linarith))]
  rfl

/-- Complete short-divisor disclosure determines beta while keeping inverse-root-weighted fibers. -/
theorem actual_centered_sector_eq_pattern_weighted_fiber (A : ℝ) (hA : 1 ≤ A)
    (p : Finset ℕ) :
    sectorState (originalSourceL2 A (by linarith)) (longInventory A)
        (Finset.Icc 1 (vaughanCutoff A)) p
        (centeredCoordinates (vaughanCutoff A) (longInventory A)) =
      (patternCoefficient (vaughanCutoff A) p : ℂ) •
        finiteProfile (originalSourceL2 A (by linarith))
          (patternFiber (longInventory A) (Finset.Icc 1 (vaughanCutoff A)) p)
          false false (fun n => ((1 / Real.sqrt (n : ℝ) : ℝ) : ℂ)) := by
  classical
  rw [actual_centered_sector_eq_full_fiber A hA (Finset.Icc 1 (vaughanCutoff A)) p]
  unfold finiteProfile
  rw [Finset.smul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hnI, hnp⟩ := (mem_patternFiber _ _ _ n).mp hn
  rw [actual_centeredCoefficient_eq_pattern A hA hnI, hnp, smul_smul]
  congr 1
  push_cast
  ring

/-- The full actual classified readout retains every mixed reflection block and compensation. -/
def classifiedReadout (A : ℝ) (hA : 1 ≤ A) (S : Finset ℕ) : ℝ :=
  (∑ p ∈ patternImage (longInventory A) S,
    ∑ r ∈ patternImage (longInventory A) S,
      reflectedSectorBlock (originalSourceL2 A (by linarith)) (longInventory A) S p r
        (mangoldtCoordinates (longInventory A))
        (centeredCoordinates (vaughanCutoff A) (longInventory A))).re -
    centeredDeletedDiagonal A - independentMainTerm A

/-- Complete classification is exactly the already defined actual signed operator readout. -/
theorem classifiedReadout_eq_arithmeticReadout (A : ℝ) (hA : 1 ≤ A) (S : Finset ℕ) :
    classifiedReadout A hA S = arithmeticReadout A hA := by
  unfold classifiedReadout
  rw [← synthesis_reflected_inner_eq_sector_blocks, synthesis_reflected_inner]
  exact (arithmeticReadout_eq_reflected_matrix A hA).symm

/-- The classified readout preserves the unchanged half-Vaughan main-subtracted target. -/
theorem classifiedReadout_eq_covariance (A : ℝ) (hA : 1 ≤ A) (S : Finset ℕ) :
    classifiedReadout A hA S = VaughanOperatorReview.covarianceOperatorValue A / 2 -
      independentMainTerm A := by
  rw [classifiedReadout_eq_arithmeticReadout]
  exact arithmeticReadout_eq_joint A hA

/-- Any complete disclosures of the same actual source have identical signed readouts. -/
theorem classifiedReadout_disclosure_invariant (A : ℝ) (hA : 1 ≤ A) (S T : Finset ℕ) :
    classifiedReadout A hA S = classifiedReadout A hA T := by
  rw [classifiedReadout_eq_arithmeticReadout, classifiedReadout_eq_arithmeticReadout]

/-- The readout retains the independent global baseline and all original divisor counterterms. -/
theorem classifiedReadout_eq_original_counterterms (A : ℝ) (hA : 1 ≤ A) (S : Finset ℕ) :
    classifiedReadout A hA S =
      (∑ p ∈ patternImage (longInventory A) S,
        ∑ r ∈ patternImage (longInventory A) S,
          reflectedSectorBlock (originalSourceL2 A (by linarith)) (longInventory A) S p r
            (mangoldtCoordinates (longInventory A))
            (centeredCoordinates (vaughanCutoff A) (longInventory A))).re -
        (typeTwoDiagonal A + alpha (vaughanCutoff A) * deletedDiagonalMean A) -
        (globalBaseline A + ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
          realMoebius d * divisorCounterterm A d) := by
  unfold classifiedReadout
  rw [centeredDeletedDiagonal_eq_old_diagonal_add_centering,
    independentMainTerm_eq_baseline_add_divisors]

/-- Classification reconstructs the full signed divisor remainder and its global baseline. -/
theorem classifiedReadout_eq_divisor_remainders (A : ℝ) (hA : 1 ≤ A) (S : Finset ℕ) :
    classifiedReadout A hA S = -globalBaseline A +
      ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d * divisorRemainder A d := by
  rw [classifiedReadout_eq_covariance, ← jointSignedRemainder_eq_covariance A hA,
    jointSignedRemainder_eq_divisor_remainders A hA]

/-- One actual sector-pair interaction deletes equality of arithmetic indices inside its fibers. -/
def offDiagonalSectorBlock (A : ℝ) (hA : 1 ≤ A) (S p r : Finset ℕ) : ℝ :=
  ∑ m ∈ patternFiber (longInventory A) S p,
    ∑ n ∈ patternFiber (longInventory A) S r,
      if m = n then 0 else weightedAtomInteraction A (by linarith) (vaughanCutoff A) m n

/-- Full sector disclosure keeps every actual unequal-index arithmetic interaction exactly once. -/
theorem sum_offDiagonalSectorBlocks (A : ℝ) (hA : 1 ≤ A) (S : Finset ℕ) :
    (∑ p ∈ patternImage (longInventory A) S,
      ∑ r ∈ patternImage (longInventory A) S, offDiagonalSectorBlock A hA S p r) =
      ∑ m ∈ longInventory A, ∑ n ∈ longInventory A,
        if m = n then 0 else weightedAtomInteraction A (by linarith) (vaughanCutoff A) m n := by
  classical
  unfold offDiagonalSectorBlock
  rw [show (∑ p ∈ patternImage (longInventory A) S,
      ∑ r ∈ patternImage (longInventory A) S,
        ∑ m ∈ patternFiber (longInventory A) S p,
          ∑ n ∈ patternFiber (longInventory A) S r,
            if m = n then 0 else
              weightedAtomInteraction A (by linarith) (vaughanCutoff A) m n) =
      ∑ p ∈ patternImage (longInventory A) S,
        ∑ m ∈ patternFiber (longInventory A) S p,
          ∑ r ∈ patternImage (longInventory A) S,
            ∑ n ∈ patternFiber (longInventory A) S r,
              if m = n then 0 else
                weightedAtomInteraction A (by linarith) (vaughanCutoff A) m n from by
    apply Finset.sum_congr rfl
    intro p _
    exact Finset.sum_comm]
  simp_rw [sum_patternFibers]

/-- The classified Gram readout retains the actual arithmetic deletion and independent main term. -/
theorem classifiedReadout_eq_offDiagonal_blocks (A : ℝ) (hA : 1 ≤ A) (S : Finset ℕ) :
    classifiedReadout A hA S =
      (∑ p ∈ patternImage (longInventory A) S,
        ∑ r ∈ patternImage (longInventory A) S, offDiagonalSectorBlock A hA S p r) -
        independentMainTerm A := by
  rw [classifiedReadout_eq_arithmeticReadout, sum_offDiagonalSectorBlocks]
  exact arithmeticReadout_eq_arithmetic_offDiagonal_atoms A hA

/-- Disclosure families preserve the exact eventual target, without constructing its witness. -/
theorem classifiedReadout_tail_iff_original_target (S : ℝ → Finset ℕ) :
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ (A : ℝ) (hA : 1 ≤ A),
      R ≤ A → classifiedReadout A hA (S A) ≤ D) ↔
      VaughanOperatorReview.JointMainTermTailUpperBound independentMainTerm := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hRA
    rw [← classifiedReadout_eq_covariance A (hR.trans hRA) (S A)]
    exact h A (hR.trans hRA) hRA
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hA hRA
    rw [classifiedReadout_eq_covariance]
    exact h A hRA

/-- Coarse pattern equality does not authorize deleting distinct arithmetic indices. -/
theorem same_pattern_distinct_arithmetic_indices :
    divisorPattern {1} 2 = divisorPattern {1} 3 ∧ (2 : ℕ) ≠ 3 := by
  constructor
  · ext d
    simp only [divisorPattern, Finset.mem_filter, Finset.mem_singleton]
    constructor <;> rintro ⟨rfl, _⟩ <;> simp
  · decide

end FormalResearch.RiemannHypothesis.SourceDivisorGramRefinement
