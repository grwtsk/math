/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.TypedEllipsoidAtlas
import GRWTSK.NumberTheory.ElementaryNumberTheory.RationalPrimeEllipsoidAtlas
import GRWTSK.GeneralTopology.ThreePhaseResidualCircleAction
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Three-phase source-Gram ellipsoid orbit

This module connects the typed ellipsoid atlas to the exact three-coordinate
coherent/residual source and its continuous residual-circle action.

The source results already distinguish three operations:

* `cyclic` is an order-three permutation;
* `twist (anglePhase θ)` is an invertible continuous circle action on the
  zero-mean residual plane;
* `heat t` fixes the coherent coordinate and contracts residual energy for
  nonnegative time.

The complete positive observation

`positiveGram z = 3 * ‖mean z‖^2 + residualEnergy z`

is invariant under the cyclic and circle actions and nonincreasing under the
forward heat. Hence its sublevel sets are exact invariant/forward-invariant
ellipsoid carriers once a source-bound quadratic-form witness identifies a
`QuadraticEllipsoid` with this observation.

The same invariance creates a deliberate collision: two opposite residual
phases have identical positive Gram data and identical four Weil probes. A
Harrison-style finite phase fiber retains the missing alternative rank and an
injective complex phase label. The generic ratio/prime atlas then carries the
rational role, repeated prime axes, phase alternative and source-return
certificate without identifying any of them.

No John/Loewner optimality, infinite-dimensional compactness, volume theorem,
signed arithmetic cancellation, endpoint estimate or RH consequence is
asserted.

SOURCE_PROOF_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN /
TRANSITIVE AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.ThreePhaseEllipsoidOrbit

open Set
open GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoherentResidual
open GRWTSK.Algebra.LinearAlgebra.ThreePhaseResidualCircleAction
open GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.TypedEllipsoidAtlas
open GRWTSK.NumberTheory.ElementaryNumberTheory.RationalPrimeEllipsoidAtlas

/-! ## Exact positive-Gram sublevels -/

/-- The direct sublevel carrier of the actual three-phase positive Gram
observation. A separate witness below connects it to a `QuadraticEllipsoid`. -/
def gramSublevel (radiusSq : ℝ) : Set Phase3 :=
  {z | positiveGram z ≤ radiusSq}

@[simp]
theorem mem_gramSublevel {radiusSq : ℝ} {z : Phase3} :
    z ∈ gramSublevel radiusSq ↔ positiveGram z ≤ radiusSq :=
  Iff.rfl

/-- The residual circle preserves every positive-Gram sublevel exactly. -/
theorem twist_mem_gramSublevel_iff
    (radiusSq : ℝ) (a : ℂ) (ha : ‖a‖ = 1) (z : Phase3) :
    twist a z ∈ gramSublevel radiusSq ↔ z ∈ gramSublevel radiusSq := by
  change positiveGram (twist a z) ≤ radiusSq ↔ positiveGram z ≤ radiusSq
  rw [positiveGram_twist a ha]

/-- The order-three cyclic action also preserves the complete positive Gram. -/
theorem positiveGram_cyclic (z : Phase3) :
    positiveGram (cyclic z) = positiveGram z := by
  simp only [positiveGram, mean_cyclic, residualEnergy_cyclic]

/-- Cyclic permutation preserves every positive-Gram sublevel exactly. -/
theorem cyclic_mem_gramSublevel_iff
    (radiusSq : ℝ) (z : Phase3) :
    cyclic z ∈ gramSublevel radiusSq ↔ z ∈ gramSublevel radiusSq := by
  change positiveGram (cyclic z) ≤ radiusSq ↔ positiveGram z ≤ radiusSq
  rw [positiveGram_cyclic]

/-- Forward heat cannot increase the complete positive Gram. The coherent
coordinate is fixed and only the residual contribution decays. -/
theorem positiveGram_heat_le (t : ℝ) (ht : 0 ≤ t) (z : Phase3) :
    positiveGram (heat t z) ≤ positiveGram z := by
  rw [positiveGram, mean_heat, residualEnergy_heat, positiveGram]
  have hexp : Real.exp (-6 * t) ≤ 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by nlinarith)
  have hmul :
      Real.exp (-6 * t) * residualEnergy z ≤ residualEnergy z :=
    mul_le_mul_of_nonneg_right hexp (residualEnergy_nonnegative z)
  exact add_le_add_left hmul _

/-- Every positive-Gram sublevel is forward invariant under the selected heat. -/
theorem heat_mem_gramSublevel
    (radiusSq : ℝ) (t : ℝ) (ht : 0 ≤ t) {z : Phase3}
    (hz : z ∈ gramSublevel radiusSq) :
    heat t z ∈ gramSublevel radiusSq := by
  change positiveGram (heat t z) ≤ radiusSq
  exact (positiveGram_heat_le t ht z).trans hz

/-! ## Exact coupled coordinates on the residual plane -/

/-- The exact positive metric in the two-complex-coordinate chart of the
zero-mean residual plane. The third term is the retained coupling. -/
def residualChartEnergy (coordinate : ℂ × ℂ) : ℝ :=
  ‖coordinate.1‖ ^ 2 + ‖coordinate.2‖ ^ 2 +
    ‖coordinate.1 + coordinate.2‖ ^ 2

/-- The chart is exact: its coupled metric is the source residual energy. -/
theorem positiveGram_residualFromTwo (a b : ℂ) :
    positiveGram (residualFromTwo a b) = residualChartEnergy (a, b) := by
  simp [positiveGram, mean_residualFromTwo, residualChartEnergy,
    residualEnergy_fromTwo]

/-- Dropping the coupled third term changes the metric, already at `(1,1)`. -/
theorem residualChartEnergy_not_uncoupled :
    residualChartEnergy ((1 : ℂ), (1 : ℂ)) ≠ 2 := by
  norm_num [residualChartEnergy]

/-! ## Binding to the generic typed ellipsoid atlas -/

/-- Exact bridge from a generic atlas ellipsoid to the actual three-phase
positive Gram. The bridge is deliberately evidence-bearing: a profile name or
quadratic-looking plot does not supply these equalities. -/
structure PositiveGramEllipsoidWitness where
  geometry : QuadraticEllipsoid Phase3
  center_eq_zero : geometry.center = 0
  form_eq_positiveGram : ∀ z, geometry.form z = positiveGram z

namespace PositiveGramEllipsoidWitness

/-- The atlas carrier is exactly the direct positive-Gram sublevel. -/
theorem carrier_eq_gramSublevel (witness : PositiveGramEllipsoidWitness) :
    witness.geometry.carrier = gramSublevel witness.geometry.radiusSq := by
  ext z
  change witness.geometry.form (z - witness.geometry.center) ≤
      witness.geometry.radiusSq ↔
    positiveGram z ≤ witness.geometry.radiusSq
  rw [witness.center_eq_zero, sub_zero, witness.form_eq_positiveGram]

/-- Unit residual torsion preserves the source-bound atlas carrier. -/
theorem twist_mem_iff (witness : PositiveGramEllipsoidWitness)
    (a : ℂ) (ha : ‖a‖ = 1) (z : Phase3) :
    twist a z ∈ witness.geometry.carrier ↔
      z ∈ witness.geometry.carrier := by
  rw [witness.carrier_eq_gramSublevel]
  exact twist_mem_gramSublevel_iff witness.geometry.radiusSq a ha z

/-- Cyclic permutation preserves the source-bound atlas carrier. -/
theorem cyclic_mem_iff (witness : PositiveGramEllipsoidWitness)
    (z : Phase3) :
    cyclic z ∈ witness.geometry.carrier ↔
      z ∈ witness.geometry.carrier := by
  rw [witness.carrier_eq_gramSublevel]
  exact cyclic_mem_gramSublevel_iff witness.geometry.radiusSq z

/-- Nonnegative heat time maps the carrier into itself. -/
theorem heat_mem (witness : PositiveGramEllipsoidWitness)
    (t : ℝ) (ht : 0 ≤ t) {z : Phase3}
    (hz : z ∈ witness.geometry.carrier) :
    heat t z ∈ witness.geometry.carrier := by
  rw [witness.carrier_eq_gramSublevel] at hz ⊢
  exact heat_mem_gramSublevel witness.geometry.radiusSq t ht hz

end PositiveGramEllipsoidWitness

/-! ## Orbit source and exact return -/

/-- Continuous unit-phase orbit of a source state. -/
def circleOrbit (seed : Phase3) : Set Phase3 :=
  Set.range fun θ : ℝ => twist (anglePhase θ) seed

/-- The source generated by forward heat and arbitrary residual-circle phase. -/
def heatCircleOrbit (seed : Phase3) : Set Phase3 :=
  {z | ∃ t θ : ℝ, 0 ≤ t ∧
    z = twist (anglePhase θ) (heat t seed)}

/-- A carrier point keeps its complete continuous residual-circle orbit inside
the same ellipsoid. -/
theorem circleOrbit_subset_carrier
    (witness : PositiveGramEllipsoidWitness) {seed : Phase3}
    (hseed : seed ∈ witness.geometry.carrier) :
    circleOrbit seed ⊆ witness.geometry.carrier := by
  intro z hz
  rcases hz with ⟨θ, rfl⟩
  exact (witness.twist_mem_iff
    (anglePhase θ) (anglePhase_norm θ) seed).2 hseed

/-- Forward heat followed by any residual phase also stays in the carrier. -/
theorem heatCircleOrbit_subset_carrier
    (witness : PositiveGramEllipsoidWitness) {seed : Phase3}
    (hseed : seed ∈ witness.geometry.carrier) :
    heatCircleOrbit seed ⊆ witness.geometry.carrier := by
  intro z hz
  rcases hz with ⟨t, θ, ht, rfl⟩
  exact (witness.twist_mem_iff
    (anglePhase θ) (anglePhase_norm θ) (heat t seed)).2
      (witness.heat_mem t ht hseed)

/-- Complete witness retained by the source-Gram atlas view. -/
structure OrbitWitness where
  gram : PositiveGramEllipsoidWitness
  seed : Phase3
  seed_mem : seed ∈ gram.geometry.carrier
  sourceId : String
  constructionId : String

/-- A concrete source-Gram view: its source is the heat-circle orbit and its
relation is an actual circumscribed certificate, not a descriptor tag alone. -/
def sourceGramView (witness : OrbitWitness) :
    EllipsoidView Phase3 OrbitWitness where
  profile := EllipsoidProfile.sourceGram
  geometry := witness.gram.geometry
  source := heatCircleOrbit witness.seed
  relation := .circumscribed
    (heatCircleOrbit_subset_carrier witness.gram witness.seed_mem)
  relation_compatible := by trivial
  sourceId := witness.sourceId
  constructionId := witness.constructionId
  witness := witness

/-! ## Harrison-style phase disambiguation inside one ellipsoid -/

/-- Two labels for opposite residual phases. -/
def antipodalState (seed : Phase3) : Bool → Phase3
  | false => seed
  | true => twist (-1) seed

/-- Their complete positive-Gram observation is identical. -/
theorem positiveGram_antipodalState (seed : Phase3) :
    ∀ alternative : Bool,
      positiveGram (antipodalState seed alternative) = positiveGram seed
  | false => rfl
  | true => positiveGram_twist (-1) (by norm_num) seed

/-- Retained complex phase label for the otherwise colliding alternatives. -/
def antipodalPhase : Bool → ℂ
  | false => 1
  | true => -1

/-- The retained phase label is injective on the declared two-point fiber. -/
theorem antipodalPhase_injective : Function.Injective antipodalPhase := by
  intro left right hphase
  cases left <;> cases right <;>
    simp [antipodalPhase] at hphase ⊢

/-- Exact two-alternative collision ledger: the coarse positive-Gram value is
shared, while the phase channel retains the selected alternative. -/
def antipodalFiber (seed : Phase3) (rank : Fin 2) :
    DisambiguatedFiber Bool ℝ where
  options := [false, true]
  options_nodup := by decide
  coarse := fun alternative => positiveGram (antipodalState seed alternative)
  base := positiveGram seed
  shares_base := by
    intro alternative _
    exact positiveGram_antipodalState seed alternative
  rank := rank
  phase := antipodalPhase
  phase_separates := by
    intro left right _ _ hphase
    exact antipodalPhase_injective hphase

/-- Even all four positive Weil probes collide under the common opposite-phase
transport. The separate phase fiber is therefore not reconstructible from
those invariant probes alone. -/
theorem antipodal_probes_collision (z w : Phase3) :
    probes (antipodalState z true) (antipodalState w true) =
      probes (antipodalState z false) (antipodalState w false) := by
  simpa [antipodalState] using probes_twist (-1) (by norm_num) z w

/-- The retained phase labels of the two colliding alternatives are distinct. -/
theorem antipodal_phases_distinct :
    antipodalPhase false ≠ antipodalPhase true := by
  norm_num [antipodalPhase]

namespace OrbitWitness

/-- Move the selected source seed to either antipodal phase without changing
the source-Gram ellipsoid. -/
def antipodal (witness : OrbitWitness) (alternative : Bool) : OrbitWitness where
  gram := witness.gram
  seed := antipodalState witness.seed alternative
  seed_mem := by
    cases alternative with
    | false =>
        simpa [antipodalState] using witness.seed_mem
    | true =>
        change twist (-1) witness.seed ∈ witness.gram.geometry.carrier
        exact (witness.gram.twist_mem_iff (-1) (by norm_num) witness.seed).2
          witness.seed_mem
  sourceId := witness.sourceId
  constructionId := witness.constructionId

end OrbitWitness

/-- Opposite phase alternatives have the same ellipsoid profile and geometry;
their identity is retained by the separate finite phase fiber. -/
theorem antipodal_views_same_geometry (witness : OrbitWitness) :
    (sourceGramView (witness.antipodal false)).geometry =
      (sourceGramView (witness.antipodal true)).geometry :=
  rfl

/-- Constructor for the complete rational/prime/phase/ellipsoid key. Any
reduced ratio role may be supplied; no special status is inferred from `3/4`. -/
def primeAtlasEntry
    (ratioAddress : RatioAddress)
    (primeAxes : OrderedPrimeAxes)
    (primeAddress : primeAxes.Address)
    (witness : OrbitWitness)
    (rank : Fin 2)
    (sourceRecordId : String) :
    PrimeEllipsoidAtlasEntry Phase3 Bool ℝ OrbitWitness where
  ratioAddress := ratioAddress
  primeAxes := primeAxes
  primeAddress := primeAddress
  alternatives := antipodalFiber witness.seed rank
  ellipsoidOf := fun alternative =>
    sourceGramView (witness.antipodal alternative)
  sourceRecordId := sourceRecordId

/-- The complete constructor inherits the generic source-return theorem with its
explicit omitted-source residual ledger. -/
theorem primeAtlasEntry_selected_source_return
    (ratioAddress : RatioAddress)
    (primeAxes : OrderedPrimeAxes)
    (primeAddress : primeAxes.Address)
    (witness : OrbitWitness)
    (rank : Fin 2)
    (sourceRecordId : String) :
    (primeAtlasEntry ratioAddress primeAxes primeAddress witness rank
      sourceRecordId).selectedEllipsoid.source ⊆
      (primeAtlasEntry ratioAddress primeAxes primeAddress witness rank
        sourceRecordId).selectedEllipsoid.geometry.carrier ∪
      (primeAtlasEntry ratioAddress primeAxes primeAddress witness rank
        sourceRecordId).selectedEllipsoid.comparison.omittedSource :=
  (primeAtlasEntry ratioAddress primeAxes primeAddress witness rank
    sourceRecordId).selected_source_return

end GRWTSK.ConvexAndDiscreteGeometry.GeneralConvexity.ThreePhaseEllipsoidOrbit
