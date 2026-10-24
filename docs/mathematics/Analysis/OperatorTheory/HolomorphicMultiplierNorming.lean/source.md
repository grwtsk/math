# Complete source: GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aac63e791fc42f87e7ec9873699d57cd343389f6` · SHA-256 `ded0b9bb120278a678164f7674154f08b108b3435f8c8137ed73071740ca2733`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete

/-!
# Point-evaluation ports and exact norms of multiplier representations

An evaluation port is a nonzero bounded functional on the actual a.e. section quotient,
with its value fixed on every original finite-energy section. Its eigenfunctional law is
proved from multiplication, not assumed. A dense family gives a norming criterion and a
closed, isometric operator image. Dirac evaluation is constructed at its support point;
an off-support fixture rejects point evaluation manufactured from quotient representatives.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming

open Filter Topology MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology (constantSection coordinateSection section_continuous)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear
open GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded
open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete

universe u v
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι} {C : Cocycle D}

/-- A bounded, nonzero evaluation on the old quotient, not a chosen representative map. -/
structure PointEvaluationPort (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (x : D.X.carrier) where
  functional : SectionQuotient M μ hOpen →L[ℂ] ℂ
  on_class : ∀ s : FiniteEnergySection M μ hOpen,
    functional (classOf M μ hOpen s) = s.1.value x
  nonzero : functional ≠ 0

namespace PointEvaluationPort

variable {M : MetricWeights C} {μ : Measure D.X.carrier} {hOpen : D.IsOpenCover}
  {x : D.X.carrier}

/-- The exact representative equation derives the multiplier eigenfunctional identity. -/
theorem eigenfunctional (P : PointEvaluationPort M μ hOpen x) (f : BoundedSymbol D.X) :
    P.functional.comp (quotientRepresentation M μ hOpen f) = f.value x • P.functional := by
  ext q
  refine Quotient.inductionOn q ?_
  intro s
  change P.functional (classOf M μ hOpen (finiteMultiply f.toMultiplier M μ hOpen s)) =
    f.value x • P.functional (classOf M μ hOpen s)
  rw [P.on_class, P.on_class]
  rfl

/-- No uniform bound on evaluation norms is needed: each nonzero norm cancels separately. -/
theorem value_norm_le (P : PointEvaluationPort M μ hOpen x) (f : BoundedSymbol D.X) :
    ‖f.value x‖ ≤ ‖quotientRepresentation M μ hOpen f‖ := by
  have hb : ‖f.value x‖ * ‖P.functional‖ ≤
      ‖quotientRepresentation M μ hOpen f‖ * ‖P.functional‖ := by
    calc
      _ = ‖P.functional.comp (quotientRepresentation M μ hOpen f)‖ := by
        rw [P.eigenfunctional f, norm_smul]
      _ ≤ ‖P.functional‖ * ‖quotientRepresentation M μ hOpen f‖ :=
        P.functional.opNorm_comp_le _
      _ = _ := mul_comm _ _
  exact (mul_le_mul_right (norm_pos_iff.mpr P.nonzero)).mp hb

/-- The lower bound reaches the same completed representation via exact norm preservation. -/
theorem value_norm_le_completed (P : PointEvaluationPort M μ hOpen x)
    (f : BoundedSymbol D.X) : ‖f.value x‖ ≤ ‖completedRepresentation M μ hOpen f‖ := by
  change ‖f.value x‖ ≤ ‖completeMap M M μ hOpen (quotientRepresentation M μ hOpen f)‖
  rw [completeMap_norm]
  exact P.value_norm_le f

end PointEvaluationPort

/-- A dense set of actual bounded evaluations recovers the full supremum norm. -/
theorem completedRepresentation_norm_eq (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S)
    (P : ∀ x : S, PointEvaluationPort M μ hOpen x.1) (f : BoundedSymbol D.X) :
    ‖completedRepresentation M μ hOpen f‖ = ‖f‖ := by
  apply le_antisymm (completedRepresentation_norm_le M μ hOpen f)
  apply (norm_le_iff D.X f _ (norm_nonneg _)).mpr
  have hc : IsClosed {x : D.X.carrier |
      ‖f.value x‖ ≤ ‖completedRepresentation M μ hOpen f‖} :=
    isClosed_le (section_continuous D.X f.1).norm continuous_const
  have hs : S ⊆ {x : D.X.carrier |
      ‖f.value x‖ ≤ ‖completedRepresentation M μ hOpen f‖} :=
    fun x hx => (P ⟨x, hx⟩).value_norm_le_completed f
  intro x
  exact closure_minimal hs hc (hS x)

/-- The original quotient operator has the same optimal norm. -/
theorem quotientRepresentation_norm_eq (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S)
    (P : ∀ x : S, PointEvaluationPort M μ hOpen x.1) (f : BoundedSymbol D.X) :
    ‖quotientRepresentation M μ hOpen f‖ = ‖f‖ := by
  calc
    _ = ‖completedRepresentation M μ hOpen f‖ :=
      (completeMap_norm M M μ hOpen (quotientRepresentation M μ hOpen f)).symm
    _ = _ := completedRepresentation_norm_eq M μ hOpen S hS P f

/-- Bundle the old algebra map, with norm preservation derived from the evaluation ports. -/
def representationLinearIsometry (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S)
    (P : ∀ x : S, PointEvaluationPort M μ hOpen x.1) :
    BoundedSymbol D.X →ₗᵢ[ℂ]
      (SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen) where
  toLinearMap := (completedAlgHom M μ hOpen).toLinearMap
  norm_map' := completedRepresentation_norm_eq M μ hOpen S hS P

@[simp] theorem representationLinearIsometry_apply (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S)
    (P : ∀ x : S, PointEvaluationPort M μ hOpen x.1) (f : BoundedSymbol D.X) :
    representationLinearIsometry M μ hOpen S hS P f =
      completedRepresentation M μ hOpen f := rfl

@[simp] theorem representationLinearIsometry_toLinearMap (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S)
    (P : ∀ x : S, PointEvaluationPort M μ hOpen x.1) :
    (representationLinearIsometry M μ hOpen S hS P).toLinearMap =
      (completedAlgHom M μ hOpen).toLinearMap := rfl

/-- This is closedness of the operator image, not just the earlier function image. -/
theorem represented_range_isClosed (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S)
    (P : ∀ x : S, PointEvaluationPort M μ hOpen x.1) :
    IsClosed (Set.range (completedRepresentation M μ hOpen)) := by
  letI : CompleteSpace (BoundedSymbol D.X) :=
    symbol_complete D.X (coveredDomain_isOpen D hOpen)
  exact (representationLinearIsometry M μ hOpen S hS P).isometry.isClosedEmbedding.isClosed_range

/-- Under norming ports, operator-norm limits lift uniquely back to symbol-norm limits. -/
theorem existsUnique_symbol_of_operator_limit (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S)
    (P : ∀ x : S, PointEvaluationPort M μ hOpen x.1)
    {α : Type v} {l : Filter α} [l.NeBot] (F : α → BoundedSymbol D.X)
    (A : SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen)
    (h : Tendsto (fun a => completedRepresentation M μ hOpen (F a)) l (𝓝 A)) :
    ∃! f : BoundedSymbol D.X,
      completedRepresentation M μ hOpen f = A ∧ Tendsto F l (𝓝 f) := by
  have hr := (represented_range_isClosed M μ hOpen S hS P).mem_of_tendsto h
    (Eventually.of_forall (fun a => Set.mem_range_self (F a)))
  obtain ⟨f, hf⟩ := hr
  have ht : Tendsto F l (𝓝 f) := by
    apply (representationLinearIsometry M μ hOpen S hS P).isometry.tendsto_nhds_iff.mpr
    simpa only [Function.comp_def, representationLinearIsometry_apply, hf] using h
  refine ⟨f, ⟨hf, ht⟩, ?_⟩
  intro g hg
  exact (representationLinearIsometry M μ hOpen S hS P).injective (hg.1.trans hf.symm)

section Dirac

/-- Evaluation at the support point is well-defined on the historical Dirac quotient. -/
def diracValue (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    SectionQuotient (MetricWeights.identity D) (Measure.dirac x) hOpen → ℂ :=
  Quotient.lift (s := finiteEnergySetoid (MetricWeights.identity D) (Measure.dirac x) hOpen)
    (fun s => s.1.value x) (fun s t h => by
      change AEEqual (Measure.dirac x) hOpen s.1 t.1 at h
      simpa [AEEqual, ae_dirac_eq] using h)

@[simp] theorem diracValue_classOf (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (s : FiniteEnergySection (MetricWeights.identity D) (Measure.dirac x) hOpen) :
    diracValue D hOpen x (classOf (MetricWeights.identity D) (Measure.dirac x) hOpen s) =
      s.1.value x := rfl

/-- In the identity metric the Dirac quotient norm is exactly its support value's norm. -/
theorem diracValue_norm (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (q : SectionQuotient (MetricWeights.identity D) (Measure.dirac x) hOpen) :
    ‖diracValue D hOpen x q‖ = ‖q‖ := by
  refine Quotient.inductionOn q ?_
  intro s
  rw [norm_classOf, energy_dirac]
  change ‖s.1.value x‖ = Real.sqrt ((ENNReal.ofReal (1 * Complex.normSq (s.1.value x))).toReal)
  rw [one_mul, ENNReal.toReal_ofReal (Complex.normSq_nonneg _),
    Complex.normSq_eq_norm_sq, Real.sqrt_sq (norm_nonneg _)]

/-- Linearity and its bound are proved, not requested as fields of the fixture. -/
def diracEvaluation (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    SectionQuotient (MetricWeights.identity D) (Measure.dirac x) hOpen →L[ℂ] ℂ :=
  ({ toFun := diracValue D hOpen x
     map_add' := by
       intro q r
       refine Quotient.inductionOn₂ q r ?_
       intro s t
       rfl
     map_smul' := by
       intro c q
       refine Quotient.inductionOn q ?_
       intro s
       rfl } : SectionQuotient (MetricWeights.identity D) (Measure.dirac x) hOpen →ₗ[ℂ] ℂ).mkContinuous 1 (fun q => by simpa only [one_mul] using (diracValue_norm D hOpen x q).le)

/-- The actual finite constant-one section witnesses nonzero evaluation. -/
theorem diracEvaluation_ne_zero (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) : diracEvaluation D hOpen x ≠ 0 := by
  intro h
  let s := diracFiniteSection (MetricWeights.identity D) hOpen
    (scalarSection D hOpen (constantSection D.X 1)) x
  have he := congrArg (fun T : SectionQuotient (MetricWeights.identity D) (Measure.dirac x)
      hOpen →L[ℂ] ℂ => T (classOf (MetricWeights.identity D) (Measure.dirac x) hOpen s)) h
  change (1 : ℂ) = 0 at he
  exact one_ne_zero he

def diracPointEvaluationPort (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) : PointEvaluationPort (MetricWeights.identity D) (Measure.dirac x) hOpen x where
  functional := diracEvaluation D hOpen x
  on_class _ := rfl
  nonzero := diracEvaluation_ne_zero D hOpen x

/-- A Dirac multiplier is exactly scalar multiplication by its value at the support point. -/
theorem quotientRepresentation_dirac (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (f : BoundedSymbol D.X) :
    quotientRepresentation (MetricWeights.identity D) (Measure.dirac x) hOpen f =
      f.value x • ContinuousLinearMap.id ℂ _ := by
  ext q
  refine Quotient.inductionOn q ?_
  intro s
  change classOf (MetricWeights.identity D) (Measure.dirac x) hOpen
      (finiteMultiply f.toMultiplier (MetricWeights.identity D) (Measure.dirac x) hOpen s) =
    classOf (MetricWeights.identity D) (Measure.dirac x) hOpen
      (finiteSMul (MetricWeights.identity D) (Measure.dirac x) hOpen (f.value x) s)
  exact (classOf_dirac_eq_iff _ _ x _ _).mpr rfl

/-- The optimal norm here is the support value, not the symbol's global supremum. -/
theorem completedRepresentation_dirac_norm (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) (f : BoundedSymbol D.X) :
    ‖completedRepresentation (MetricWeights.identity D) (Measure.dirac x) hOpen f‖ =
      ‖f.value x‖ := by
  apply le_antisymm
  · change ‖completeMap _ _ _ _ (quotientRepresentation _ _ _ f)‖ ≤ _
    rw [completeMap_norm, quotientRepresentation_dirac, norm_smul]
    exact (mul_le_mul_of_nonneg_left (ContinuousLinearMap.norm_id_le (𝕜 := ℂ)
        (E := SectionQuotient (MetricWeights.identity D) (Measure.dirac x) hOpen))
      (norm_nonneg (f.value x))).trans_eq (mul_one _)
  · exact (diracPointEvaluationPort D hOpen x).value_norm_le_completed f

end Dirac

namespace Fixtures

open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.Fixtures

/-- With all other data fixed, the two support choices give exact norms zero and one half. -/
theorem disk_exact_dirac_norms :
    ‖completedRepresentation (MetricWeights.identity diskCover) (Measure.dirac center)
      diskCover_isOpen diskSymbol‖ = 0 ∧
    ‖completedRepresentation (MetricWeights.identity diskCover) (Measure.dirac halfPoint)
      diskCover_isOpen diskSymbol‖ = (1 : ℝ) / 2 := by
  constructor
  · rw [completedRepresentation_dirac_norm]
    change ‖(0 : ℂ)‖ = 0
    exact norm_zero
  · rw [completedRepresentation_dirac_norm]
    change ‖(1 : ℂ) / 2‖ = (1 : ℝ) / 2
    norm_num

/-- Even an unbounded function on classes cannot recover all off-support representative values. -/
theorem no_off_support_valueMap :
    ¬ ∃ e : SectionQuotient (MetricWeights.identity diskCover) (Measure.dirac center)
        diskCover_isOpen → ℂ,
      ∀ s : FiniteEnergySection (MetricWeights.identity diskCover) (Measure.dirac center)
        diskCover_isOpen,
      e (classOf (MetricWeights.identity diskCover) (Measure.dirac center) diskCover_isOpen s) =
        s.1.value halfPoint := by
  rintro ⟨e, heval⟩
  let s := diracFiniteSection (MetricWeights.identity diskCover) diskCover_isOpen
    (scalarSection diskCover diskCover_isOpen (coordinateSection disk)) center
  let t := finiteZero (MetricWeights.identity diskCover) (Measure.dirac center) diskCover_isOpen
  have he : classOf (MetricWeights.identity diskCover) (Measure.dirac center) diskCover_isOpen s =
      classOf (MetricWeights.identity diskCover) (Measure.dirac center) diskCover_isOpen t :=
    (classOf_dirac_eq_iff _ _ center _ _).mpr (by rfl)
  have hv := congrArg e he
  rw [heval, heval] at hv
  change (1 : ℂ) / 2 = 0 at hv
  norm_num at hv

/-- In particular, the dense-port premise cannot be silently filled at this off-support point. -/
theorem no_off_support_evaluation :
    ¬ Nonempty (PointEvaluationPort (MetricWeights.identity diskCover) (Measure.dirac center)
      diskCover_isOpen halfPoint) := by
  rintro ⟨P⟩
  exact no_off_support_valueMap ⟨P.functional, P.on_class⟩

end Fixtures
end
end GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming
```
