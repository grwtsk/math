/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMActualPeriodTransitionContinuity
import GRWTSK.Geometry.CMActualOrbitHermitianMetric
import Mathlib.Topology.FiberBundle.Basic
import Mathlib.Tactic

/-!
# A genuine topological complex-line bundle core on the CM period torus

The base B is the ACTUAL compact complex period torus of the CM field E;
its local charts and their open domains come from the pinned upstream
CM PeriodTorus source. The fibre F is C. We define coordinate changes by
the ORIGINAL undoubled Appell–Humbert multiplier J(a_ij(q),lift_i(q)),
using the independently proved integer-period transition cocycle.

The preceding CMActualPeriodTransitionContinuity source proves continuity
on every chart overlap from upstream local period translations, and so
Mathlib's FiberBundleCore receives ALL of its hypotheses, with no
independent continuity assumption. Mathlib constructs the corresponding
standard locally trivial topological bundle and its total-space topology.

A second construction identifies its underlying SET, fibre by fibre, with
the pre-existing Appell–Humbert orbit quotient. The equality is an actual
bijective original-period-map comparison, not an assertion that an arbitrary
ZMod residue quotient recovers the CM lattice. Transfer of topology to the
original orbit quotient, holomorphic vector-bundle atlases, the true Chern
connection/curvature and transport to a particular original CM variety are
NOT among the conclusions of this source proof candidate.
-/
set_option autoImplicit false
noncomputable section
open scoped _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTopologicalBundleCore

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTransitionContinuity
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodChartLocalFrames
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledOrbitTotalSpace
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualOrbitHermitianMetric
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledAppellHumbert

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- Strictly source-derived transition of the actual CM complex line.
The factor outside the overlapping chart domain is irrelevant. -/
def localCoordinateChange
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus) (w : ℂ) : ℂ :=
  extendedTransitionFactor E epsilon c d q * w

/-- The exact original integer period of a chart over itself is zero. -/
theorem chartTransitionPeriod_self
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source) :
    chartTransitionPeriod E epsilon c c q hc hc = 0 := by
  symm
  apply chartTransitionPeriod_unique E epsilon c c q hc hc 0
  simp [chartLift]

/-- Thus every local frame is the identity when compared with itself. -/
theorem localCoordinateChange_self
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source) (w : ℂ) :
    localCoordinateChange E epsilon c c q w = w := by
  unfold localCoordinateChange
  rw [extendedTransitionFactor_of_overlap E epsilon c c q hc hc]
  unfold chartTransitionFactor
  rw [chartTransitionPeriod_self E epsilon c q hc]
  rw [undoubledFactor_zero]
  simp

/-- The original three-chart Appell–Humbert equation is exactly the
`FiberBundleCore` composition axiom. No new gauge factor appears. -/
theorem localCoordinateChange_comp
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d f q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source)
    (hf : q ∈ (epsilon.periodChart f).source) (w : ℂ) :
    localCoordinateChange E epsilon d f q
       (localCoordinateChange E epsilon c d q w) =
    localCoordinateChange E epsilon c f q w := by
  unfold localCoordinateChange
  rw [extendedTransitionFactor_of_overlap E epsilon d f q hd hf]
  rw [extendedTransitionFactor_of_overlap E epsilon c d q hc hd]
  rw [extendedTransitionFactor_of_overlap E epsilon c f q hc hf]
  rw [chartTransitionFactor_cocycle E epsilon c d f q hc hd hf]
  ring

/-- Open-overlap continuity of the WHOLE scalar-multiplication change.
This uses the preceding SOURCE-PROVED locally constant actual integral
period labels and Mathlib's ordinary product topology, not a premise. -/
theorem localCoordinateChange_continuousOn
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d : epsilon.periodTorus) :
    ContinuousOn (fun p : epsilon.periodTorus × ℂ =>
       localCoordinateChange E epsilon c d p.1 p.2)
      (((epsilon.periodChart c).source ∩
        (epsilon.periodChart d).source) ×ˢ Set.univ) := by
  let s := (epsilon.periodChart c).source ∩
    (epsilon.periodChart d).source
  have hfactor : ContinuousOn
      (fun p : epsilon.periodTorus × ℂ =>
        extendedTransitionFactor E epsilon c d p.1)
        (s ×ˢ Set.univ) := by
    apply (extendedTransitionFactor_continuousOn E epsilon c d).comp
      continuous_fst.continuousOn
    intro p hp
    exact hp.1
  simpa only [localCoordinateChange] using
    hfactor.mul continuous_snd.continuousOn

/-- A complete topological fibre-bundle core, using the SOURCE actual CM
period charts and undoubled semicharacter. This is NOT merely a skeleton:
all six required fields are supplied by the prior theorems above. -/
def actualCMLineBundleCore
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    FiberBundleCore epsilon.periodTorus epsilon.periodTorus ℂ where
  baseSet c := (epsilon.periodChart c).source
  isOpen_baseSet c := (epsilon.periodChart c).open_source
  indexAt q := q
  mem_baseSet_at q := epsilon.mem_periodChart_source q
  coordChange c d q w := localCoordinateChange E epsilon c d q w
  coordChange_self c q hq w :=
    localCoordinateChange_self E epsilon c q hq w
  continuousOn_coordChange c d :=
    localCoordinateChange_continuousOn E epsilon c d
  coordChange_comp c d f q hq w := by
    exact localCoordinateChange_comp E epsilon c d f q
      hq.1.1 hq.1.2 hq.2 w

/-- The canonical total space of the Mathlib topological CM line-bundle
core, with its fiberwise complex coordinate and generated topology. -/
abbrev StandardCMLineTotal
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) : Type :=
  (actualCMLineBundleCore E epsilon).TotalSpace

/-- Source-level map from the standard core total space to the PRE-EXISTING
Appell–Humbert orbit quotient. It uses the chart centered at the actual base
point, not a lossy residue-class representative. -/
def standardCoreToActualOrbit
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    StandardCMLineTotal E epsilon → ActualOrbitTotal E epsilon :=
  fun p =>
    (chartFrame E epsilon p.proj p.proj
      (epsilon.mem_periodChart_source p.proj) p.snd).1

/-- The core-to-orbit map is EXACTLY base-preserving. -/
theorem standardCoreToActualOrbit_base
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (p : StandardCMLineTotal E epsilon) :
    actualOrbitBaseProjection E epsilon
      (standardCoreToActualOrbit E epsilon p) = p.proj := by
  change (QuotientAddGroup.mk
    (chartLift E epsilon p.proj p.proj
       (epsilon.mem_periodChart_source p.proj)) :
       epsilon.periodTorus) = p.proj
  exact chartLift_projects E epsilon p.proj p.proj
    (epsilon.mem_periodChart_source p.proj)

/-- No two standard core points alias in the SOURCE original orbit.
This follows from the pre-existing freeness of the full O_E period action. -/
theorem standardCoreToActualOrbit_injective
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    Function.Injective (standardCoreToActualOrbit E epsilon) := by
  intro p q h
  have hb := congrArg (actualOrbitBaseProjection E epsilon) h
  rw [standardCoreToActualOrbit_base, standardCoreToActualOrbit_base] at hb
  rcases p with ⟨p, wp⟩
  rcases q with ⟨q, wq⟩
  dsimp at hb
  subst q
  have hframe :
      chartFrame E epsilon p p (epsilon.mem_periodChart_source p) wp =
      chartFrame E epsilon p p (epsilon.mem_periodChart_source p) wq := by
    apply Subtype.ext
    exact h
  have hw := chartFrame_injective E epsilon p p
    (epsilon.mem_periodChart_source p) hframe
  congr

/-- Every ACTUAL undoubled Appell–Humbert orbit has a unique standard core
coordinate once its base point is fixed by the original CM period chart. -/
theorem standardCoreToActualOrbit_surjective
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    Function.Surjective (standardCoreToActualOrbit E epsilon) := by
  intro t
  let q := actualOrbitBaseProjection E epsilon t
  let hq := epsilon.mem_periodChart_source q
  obtain ⟨w, hw⟩ :=
    chartFrame_surjective E epsilon q q hq (⟨t, rfl⟩ :
      ActualAlgebraicFibre E epsilon q)
  refine ⟨⟨q, w⟩, ?_⟩
  change (chartFrame E epsilon q q hq w).1 = t
  exact congrArg Subtype.val hw

/-- Exact bijection between the ALREADY DEFINED source orbit set and the
topological bundle constructed from the SAME period transition functions.
It is not yet a theorem that the orbit quotient's independently selected
quotient topology agrees with the transported bundle-core topology. -/
def standardCoreToActualOrbitEquiv
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    StandardCMLineTotal E epsilon ≃ ActualOrbitTotal E epsilon :=
  Equiv.ofBijective (standardCoreToActualOrbit E epsilon)
    ⟨standardCoreToActualOrbit_injective E epsilon,
      standardCoreToActualOrbit_surjective E epsilon⟩

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTopologicalBundleCore
