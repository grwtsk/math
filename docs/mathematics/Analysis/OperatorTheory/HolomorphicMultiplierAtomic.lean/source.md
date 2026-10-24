# Complete source: GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceb1d90b259a9da68acafca162e1ad41946ba588` · SHA-256 `d75880d60697ade4ef2bd7de5642b389844c1401d5fe7c46b608b4980d399a82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Topology.Bases

/-!
# Atomic producers for exact multiplier evaluation ports

A positive weighted Dirac lower bound derives evaluation on the historical a.e. quotient.
Finite mass supplies a nonzero section in the identity bundle. Countable weighted Dirac
sums then supply actual norming ports when their support sequence is dense. The selected
measure is explicit and remains fixed; no application measure is identified with it.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic

open Filter Topology MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation.BoundedSymbol
open scoped GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear
open GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm
open GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming

universe u v
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι}

/-- Measure data only: there is no assumed evaluation functional or norm estimate. -/
structure PositiveAtom (μ : Measure D.X.carrier) (x : D.X.carrier) where
  mass : ℝ≥0
  positive : 0 < mass
  dominated : mass • Measure.dirac x ≤ μ

namespace PositiveAtom

variable {μ : Measure D.X.carrier} {x : D.X.carrier}

/-- An a.e. proposition must hold at this atom, independently of representative choices. -/
theorem ae_at (A : PositiveAtom (D := D) μ x) {p : D.X.carrier → Prop}
    (hp : ∀ᵐ y ∂μ, p y) : p x := by
  have hz : (A.mass • Measure.dirac x) {y | ¬ p y} = 0 :=
    le_antisymm ((A.dominated _).trans_eq (ae_iff.mp hp)) bot_le
  have ha : ∀ᵐ y ∂A.mass • Measure.dirac x, p y := ae_iff.mpr hz
  have hd : ∀ᵐ y ∂Measure.dirac x, p y :=
    (Measure.ae_smul_measure_iff (ne_of_gt A.positive)).mp ha
  simpa only [ae_dirac_eq] using hd

/-- The atom's contribution is bounded by the original extended-valued energy. -/
theorem density_le (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover)
    (s : BundleSection (Cocycle.identity D) hOpen) :
    (A.mass : ℝ≥0∞) * density (MetricWeights.identity D) hOpen s x ≤
      energy (MetricWeights.identity D) μ hOpen s := by
  have h := lintegral_mono' A.dominated
    (le_refl (density (MetricWeights.identity D) hOpen s))
  rw [lintegral_smul_measure] at h
  change (A.mass : ℝ≥0∞) *
    energy (MetricWeights.identity D) (Measure.dirac x) hOpen s ≤
      energy (MetricWeights.identity D) μ hOpen s at h
  rwa [energy_dirac] at h

/-- Evaluation descends to the old quotient by the atom's actual measure inequality. -/
def value (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover) :
    SectionQuotient (MetricWeights.identity D) μ hOpen → ℂ :=
  Quotient.lift (s := finiteEnergySetoid (MetricWeights.identity D) μ hOpen)
    (fun s => s.1.value x) (fun _ _ h => A.ae_at h)

@[simp] theorem value_classOf (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover)
    (s : FiniteEnergySection (MetricWeights.identity D) μ hOpen) :
    A.value hOpen (classOf (MetricWeights.identity D) μ hOpen s) = s.1.value x := rfl

/-- Real conversion uses the original finite-energy proof, never the value of infinity. -/
theorem value_sq_bound (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover)
    (q : SectionQuotient (MetricWeights.identity D) μ hOpen) :
    (A.mass : ℝ) * ‖A.value hOpen q‖ ^ 2 ≤ ‖q‖ ^ 2 := by
  refine Quotient.inductionOn q ?_
  intro s
  have h := ENNReal.toReal_mono (ne_of_lt s.2) (A.density_le hOpen s.1)
  have hd : (density (MetricWeights.identity D) hOpen s.1 x).toReal =
      ‖s.1.value x‖ ^ 2 := by
    change (ENNReal.ofReal (1 * Complex.normSq (s.1.value x))).toReal = _
    rw [one_mul, ENNReal.toReal_ofReal (Complex.normSq_nonneg _),
      Complex.normSq_eq_norm_sq]
  rw [ENNReal.toReal_mul, ENNReal.coe_toReal, hd] at h
  simpa only [value_classOf, norm_sq_eq_energy, quotientEnergy_classOf] using h

/-- Each atom has its own bound; a uniform lower bound on all masses is not required. -/
theorem value_norm_bound (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover)
    (q : SectionQuotient (MetricWeights.identity D) μ hOpen) :
    ‖A.value hOpen q‖ ≤ (Real.sqrt (A.mass : ℝ))⁻¹ * ‖q‖ := by
  have hm : 0 < (A.mass : ℝ) := A.positive
  have hs : 0 < Real.sqrt (A.mass : ℝ) := Real.sqrt_pos.mpr hm
  have hsq : (Real.sqrt (A.mass : ℝ) * ‖A.value hOpen q‖) ^ 2 ≤ ‖q‖ ^ 2 := by
    rw [mul_pow, Real.sq_sqrt A.mass.2]
    exact A.value_sq_bound hOpen q
  have hle := (sq_le_sq₀
    (mul_nonneg (Real.sqrt_nonneg _) (norm_nonneg _)) (norm_nonneg q)).mp hsq
  calc
    ‖A.value hOpen q‖ = (Real.sqrt (A.mass : ℝ))⁻¹ *
        (Real.sqrt (A.mass : ℝ) * ‖A.value hOpen q‖) := by
      rw [← mul_assoc, inv_mul_cancel₀ (ne_of_gt hs), one_mul]
    _ ≤ _ := mul_le_mul_of_nonneg_left hle (inv_nonneg.mpr (Real.sqrt_nonneg _))

/-- Boundedness and linearity are derived from the measure data on the same quotient. -/
def functional (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover) :
    SectionQuotient (MetricWeights.identity D) μ hOpen →L[ℂ] ℂ :=
  ({ toFun := A.value hOpen
     map_add' := by
       intro q r
       refine Quotient.inductionOn₂ q r ?_
       intro s t
       rfl
     map_smul' := by
       intro c q
       refine Quotient.inductionOn q ?_
       intro s
       rfl } : SectionQuotient (MetricWeights.identity D) μ hOpen →ₗ[ℂ] ℂ).mkContinuous
    (Real.sqrt (A.mass : ℝ))⁻¹ (A.value_norm_bound hOpen)

@[simp] theorem functional_classOf (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover)
    (s : FiniteEnergySection (MetricWeights.identity D) μ hOpen) :
    A.functional hOpen (classOf (MetricWeights.identity D) μ hOpen s) = s.1.value x := rfl

theorem functional_norm_le (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover) :
    ‖A.functional hOpen‖ ≤ (Real.sqrt (A.mass : ℝ))⁻¹ :=
  (A.functional hOpen).opNorm_le_bound (inv_nonneg.mpr (Real.sqrt_nonneg _))
    (A.value_norm_bound hOpen)

/-- Nonzeroness needs an actual detecting section, not just positive atomic mass. -/
def pointPort (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover)
    (s : FiniteEnergySection (MetricWeights.identity D) μ hOpen) (hs : s.1.value x ≠ 0) :
    PointEvaluationPort (MetricWeights.identity D) μ hOpen x where
  functional := A.functional hOpen
  on_class _ := rfl
  nonzero := by
    intro h
    have he := congrArg (fun T : SectionQuotient (MetricWeights.identity D) μ hOpen →L[ℂ] ℂ =>
      T (classOf (MetricWeights.identity D) μ hOpen s)) h
    exact hs (by simpa only [functional_classOf, ContinuousLinearMap.zero_apply] using he)

/-- For finite mass the historical constant-one section constructs the detector. -/
def finiteMassPointPort (A : PositiveAtom (D := D) μ x) (hOpen : D.IsOpenCover)
    (hμ : μ Set.univ < ∞) : PointEvaluationPort (MetricWeights.identity D) μ hOpen x :=
  A.pointPort hOpen (finiteUnit D μ hOpen hμ) (by
    change (1 : ℂ) ≠ 0
    exact one_ne_zero)

end PositiveAtom

/-- All points in the norming set carry ports constructed from the same finite measure. -/
def atomicPorts (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (hμ : μ Set.univ < ∞) (S : Set D.X.carrier) (A : ∀ x : S, PositiveAtom (D := D) μ x.1) :
    ∀ x : S, PointEvaluationPort (MetricWeights.identity D) μ hOpen x.1 :=
  fun x => (A x).finiteMassPointPort hOpen hμ

theorem norm_eq_of_dense_atoms (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (hμ : μ Set.univ < ∞) (S : Set D.X.carrier) (hS : Dense S)
    (A : ∀ x : S, PositiveAtom (D := D) μ x.1) (f : BoundedSymbol D.X) :
    ‖completedRepresentation (MetricWeights.identity D) μ hOpen f‖ = ‖f‖ :=
  completedRepresentation_norm_eq _ μ hOpen S hS (atomicPorts μ hOpen hμ S A) f

theorem closed_range_of_dense_atoms (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (hμ : μ Set.univ < ∞) (S : Set D.X.carrier) (hS : Dense S)
    (A : ∀ x : S, PositiveAtom (D := D) μ x.1) :
    IsClosed (Set.range (completedRepresentation (MetricWeights.identity D) μ hOpen)) :=
  represented_range_isClosed _ μ hOpen S hS (atomicPorts μ hOpen hμ S A)

/-- A genuine countable sum of weighted Dirac measures; repeated points are allowed. -/
def atomicMeasure (D : IndexedDomainCover ι) (p : ℕ → D.X.carrier) (w : ℕ → ℝ≥0) :
    Measure D.X.carrier := Measure.sum (fun n => w n • Measure.dirac (p n))

theorem atomicMeasure_univ (D : IndexedDomainCover ι)
    (p : ℕ → D.X.carrier) (w : ℕ → ℝ≥0) :
    atomicMeasure D p w Set.univ = ∑' n, (w n : ℝ≥0∞) := by
  simp [atomicMeasure, Measure.sum_apply, Measure.smul_apply]

/-- The n-th summand supplies its lower bound, with no injectivity assumption on p. -/
def summandAtom (D : IndexedDomainCover ι) (p : ℕ → D.X.carrier) (w : ℕ → ℝ≥0)
    (n : ℕ) (hn : 0 < w n) : PositiveAtom (D := D) (atomicMeasure D p w) (p n) where
  mass := w n
  positive := hn
  dominated := Measure.le_sum (fun k => w k • Measure.dirac (p k)) n

def rangeAtoms (D : IndexedDomainCover ι) (p : ℕ → D.X.carrier) (w : ℕ → ℝ≥0)
    (hw : ∀ n, 0 < w n) : ∀ x : Set.range p, PositiveAtom (D := D) (atomicMeasure D p w) x.1 := by
  rintro ⟨x, hx⟩
  obtain ⟨n, rfl⟩ := hx
  exact summandAtom D p w n (hw n)

/-- A finite positive atomic sum with dense support produces the optimal norm theorem. -/
theorem atomicMeasure_norm_eq (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (p : ℕ → D.X.carrier) (hp : DenseRange p) (w : ℕ → ℝ≥0)
    (hw : ∀ n, 0 < w n) (hSum : (∑' n, (w n : ℝ≥0∞)) < ∞)
    (f : BoundedSymbol D.X) :
    ‖completedRepresentation (MetricWeights.identity D) (atomicMeasure D p w) hOpen f‖ = ‖f‖ := by
  apply norm_eq_of_dense_atoms (atomicMeasure D p w) hOpen
    (by rwa [atomicMeasure_univ]) (Set.range p) hp (rangeAtoms D p w hw) f

/-- Fixed positive summable weights, independent of the symbol and of the eventual target. -/
def geometricWeight (n : ℕ) : ℝ≥0 := (2⁻¹ : ℝ≥0) ^ n

theorem geometricWeight_pos (n : ℕ) : 0 < geometricWeight n :=
  pow_pos (by norm_num) n

theorem geometricWeight_sum : (∑' n, (geometricWeight n : ℝ≥0∞)) = 2 := by
  have h : ((2⁻¹ : ℝ≥0) : ℝ≥0∞) = (2⁻¹ : ℝ≥0∞) := by norm_num
  simp only [geometricWeight, ENNReal.coe_pow, h]
  exact ENNReal.tsum_geometric_two

/-- A selected dense sequence in the actual base gives one explicit finite atomic measure. -/
def denseAtomicMeasure (D : IndexedDomainCover ι) [Nonempty D.X.carrier] : Measure D.X.carrier :=
  atomicMeasure D (TopologicalSpace.denseSeq D.X.carrier) geometricWeight

theorem denseAtomicMeasure_univ (D : IndexedDomainCover ι) [Nonempty D.X.carrier] :
    denseAtomicMeasure D Set.univ = 2 := by
  rw [denseAtomicMeasure, atomicMeasure_univ, geometricWeight_sum]

/-- The selected measure has total mass two, not an implicitly normalized probability mass. -/
theorem denseAtomicMeasure_finite (D : IndexedDomainCover ι) [Nonempty D.X.carrier] :
    denseAtomicMeasure D Set.univ < ∞ := by
  rw [denseAtomicMeasure_univ]
  norm_num

theorem denseAtomicMeasure_norm_eq (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
    (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) :
    ‖completedRepresentation (MetricWeights.identity D) (denseAtomicMeasure D) hOpen f‖ = ‖f‖ :=
  atomicMeasure_norm_eq D hOpen _ (TopologicalSpace.denseRange_denseSeq D.X.carrier)
    geometricWeight geometricWeight_pos (by rw [geometricWeight_sum]; norm_num) f

def denseAtomicRepresentation (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
    (hOpen : D.IsOpenCover) : BoundedSymbol D.X →ₗᵢ[ℂ]
      (SectionCompletion (MetricWeights.identity D) (denseAtomicMeasure D) hOpen →L[ℂ]
        SectionCompletion (MetricWeights.identity D) (denseAtomicMeasure D) hOpen) where
  toLinearMap := (completedAlgHom (MetricWeights.identity D) (denseAtomicMeasure D) hOpen).toLinearMap
  norm_map' := denseAtomicMeasure_norm_eq D hOpen

@[simp] theorem denseAtomicRepresentation_apply (D : IndexedDomainCover ι)
    [Nonempty D.X.carrier] (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) :
    denseAtomicRepresentation D hOpen f =
      completedRepresentation (MetricWeights.identity D) (denseAtomicMeasure D) hOpen f := rfl

theorem denseAtomicRepresentation_closed (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
    (hOpen : D.IsOpenCover) :
    IsClosed (Set.range (completedRepresentation (MetricWeights.identity D)
      (denseAtomicMeasure D) hOpen)) := by
  letI : CompleteSpace (BoundedSymbol D.X) :=
    GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete.symbol_complete D.X
      (GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete.coveredDomain_isOpen D hOpen)
  exact (denseAtomicRepresentation D hOpen).isometry.isClosedEmbedding.isClosed_range

/-- This produces a measure; it does not identify a prescribed application measure with it. -/
theorem exists_finite_norming_measure (D : IndexedDomainCover ι) [Nonempty D.X.carrier]
    (hOpen : D.IsOpenCover) :
    ∃ μ : Measure D.X.carrier, μ Set.univ = 2 ∧
      (∀ f : BoundedSymbol D.X,
        ‖completedRepresentation (MetricWeights.identity D) μ hOpen f‖ = ‖f‖) ∧
      IsClosed (Set.range (completedRepresentation (MetricWeights.identity D) μ hOpen)) :=
  ⟨denseAtomicMeasure D, denseAtomicMeasure_univ D, denseAtomicMeasure_norm_eq D hOpen,
    denseAtomicRepresentation_closed D hOpen⟩

namespace Fixtures

open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures

/-- A zero coefficient supplies domination but no nonzero atom or evaluation information. -/
theorem zero_weight_dominated (μ : Measure D.X.carrier) (x : D.X.carrier) :
    (0 : ℝ≥0) • Measure.dirac x ≤ μ := by simp

/-- Positive atoms cannot be fabricated at an off-support point. -/
theorem no_half_atom_at_center : ¬ Nonempty (PositiveAtom (D := diskCover) (Measure.dirac center) halfPoint) := by
  rintro ⟨A⟩
  have hne : center ≠ halfPoint := by
    intro h
    have hv := congrArg Subtype.val h
    change (0 : ℂ) = 1 / 2 at hv
    norm_num at hv
  have hp : ∀ᵐ y ∂Measure.dirac center, y ≠ halfPoint := by
    simpa only [ae_dirac_eq] using hne
  exact (A.ae_at hp) rfl

/-- The construction actually applies to the nonempty proper open disk. -/
theorem disk_has_norming_measure :
    ∃ μ : Measure disk.carrier, μ Set.univ = 2 ∧
      (∀ f : BoundedSymbol disk,
        ‖completedRepresentation (MetricWeights.identity diskCover) μ diskCover_isOpen f‖ = ‖f‖) ∧
      IsClosed (Set.range (completedRepresentation (MetricWeights.identity diskCover)
        μ diskCover_isOpen)) := by
  letI : Nonempty disk.carrier := ⟨center⟩
  exact exists_finite_norming_measure diskCover diskCover_isOpen

end Fixtures
end
end GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic
```
