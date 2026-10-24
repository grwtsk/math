import GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaLocalUniform
import Mathlib.MeasureTheory.Integral.Lebesgue.Add
import Mathlib.MeasureTheory.Integral.Lebesgue.Countable

/-!
# Completeness of the original holomorphic area quotient

Fatou's lemma controls the energy of the SAME locally uniform holomorphic limit.
Applying it to differences retains the original Cauchy tail bounds and proves convergence
in the original area norm. Completeness is a theorem with explicit open-cover evidence,
not a replacement carrier or exported instance. The historical completion embedding then
becomes surjective, giving an exact linear isometric equivalence and an area-specific
holomorphic realization of completed vectors. No finite-total-area or detector premise
is needed. No assertion about arbitrary measures, nontrivial bundles, or ambient L2
surjectivity is made.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaComplete

open Filter Topology MeasureTheory Metric Set
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaLocalUniform
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierArea
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierComplete (coveredDomain_isOpen)
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierCircleMixture
  (centeredWindow centeredWindow_center)

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι}

/-- Not a new energy: realize the supplied scalar section using the historical construction. -/
def scalarEnergy (hOpen : D.IsOpenCover) (f : HolomorphicSection D.X) : ℝ≥0∞ :=
  energy (MetricWeights.identity D) (areaMeasure D.X) hOpen (scalarSection D hOpen f)

/-- The realized scalar function retains the original quotient energy exactly. -/
theorem scalarEnergy_realization (hOpen : D.IsOpenCover) (q : AreaQuotient hOpen) :
    scalarEnergy hOpen (realization hOpen q) =
      quotientEnergy (MetricWeights.identity D) (areaMeasure D.X) hOpen q := by
  refine Quotient.inductionOn q ?_
  intro s
  apply lintegral_congr
  intro x
  rfl

/-- Finiteness is already present in q; this is not a conversion of infinite energy. -/
theorem scalarEnergy_realization_norm (hOpen : D.IsOpenCover) (q : AreaQuotient hOpen) :
    scalarEnergy hOpen (realization hOpen q) = ENNReal.ofReal (‖q‖ ^ 2) := by
  rw [scalarEnergy_realization, ofReal_norm_sq_eq_energy]

/-- The holomorphic realization preserves the actual quotient difference. -/
theorem realization_sub (hOpen : D.IsOpenCover) (q r : AreaQuotient hOpen) :
    realization hOpen (q - r) = realization hOpen q - realization hOpen r := by
  apply Subtype.ext
  funext x
  let W := centeredWindow D.X (coveredDomain_isOpen D hOpen) x
  have h := (functional W hOpen).map_sub q r
  simpa only [functional_eq_realization, W, centeredWindow_center] using h

/-- Fatou is applied to measurable squared densities, with the exact measure unchanged. -/
theorem scalarEnergy_le_liminf (hOpen : D.IsOpenCover)
    (F : ℕ → HolomorphicSection D.X) (f : HolomorphicSection D.X)
    (hF : ∀ x : D.X.carrier,
      Tendsto (fun n => (F n : Section D.X) x) atTop (𝓝 ((f : Section D.X) x))) :
    scalarEnergy hOpen f ≤ liminf (fun n => scalarEnergy hOpen (F n)) atTop := by
  let g := fun n => density (MetricWeights.identity D) hOpen (scalarSection D hOpen (F n))
  have hg : ∀ n, Measurable (g n) := fun n => density_measurable _ _ _
  have ht (x : D.X.carrier) :
      Tendsto (fun n => g n x) atTop
        (𝓝 (density (MetricWeights.identity D) hOpen (scalarSection D hOpen f) x)) := by
    change Tendsto (fun n => ENNReal.ofReal (1 * Complex.normSq ((F n : Section D.X) x)))
      atTop (𝓝 (ENNReal.ofReal (1 * Complex.normSq ((f : Section D.X) x))))
    simpa only [one_mul, Complex.normSq_eq_norm_sq] using
      ENNReal.continuous_ofReal.continuousAt.tendsto.comp ((hF x).norm.pow 2)
  calc
    scalarEnergy hOpen f = ∫⁻ x, liminf (fun n => g n x) atTop ∂areaMeasure D.X := by
      apply lintegral_congr
      intro x
      exact (ht x).liminf_eq.symm
    _ ≤ _ := lintegral_liminf_le hg

/-- An eventual bound on a tail bounds its liminf; no finite-head bound is requested. -/
theorem scalarEnergy_le_of_eventually_le (hOpen : D.IsOpenCover)
    (F : ℕ → HolomorphicSection D.X) (f : HolomorphicSection D.X)
    (hF : ∀ x : D.X.carrier,
      Tendsto (fun n => (F n : Section D.X) x) atTop (𝓝 ((f : Section D.X) x)))
    (B : ℝ≥0∞) (hB : ∀ᶠ n in atTop, scalarEnergy hOpen (F n) ≤ B) :
    scalarEnergy hOpen f ≤ B := by
  apply (scalarEnergy_le_liminf hOpen F f hF).trans
  obtain ⟨N, hN⟩ := eventually_atTop.mp hB
  rw [liminf_eq_iSup_iInf_of_nat]
  apply iSup_le
  intro n
  exact iInf_le_of_le (max n N)
    (iInf_le_of_le (le_max_left n N) (hN (max n N) (le_max_right n N)))

/-- The preceding pointwise limit and holomorphic limit have the same exact values. -/
theorem realization_tendsto (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) (x : D.X.carrier) :
    Tendsto (fun n => (realization hOpen (F n) : Section D.X) x) atTop
      (𝓝 ((holomorphicLimit hOpen F hF : Section D.X) x)) := by
  have he (n : ℕ) : ambient hOpen (F n) x.1 =
      (realization hOpen (F n) : Section D.X) x := ambient_apply hOpen (F n) x.1 x.2
  simpa only [he] using pointwiseLimit_tendsto hOpen F hF x

/-- Cauchy boundedness is derived in the ORIGINAL normed quotient, not a completed space. -/
theorem cauchy_norm_bounded (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) : ∃ B > 0, ∀ n, ‖F n‖ ≤ B := by
  obtain ⟨R, hR, hb⟩ := cauchySeq_bdd hF
  refine ⟨R + ‖F 0‖, add_pos_of_pos_of_nonneg hR (norm_nonneg _), ?_⟩
  intro n
  calc
    ‖F n‖ = dist (F n) 0 := (dist_zero_right _).symm
    _ ≤ dist (F n) (F 0) + dist (F 0) 0 := dist_triangle _ _ _
    _ ≤ R + ‖F 0‖ := by simpa only [dist_zero_right] using add_le_add_right (hb n 0).le _

/-- Fatou supplies finite global energy for the SAME already constructed holomorphic limit. -/
theorem holomorphicLimit_finite (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) : scalarEnergy hOpen (holomorphicLimit hOpen F hF) < ∞ := by
  obtain ⟨B, hB, hb⟩ := cauchy_norm_bounded hOpen F hF
  have he := scalarEnergy_le_of_eventually_le hOpen
    (fun n => realization hOpen (F n)) (holomorphicLimit hOpen F hF)
    (realization_tendsto hOpen F hF) (ENNReal.ofReal (B ^ 2))
    (Eventually.of_forall (fun n => by
      rw [scalarEnergy_realization_norm]
      exact ENNReal.ofReal_le_ofReal
        ((sq_le_sq₀ (norm_nonneg _) hB.le).mpr (hb n))))
  exact he.trans_lt (by simp)

/-- The original finite-energy subtype receives its membership proof from Fatou. -/
def finiteLimit (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen) (hF : CauchySeq F) :
    FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen :=
  ⟨scalarSection D hOpen (holomorphicLimit hOpen F hF), holomorphicLimit_finite hOpen F hF⟩

def limitClass (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) : AreaQuotient hOpen :=
  classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen (finiteLimit hOpen F hF)

@[simp] theorem realization_limitClass (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) : realization hOpen (limitClass hOpen F hF) =
      holomorphicLimit hOpen F hF := by
  apply Subtype.ext
  funext x
  rfl

/-- Fatou on differences retains every eventual Cauchy tail bound, not just energy boundedness. -/
theorem distance_limit_le (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) (n : ℕ) (ε : ℝ) (hε : 0 ≤ ε)
    (hTail : ∀ᶠ m in atTop, dist (F n) (F m) ≤ ε) :
    dist (F n) (limitClass hOpen F hF) ≤ ε := by
  have hPoint (x : D.X.carrier) :
      Tendsto (fun m => ((realization hOpen (F n) - realization hOpen (F m) :
        HolomorphicSection D.X) : Section D.X) x) atTop
        (𝓝 (((realization hOpen (F n) - holomorphicLimit hOpen F hF :
          HolomorphicSection D.X) : Section D.X) x)) :=
    tendsto_const_nhds.sub (realization_tendsto hOpen F hF x)
  have hBound := scalarEnergy_le_of_eventually_le hOpen
    (fun m => realization hOpen (F n) - realization hOpen (F m))
    (realization hOpen (F n) - holomorphicLimit hOpen F hF) hPoint
    (ENNReal.ofReal (ε ^ 2)) (hTail.mono (fun m hm => by
      rw [← realization_sub, scalarEnergy_realization_norm]
      apply ENNReal.ofReal_le_ofReal
      exact (sq_le_sq₀ (norm_nonneg _) hε).mpr (by simpa only [dist_eq_norm] using hm)))
  have hEnergy : quotientEnergy (MetricWeights.identity D) (areaMeasure D.X) hOpen
      (F n - limitClass hOpen F hF) ≤ ENNReal.ofReal (ε ^ 2) := by
    rw [← scalarEnergy_realization, realization_sub, realization_limitClass]
    exact hBound
  have hReal := ENNReal.toReal_mono (by simp : ENNReal.ofReal (ε ^ 2) ≠ ∞) hEnergy
  rw [← norm_sq_eq_energy, ENNReal.toReal_ofReal (sq_nonneg ε)] at hReal
  simpa only [dist_eq_norm] using (sq_le_sq₀ (norm_nonneg _) hε).mp hReal

/-- The constructed class is the limit in the historical AREA NORM, not only locally uniformly. -/
theorem limitClass_tendsto (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) : Tendsto F atTop (𝓝 (limitClass hOpen F hF)) := by
  apply Metric.tendsto_atTop.mpr
  intro ε hε
  obtain ⟨N, hN⟩ := Metric.cauchySeq_iff.mp hF (ε / 2) (half_pos hε)
  refine ⟨N, ?_⟩
  intro n hn
  have hTail : ∀ᶠ m in atTop, dist (F n) (F m) ≤ ε / 2 :=
    eventually_atTop.mpr ⟨N, fun m hm => (hN n hn m hm).le⟩
  exact (distance_limit_le hOpen F hF n (ε / 2) (half_pos hε).le hTail).trans_lt
    (half_lt_self hε)

/-- Completeness is proved, and is installed only locally by later consumers. -/
theorem areaQuotient_complete (hOpen : D.IsOpenCover) : CompleteSpace (AreaQuotient hOpen) :=
  Metric.complete_of_cauchySeq_tendsto (fun F hF =>
    ⟨limitClass hOpen F hF, limitClass_tendsto hOpen F hF⟩)

theorem existsUnique_area_limit (hOpen : D.IsOpenCover) (F : ℕ → AreaQuotient hOpen)
    (hF : CauchySeq F) : ∃! q : AreaQuotient hOpen, Tendsto F atTop (𝓝 q) :=
  ⟨limitClass hOpen F hF, limitClass_tendsto hOpen F hF,
    fun _ hq => tendsto_nhds_unique hq (limitClass_tendsto hOpen F hF)⟩

/-- Density alone did not suffice: the newly proved source completeness closes the exact range. -/
theorem toCompletion_surjective (hOpen : D.IsOpenCover) :
    Function.Surjective (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen) := by
  letI : CompleteSpace (AreaQuotient hOpen) := areaQuotient_complete hOpen
  have hc := (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen).isometry.isClosedEmbedding.isClosed_range
  have hd := toCompletion_denseRange (MetricWeights.identity D) (areaMeasure D.X) hOpen
  apply Set.range_eq_univ.mp
  exact hc.closure_eq.symm.trans hd.closure_range

/-- The forward map is precisely the historical embedding, not a selected new isomorphism. -/
def areaCompletionEquiv (hOpen : D.IsOpenCover) :
    AreaQuotient hOpen ≃ₗᵢ[ℂ]
      SectionCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen :=
  LinearIsometryEquiv.ofSurjective
    (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen)
    (toCompletion_surjective hOpen)

@[simp] theorem areaCompletionEquiv_apply (hOpen : D.IsOpenCover) (q : AreaQuotient hOpen) :
    areaCompletionEquiv hOpen q =
      toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen q := rfl

@[simp] theorem areaCompletionEquiv_symm_toCompletion (hOpen : D.IsOpenCover)
    (q : AreaQuotient hOpen) :
    (areaCompletionEquiv hOpen).symm
      (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen q) = q :=
  (areaCompletionEquiv hOpen).symm_apply_apply q

@[simp] theorem toCompletion_areaCompletionEquiv_symm (hOpen : D.IsOpenCover)
    (v : SectionCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen) :
    toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen
      ((areaCompletionEquiv hOpen).symm v) = v :=
  (areaCompletionEquiv hOpen).apply_symm_apply v

/-- Area-specific realization of completed vectors, obtained only AFTER the global proof. -/
def completedRealization (hOpen : D.IsOpenCover)
    (v : SectionCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen) :
    HolomorphicSection D.X := realization hOpen ((areaCompletionEquiv hOpen).symm v)

@[simp] theorem completedRealization_toCompletion (hOpen : D.IsOpenCover)
    (q : AreaQuotient hOpen) :
    completedRealization hOpen (toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen q) =
      realization hOpen q := by
  change realization hOpen ((areaCompletionEquiv hOpen).symm (areaCompletionEquiv hOpen q)) = _
  rw [(areaCompletionEquiv hOpen).symm_apply_apply]

/-- On ALL completed vectors, energy now agrees with the realized holomorphic section's integral. -/
theorem completedRealization_energy (hOpen : D.IsOpenCover)
    (v : SectionCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen) :
    scalarEnergy hOpen (completedRealization hOpen v) =
      completionEnergy (MetricWeights.identity D) (areaMeasure D.X) hOpen v := by
  obtain ⟨q, rfl⟩ := toCompletion_surjective hOpen v
  rw [completedRealization_toCompletion, scalarEnergy_realization, completionEnergy_toCompletion]

theorem completedRealization_finite (hOpen : D.IsOpenCover)
    (v : SectionCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen) :
    scalarEnergy hOpen (completedRealization hOpen v) < ∞ := by
  rw [completedRealization_energy]
  exact completionEnergy_lt_top _ _ _ _

theorem completedRealization_injective (hOpen : D.IsOpenCover) :
    Function.Injective (completedRealization hOpen) :=
  (realization_injective hOpen).comp (areaCompletionEquiv hOpen).symm.injective

namespace Fixtures

/-- Constant input supplies its own Cauchy proof and recovers the exact original class. -/
theorem constant_limitClass (hOpen : D.IsOpenCover) (q : AreaQuotient hOpen) :
    limitClass hOpen (fun _ : ℕ => q)
      (GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaLocalUniform.Fixtures.constant_cauchy hOpen q) = q := by
  apply realization_injective hOpen
  rw [realization_limitClass,
    GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaLocalUniform.Fixtures.constant_limit]

/-- A measure-theoretic control only: it is NOT claimed to be a holomorphic area example. -/
def escapingPulse (n k : ℕ) : ℝ≥0∞ := if k = n then 1 else 0

theorem escapingPulse_integral (n : ℕ) :
    (∫⁻ k, escapingPulse n k ∂Measure.count) = 1 := by
  classical
  simp [escapingPulse, lintegral_count]

theorem escapingPulse_pointwise (k : ℕ) :
    Tendsto (fun n => escapingPulse n k) atTop (𝓝 0) := by
  have h : (fun n => escapingPulse n k) =ᶠ[atTop] (fun _ => 0) := by
    filter_upwards [eventually_gt_atTop k] with n hn
    simp [escapingPulse, ne_of_lt hn]
  exact (tendsto_congr' h).mpr tendsto_const_nhds

/-- Fatou is one-sided: bounded energy and pointwise convergence do not imply energy convergence. -/
theorem escapingPulse_strict_fatou :
    (∫⁻ _k : ℕ, (0 : ℝ≥0∞) ∂Measure.count) <
      liminf (fun n => ∫⁻ k, escapingPulse n k ∂Measure.count) atTop := by
  simp [escapingPulse_integral]

end Fixtures
end
end GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaComplete
