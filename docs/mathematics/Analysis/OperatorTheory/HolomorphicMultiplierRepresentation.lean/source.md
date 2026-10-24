# Complete source: GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4b6ffe568daa82ba3e0257c8f81e7881ca8f802` · SHA-256 `8823aa87c00b6fa990d2bbaca900f34b8623ed25d29908a91a993c408f64bf91`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier
import Mathlib.Algebra.Algebra.Hom
import Mathlib.MeasureTheory.Measure.OpenPos

/-!
# The algebra of bounded holomorphic symbols and its section representation

A symbol is a holomorphic function with a proposition asserting boundedness. A chosen
numerical bound is not part of its identity. The representations use the old multiplier
producer and the old quotient/completion maps. Faithfulness is proved only with an actual
nonvanishing finite-energy section and positivity of the measure on nonempty opens.
No supremum norm, star structure, optimal operator-norm formula or L2 realization is added.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation

open MeasureTheory
open scoped ENNReal
open scoped GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology (constantSection section_continuous)
open GRWTSK.Analysis.Complex.HolomorphicLineCocycle
open GRWTSK.Analysis.Complex.HolomorphicLineGauge
open GRWTSK.Analysis.Complex.HolomorphicLineMetric
open GRWTSK.Analysis.Complex.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.Complex.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.Complex.HolomorphicLineSectionLinear
open GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.Complex.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded
open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier

universe u
noncomputable section

/-- Bounds are witnesses for membership, not additional coordinates of a symbol. -/
def boundedSubring (X : Domain) : Subring (HolomorphicSection X) where
  carrier := {f | ∃ K : ℝ≥0, ∀ x : X.carrier, ‖(f : Section X) x‖ ≤ (K : ℝ)}
  zero_mem' := ⟨0, fun _ => by simp⟩
  one_mem' := ⟨1, fun _ => by simp⟩
  add_mem' := by
    rintro f g ⟨K, hK⟩ ⟨L, hL⟩
    refine ⟨K + L, fun x => ?_⟩
    exact (norm_add_le _ _).trans (add_le_add (hK x) (hL x))
  neg_mem' := by
    rintro f ⟨K, hK⟩
    refine ⟨K, fun x => ?_⟩
    change ‖-(f : Section X) x‖ ≤ (K : ℝ)
    simpa only [norm_neg] using hK x
  mul_mem' := by
    rintro f g ⟨K, hK⟩ ⟨L, hL⟩
    refine ⟨K * L, fun x => ?_⟩
    change ‖(f : Section X) x * (g : Section X) x‖ ≤ (K : ℝ) * (L : ℝ)
    rw [norm_mul]
    exact mul_le_mul (hK x) (hL x) (norm_nonneg _) K.2

abbrev BoundedSymbol (X : Domain) := ↥(boundedSubring X)

namespace BoundedSymbol

/-- The original function; no a.e. quotient is taken at the symbol-algebra level. -/
def value {X : Domain} (f : BoundedSymbol X) : Section X := f.1

@[ext] theorem ext {X : Domain} {f g : BoundedSymbol X}
    (h : ∀ x, f.value x = g.value x) : f = g :=
  Subtype.ext (Subtype.ext (funext h))

/-- Forget a certificate's numerical bound without changing its holomorphic function. -/
def ofMultiplier {X : Domain} (b : BoundedMultiplier X) : BoundedSymbol X :=
  ⟨b.symbol, b.bound, b.norm_le⟩

/-- Select a witness only to call the existing bounded-operator producer. -/
def toMultiplier {X : Domain} (f : BoundedSymbol X) : BoundedMultiplier X where
  symbol := f.1
  bound := Classical.choose f.2
  norm_le := Classical.choose_spec f.2

@[simp] theorem toMultiplier_symbol {X : Domain} (f : BoundedSymbol X) :
    f.toMultiplier.symbol = f.1 := rfl

/-- Scalars are actual constant sections, with their explicit finite bounds. -/
def constants (X : Domain) : ℂ →+* BoundedSymbol X where
  toFun c := ofMultiplier (BoundedMultiplier.const X c)
  map_zero' := by apply ext; intro x; rfl
  map_one' := by apply ext; intro x; rfl
  map_add' := by intro c d; apply ext; intro x; rfl
  map_mul' := by intro c d; apply ext; intro x; rfl

@[simp] theorem constants_value (X : Domain) (c : ℂ) (x : X.carrier) :
    (constants X c).value x = c := rfl

/-- One scoped algebra structure, induced by this very constant-section homomorphism. -/
scoped instance symbolAlgebra (X : Domain) : Algebra ℂ (BoundedSymbol X) :=
  (constants X).toAlgebra

@[simp] theorem algebraMap_eq_constants (X : Domain) (c : ℂ) :
    algebraMap ℂ (BoundedSymbol X) c = constants X c := rfl

@[simp] theorem smul_value {X : Domain} (c : ℂ) (f : BoundedSymbol X) (x : X.carrier) :
    (c • f).value x = c * f.value x := rfl

end BoundedSymbol

open scoped BoundedSymbol
variable {ι : Type u} {D : IndexedDomainCover ι} {C E : Cocycle D}

/-- A genuine unital ring homomorphism into the old bounded endomorphisms. -/
def quotientRepresentation (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    BoundedSymbol D.X →+* (SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen) where
  toFun f := quotientOperator f.toMultiplier M μ hOpen
  map_zero' := by
    ext q
    refine Quotient.inductionOn q ?_
    intro s
    apply (classOf_eq_iff M μ hOpen _ _).mpr
    filter_upwards [] with x
    change (0 : ℂ) * s.1.value x = 0
    exact zero_mul _
  map_one' := by
    ext q
    refine Quotient.inductionOn q ?_
    intro s
    apply (classOf_eq_iff M μ hOpen _ _).mpr
    filter_upwards [] with x
    change (1 : ℂ) * s.1.value x = s.1.value x
    exact one_mul _
  map_add' := by
    intro f g
    ext q
    refine Quotient.inductionOn q ?_
    intro s
    apply (classOf_eq_iff M μ hOpen _ _).mpr
    filter_upwards [] with x
    change (f.value x + g.value x) * s.1.value x =
      f.value x * s.1.value x + g.value x * s.1.value x
    exact add_mul _ _ _
  map_mul' := by
    intro f g
    ext q
    refine Quotient.inductionOn q ?_
    intro s
    apply (classOf_eq_iff M μ hOpen _ _).mpr
    filter_upwards [] with x
    change (f.value x * g.value x) * s.1.value x =
      f.value x * (g.value x * s.1.value x)
    exact mul_assoc _ _ _

/-- Different bounds on the same function cannot produce different represented operators. -/
theorem quotientRepresentation_ofMultiplier (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (b : BoundedMultiplier D.X) :
    quotientRepresentation M μ hOpen (BoundedSymbol.ofMultiplier b) =
      quotientOperator b M μ hOpen := by
  apply quotientOperator_congr_ae
  filter_upwards [] with x
  rfl

/-- Agreement almost everywhere is sufficient even without support or nonvanishing hypotheses. -/
theorem quotientRepresentation_congr_ae (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f g : BoundedSymbol D.X) (h : f.value =ᵐ[μ] g.value) :
    quotientRepresentation M μ hOpen f = quotientRepresentation M μ hOpen g :=
  quotientOperator_congr_ae f.toMultiplier g.toMultiplier M μ hOpen h

/-- The represented algebra scalar is the original constant scalar action. -/
theorem quotientRepresentation_constants (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (c : ℂ) :
    quotientRepresentation M μ hOpen (BoundedSymbol.constants D.X c) =
      c • ContinuousLinearMap.id ℂ _ := by
  change quotientRepresentation M μ hOpen
    (BoundedSymbol.ofMultiplier (BoundedMultiplier.const D.X c)) = _
  rw [quotientRepresentation_ofMultiplier, quotientOperator_const]

/-- The ring representation respects the exact complex algebra maps. -/
def quotientAlgHom (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    BoundedSymbol D.X →ₐ[ℂ]
      (SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen) where
  toRingHom := quotientRepresentation M μ hOpen
  commutes' c := by
    rw [BoundedSymbol.algebraMap_eq_constants, quotientRepresentation_constants]
    ext q
    rfl

@[simp] theorem quotientAlgHom_apply (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) :
    quotientAlgHom M μ hOpen f = quotientRepresentation M μ hOpen f := rfl

/-- Completion acts on the constructed representation, with no replacement supplier. -/
def completedRepresentation (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    BoundedSymbol D.X →+* (SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen) where
  toFun f := completeMap M M μ hOpen (quotientRepresentation M μ hOpen f)
  map_zero' := by simp only [map_zero, completeMap_zero]
  map_one' := by
    change completeMap M M μ hOpen (quotientRepresentation M μ hOpen 1) = _
    rw [map_one]
    exact completeMap_id M μ hOpen
  map_add' f g := by simp only [map_add, completeMap_add]
  map_mul' f g := by
    rw [map_mul]
    exact completeMap_comp M M M μ hOpen _ _

/-- The completed algebra map has the same constant-section binding. -/
def completedAlgHom (M : MetricWeights C) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) :
    BoundedSymbol D.X →ₐ[ℂ]
      (SectionCompletion M μ hOpen →L[ℂ] SectionCompletion M μ hOpen) where
  toRingHom := completedRepresentation M μ hOpen
  commutes' c := by
    change completeMap M M μ hOpen
      (quotientRepresentation M μ hOpen (algebraMap ℂ (BoundedSymbol D.X) c)) = _
    rw [BoundedSymbol.algebraMap_eq_constants, quotientRepresentation_constants,
      completeMap_smul, completeMap_id]
    ext x
    rfl

@[simp] theorem completedAlgHom_apply (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) :
    completedAlgHom M μ hOpen f = completedRepresentation M μ hOpen f := rfl

theorem completedRepresentation_ofMultiplier (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (b : BoundedMultiplier D.X) :
    completedRepresentation M μ hOpen (BoundedSymbol.ofMultiplier b) =
      completedOperator b M μ hOpen := by
  change completeMap M M μ hOpen
    (quotientRepresentation M μ hOpen (BoundedSymbol.ofMultiplier b)) = _
  rw [quotientRepresentation_ofMultiplier]
  rfl

@[simp] theorem completedRepresentation_toCompletion (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (f : BoundedSymbol D.X) (q : SectionQuotient M μ hOpen) :
    completedRepresentation M μ hOpen f (toCompletion M μ hOpen q) =
      toCompletion M μ hOpen (quotientRepresentation M μ hOpen f q) :=
  completeMap_toCompletion M M μ hOpen _ q

/-- The image commutes; this is not a star-closure or C-star-algebra assertion. -/
theorem completedRepresentation_commutes (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f g : BoundedSymbol D.X) :
    Commute (completedRepresentation M μ hOpen f) (completedRepresentation M μ hOpen g) := by
  change completedRepresentation M μ hOpen f * completedRepresentation M μ hOpen g =
    completedRepresentation M μ hOpen g * completedRepresentation M μ hOpen f
  rw [← map_mul, ← map_mul, mul_comm f g]

/-- Any supplied valid bound gives the same representation and its corresponding upper bound. -/
theorem completedRepresentation_bound (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) (K : ℝ≥0)
    (hK : ∀ x, ‖f.value x‖ ≤ (K : ℝ)) : ‖completedRepresentation M μ hOpen f‖ ≤ (K : ℝ) := by
  let b : BoundedMultiplier D.X := ⟨f.1, K, hK⟩
  have he : BoundedSymbol.ofMultiplier b = f := BoundedSymbol.ext (fun _ => rfl)
  change ‖completeMap M M μ hOpen (quotientRepresentation M μ hOpen f)‖ ≤ _
  rw [completeMap_norm, ← he, quotientRepresentation_ofMultiplier]
  exact quotientOperator_norm_le b M μ hOpen

/-- Gauge conjugacy acts on the same algebra representation and the same symbol. -/
theorem completedRepresentation_gauge (G : Gauge C E) (M : MetricWeights C)
    (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X) :
    completedRepresentation (transportMetric G M) μ hOpen f =
      gaugeConjugate G M μ hOpen (completedRepresentation M μ hOpen f) :=
  completedOperator_gauge f.toMultiplier G M μ hOpen

/-- An actual nonvanishing section detects symbols almost everywhere. -/
theorem quotientRepresentation_eq_iff_ae (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen)
    (hs : ∀ᵐ x ∂μ, s.1.value x ≠ 0) (f g : BoundedSymbol D.X) :
    quotientRepresentation M μ hOpen f = quotientRepresentation M μ hOpen g ↔
      f.value =ᵐ[μ] g.value := by
  constructor
  · intro h
    have hv := congrArg (fun T : SectionQuotient M μ hOpen →L[ℂ] SectionQuotient M μ hOpen =>
      T (classOf M μ hOpen s)) h
    have ha := (classOf_eq_iff M μ hOpen
      (finiteMultiply f.toMultiplier M μ hOpen s)
      (finiteMultiply g.toMultiplier M μ hOpen s)).mp hv
    filter_upwards [ha, hs] with x hx hne
    change f.value x * s.1.value x = g.value x * s.1.value x at hx
    exact mul_right_cancel₀ hne hx
  · exact quotientRepresentation_congr_ae M μ hOpen f g

/-- Positivity on every nonempty open upgrades continuous a.e. equality to symbol equality. -/
theorem quotientRepresentation_injective (M : MetricWeights C) (μ : Measure D.X.carrier)
    [Measure.IsOpenPosMeasure μ] (hOpen : D.IsOpenCover)
    (s : FiniteEnergySection M μ hOpen) (hs : ∀ᵐ x ∂μ, s.1.value x ≠ 0) :
    Function.Injective (quotientRepresentation M μ hOpen) := by
  intro f g h
  have hae := (quotientRepresentation_eq_iff_ae M μ hOpen s hs f g).mp h
  have hf : Continuous f.value := section_continuous D.X f.1
  have hg : Continuous g.value := section_continuous D.X g.1
  exact BoundedSymbol.ext (congrFun (Measure.eq_of_ae_eq hae hf hg))

/-- Completion reflects equality, so it adds no new kernel to this representation. -/
theorem completedRepresentation_eq_iff (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (f g : BoundedSymbol D.X) :
    completedRepresentation M μ hOpen f = completedRepresentation M μ hOpen g ↔
      quotientRepresentation M μ hOpen f = quotientRepresentation M μ hOpen g :=
  (completeMap_injective M M μ hOpen).eq_iff

theorem completedRepresentation_eq_iff_ae (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (s : FiniteEnergySection M μ hOpen)
    (hs : ∀ᵐ x ∂μ, s.1.value x ≠ 0) (f g : BoundedSymbol D.X) :
    completedRepresentation M μ hOpen f = completedRepresentation M μ hOpen g ↔
      f.value =ᵐ[μ] g.value :=
  (completedRepresentation_eq_iff M μ hOpen f g).trans
    (quotientRepresentation_eq_iff_ae M μ hOpen s hs f g)

theorem completedRepresentation_injective (M : MetricWeights C) (μ : Measure D.X.carrier)
    [Measure.IsOpenPosMeasure μ] (hOpen : D.IsOpenCover)
    (s : FiniteEnergySection M μ hOpen) (hs : ∀ᵐ x ∂μ, s.1.value x ≠ 0) :
    Function.Injective (completedRepresentation M μ hOpen) := by
  intro f g h
  exact quotientRepresentation_injective M μ hOpen s hs
    ((completedRepresentation_eq_iff M μ hOpen f g).mp h)

/-- In the identity bundle with finite mass, the actual unit section supplies detection. -/
def finiteUnit (D : IndexedDomainCover ι) (μ : Measure D.X.carrier) (hOpen : D.IsOpenCover)
    (hμ : μ Set.univ < ∞) : FiniteEnergySection (MetricWeights.identity D) μ hOpen :=
  ⟨scalarSection D hOpen (constantSection D.X 1), by rwa [unitSection_energy]⟩

theorem finiteUnit_nonzero (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) (hμ : μ Set.univ < ∞) :
    ∀ᵐ x ∂μ, (finiteUnit D μ hOpen hμ).1.value x ≠ 0 := by
  filter_upwards [] with x
  change (1 : ℂ) ≠ 0
  exact one_ne_zero

theorem identityBundle_faithful (D : IndexedDomainCover ι) (μ : Measure D.X.carrier)
    [Measure.IsOpenPosMeasure μ] (hOpen : D.IsOpenCover) (hμ : μ Set.univ < ∞) :
    Function.Injective (completedRepresentation (MetricWeights.identity D) μ hOpen) :=
  completedRepresentation_injective (MetricWeights.identity D) μ hOpen
    (finiteUnit D μ hOpen hμ) (finiteUnit_nonzero D μ hOpen hμ)

namespace Fixtures

open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures

/-- The same nonconstant disk symbol gives a nonzero element of the canonical algebra. -/
def diskSymbol : BoundedSymbol disk := BoundedSymbol.ofMultiplier diskCoordinate

theorem diskSymbol_ne_zero : diskSymbol ≠ 0 := by
  intro h
  have hx := congrArg (fun f : BoundedSymbol disk => f.value halfPoint) h
  change (1 : ℂ) / 2 = 0 at hx
  norm_num at hx

/-- Nonzero measure alone does not make the algebra representation faithful. -/
theorem nonzero_symbol_in_kernel : diskSymbol ≠ 0 ∧
    completedRepresentation (MetricWeights.identity diskCover) (Measure.dirac center)
      diskCover_isOpen diskSymbol = 0 := by
  refine ⟨diskSymbol_ne_zero, ?_⟩
  change completeMap _ _ _ _ (quotientRepresentation _ _ _ diskSymbol) = 0
  rw [diskSymbol, quotientRepresentation_ofMultiplier, diskCoordinate_operator_zero,
    completeMap_zero]

end Fixtures
end
end GRWTSK.Analysis.Operator.HolomorphicMultiplierRepresentation
```
