import GRWTSK.Analysis.Operator.HolomorphicSectionMeasureTransfer

/-!
# One fixed singleton-null measure with a dense family of analytic evaluation ports

A countable sum of positive weighted circle measures dominates each circle after
rescaling. The previous measure-transfer map puts every center evaluation on ONE
historical quotient. Circles, weights and measure are fixed independently of symbols.
This constructs a selected nonatomic model; it does not identify area measure or a
prescribed arithmetic measure, and no positive atom is present at the evaluation points.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicMultiplierCircleMixture

open Filter Topology MeasureTheory Metric Set
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming
open GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic
open GRWTSK.Analysis.Operator.HolomorphicMultiplierCircle
open GRWTSK.Analysis.Operator.HolomorphicSectionMeasureTransfer

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι}

/-- The measure is chosen once from geometric windows and weights, not from a symbol. -/
def circleMixture {X : Domain} (W : ℕ → CircleWindow X) (w : ℕ → ℝ≥0) :
    Measure X.carrier := Measure.sum (fun n => w n • (W n).measure)

theorem circleMixture_univ {X : Domain} (W : ℕ → CircleWindow X) (w : ℕ → ℝ≥0) :
    circleMixture W w univ = ∑' n, (w n : ℝ≥0∞) := by
  simp [circleMixture, Measure.sum_apply, Measure.smul_apply, CircleWindow.measure_univ]

/-- Countable mixing retains null singletons, including centers and overlapping circles. -/
theorem circleMixture_singleton {X : Domain} (W : ℕ → CircleWindow X)
    (w : ℕ → ℝ≥0) (x : X.carrier) : circleMixture W w {x} = 0 := by
  simp [circleMixture, Measure.sum_apply, Measure.smul_apply, CircleWindow.measure_singleton]

/-- The n-th summand supplies actual measure domination; positivity cannot be dropped. -/
def summandDomination (W : ℕ → CircleWindow D.X) (w : ℕ → ℝ≥0)
    (n : ℕ) (hn : 0 < w n) :
    MeasureDomination (D := D) (circleMixture W w) (W n).measure :=
  MeasureDomination.ofPositiveWeight (w n) hn
    (Measure.le_sum (fun k => w k • (W k).measure) n)

/-- Every center port now has the very same source measure and source quotient. -/
def mixturePointPort (W : ℕ → CircleWindow D.X) (w : ℕ → ℝ≥0)
    (hOpen : D.IsOpenCover) (hSum : (∑' n, (w n : ℝ≥0∞)) < ∞)
    (n : ℕ) (hn : 0 < w n) :
    PointEvaluationPort (MetricWeights.identity D) (circleMixture W w) hOpen
      (W n).centerPoint :=
  MeasureDomination.circlePointPort (W n) (summandDomination W w n hn) hOpen
    (by rwa [circleMixture_univ])

/-- Individual evaluation bounds may grow with n; no common bound is imposed. -/
theorem mixturePointPort_norm_le (W : ℕ → CircleWindow D.X) (w : ℕ → ℝ≥0)
    (hOpen : D.IsOpenCover) (hSum : (∑' n, (w n : ℝ≥0∞)) < ∞)
    (n : ℕ) (hn : 0 < w n) :
    ‖(mixturePointPort W w hOpen hSum n hn).functional‖ ≤
      Real.sqrt (((w n)⁻¹ : ℝ≥0) : ℝ) :=
  MeasureDomination.circlePointPort_norm_le (W n) (summandDomination W w n hn) hOpen
    (by rwa [circleMixture_univ])

/-- Norm equality follows from dense centers with constructed ports, not a dense-support label. -/
theorem circleMixture_norm_eq (W : ℕ → CircleWindow D.X) (w : ℕ → ℝ≥0)
    (hOpen : D.IsOpenCover) (hCenters : DenseRange (fun n => (W n).centerPoint))
    (hw : ∀ n, 0 < w n) (hSum : (∑' n, (w n : ℝ≥0∞)) < ∞)
    (f : BoundedSymbol D.X) :
    ‖completedRepresentation (MetricWeights.identity D) (circleMixture W w) hOpen f‖ = ‖f‖ := by
  let P : ∀ x : Set.range (fun n => (W n).centerPoint),
      PointEvaluationPort (MetricWeights.identity D) (circleMixture W w) hOpen x.1 := by
    rintro ⟨x, hx⟩
    obtain ⟨n, rfl⟩ := hx
    exact mixturePointPort W w hOpen hSum n (hw n)
  exact completedRepresentation_norm_eq _ _ hOpen _ hCenters P f

/-- The algebra homomorphism is unchanged; the constructed ports supply its isometry. -/
def mixtureRepresentation (W : ℕ → CircleWindow D.X) (w : ℕ → ℝ≥0)
    (hOpen : D.IsOpenCover) (hCenters : DenseRange (fun n => (W n).centerPoint))
    (hw : ∀ n, 0 < w n) (hSum : (∑' n, (w n : ℝ≥0∞)) < ∞) :
    BoundedSymbol D.X →ₗᵢ[ℂ]
      (SectionCompletion (MetricWeights.identity D) (circleMixture W w) hOpen →L[ℂ]
        SectionCompletion (MetricWeights.identity D) (circleMixture W w) hOpen) where
  toLinearMap := (completedAlgHom (MetricWeights.identity D) (circleMixture W w) hOpen).toLinearMap
  norm_map' := circleMixture_norm_eq W w hOpen hCenters hw hSum

@[simp] theorem mixtureRepresentation_apply (W : ℕ → CircleWindow D.X) (w : ℕ → ℝ≥0)
    (hOpen : D.IsOpenCover) (hCenters : DenseRange (fun n => (W n).centerPoint))
    (hw : ∀ n, 0 < w n) (hSum : (∑' n, (w n : ℝ≥0∞)) < ∞) (f : BoundedSymbol D.X) :
    mixtureRepresentation W w hOpen hCenters hw hSum f =
      completedRepresentation (MetricWeights.identity D) (circleMixture W w) hOpen f := rfl

theorem circleMixture_closed (W : ℕ → CircleWindow D.X) (w : ℕ → ℝ≥0)
    (hOpen : D.IsOpenCover) (hCenters : DenseRange (fun n => (W n).centerPoint))
    (hw : ∀ n, 0 < w n) (hSum : (∑' n, (w n : ℝ≥0∞)) < ∞) :
    IsClosed (Set.range (completedRepresentation (MetricWeights.identity D)
      (circleMixture W w) hOpen)) := by
  letI : CompleteSpace (BoundedSymbol D.X) := symbol_complete D.X (coveredDomain_isOpen D hOpen)
  exact (mixtureRepresentation W w hOpen hCenters hw hSum).isometry.isClosedEmbedding.isClosed_range

/-- Openness constructs a positive-radius contained window centered at this exact point. -/
theorem exists_centeredWindow (X : Domain) (hX : IsOpen X.carrier) (x : X.carrier) :
    ∃ W : CircleWindow X, W.centerPoint = x := by
  obtain ⟨r, hr, hball⟩ := Metric.mem_nhds_iff.mp (hX.mem_nhds x.2)
  let W : CircleWindow X :=
    { center := x.1
      radius := r / 2
      radius_pos := half_pos hr
      closedBall_subset := by
        intro z hz
        apply hball
        exact lt_of_le_of_lt hz (half_lt_self hr) }
  exact ⟨W, Subtype.ext rfl⟩

/-- Noncanonical choice of radius; it never depends on the eventual multiplier. -/
def centeredWindow (X : Domain) (hX : IsOpen X.carrier) (x : X.carrier) : CircleWindow X :=
  Classical.choose (exists_centeredWindow X hX x)

theorem centeredWindow_center (X : Domain) (hX : IsOpen X.carrier) (x : X.carrier) :
    (centeredWindow X hX x).centerPoint = x :=
  Classical.choose_spec (exists_centeredWindow X hX x)

def selectedWindows (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
    (hOpen : D.IsOpenCover) (n : ℕ) : CircleWindow D.X :=
  centeredWindow D.X (coveredDomain_isOpen D hOpen) (TopologicalSpace.denseSeq D.X.carrier n)

theorem selectedWindows_dense (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
    (hOpen : D.IsOpenCover) : DenseRange (fun n => (selectedWindows D hOpen n).centerPoint) := by
  have he : (fun n => (selectedWindows D hOpen n).centerPoint) =
      TopologicalSpace.denseSeq D.X.carrier :=
    funext (fun n => centeredWindow_center D.X (coveredDomain_isOpen D hOpen) _)
  rw [he]
  exact TopologicalSpace.denseRange_denseSeq D.X.carrier

/-- A single fixed nonatomic measure; like the earlier geometric weights its mass is two. -/
def selectedMeasure (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
    (hOpen : D.IsOpenCover) : Measure D.X.carrier :=
  circleMixture (selectedWindows D hOpen) geometricWeight

theorem selectedMeasure_univ (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
    (hOpen : D.IsOpenCover) : selectedMeasure D hOpen univ = 2 := by
  rw [selectedMeasure, circleMixture_univ, geometricWeight_sum]

theorem selectedMeasure_singleton (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
    (hOpen : D.IsOpenCover) (x : D.X.carrier) : selectedMeasure D hOpen {x} = 0 :=
  circleMixture_singleton _ _ x

theorem selectedMeasure_norm_eq (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
    (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) :
    ‖completedRepresentation (MetricWeights.identity D) (selectedMeasure D hOpen) hOpen f‖ = ‖f‖ :=
  circleMixture_norm_eq _ _ hOpen (selectedWindows_dense D hOpen) geometricWeight_pos
    (by rw [geometricWeight_sum]; norm_num) f

theorem selectedMeasure_closed (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
    (hOpen : D.IsOpenCover) :
    IsClosed (Set.range (completedRepresentation (MetricWeights.identity D)
      (selectedMeasure D hOpen) hOpen)) :=
  circleMixture_closed _ _ hOpen (selectedWindows_dense D hOpen) geometricWeight_pos
    (by rw [geometricWeight_sum]; norm_num)

/-- This existence theorem constructs a model, not a source-specific measure identification. -/
theorem exists_nonatomic_norming_measure (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
    (hOpen : D.IsOpenCover) :
    ∃ μ : Measure D.X.carrier, μ univ = 2 ∧ (∀ x : D.X.carrier, μ {x} = 0) ∧
      (∀ f : BoundedSymbol D.X,
        ‖completedRepresentation (MetricWeights.identity D) μ hOpen f‖ = ‖f‖) ∧
      IsClosed (Set.range (completedRepresentation (MetricWeights.identity D) μ hOpen)) :=
  ⟨selectedMeasure D hOpen, selectedMeasure_univ D hOpen, selectedMeasure_singleton D hOpen,
    selectedMeasure_norm_eq D hOpen, selectedMeasure_closed D hOpen⟩

/-- Analytic center evaluations in this model cannot be replaced by positive-atom certificates. -/
theorem no_positiveAtom (W : ℕ → CircleWindow D.X) (w : ℕ → ℝ≥0) (x : D.X.carrier) :
    ¬ Nonempty (PositiveAtom (D := D) (circleMixture W w) x) := by
  rintro ⟨A⟩
  have hp : ∀ᵐ y ∂circleMixture W w, y ≠ x := by
    apply ae_iff.mpr
    simpa only [not_not] using circleMixture_singleton W w x
  exact (A.ae_at hp) rfl

end
end GRWTSK.Analysis.Operator.HolomorphicMultiplierCircleMixture
