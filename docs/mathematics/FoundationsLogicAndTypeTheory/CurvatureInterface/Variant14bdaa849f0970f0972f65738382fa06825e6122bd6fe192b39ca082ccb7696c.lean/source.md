# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.CurvatureInterface.Variant14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0e5a30889bd383ee864fe96f1f57087e88018e6` · SHA-256 `14bdaa849f0970f0972f65738382fa06825e6122bd6fe192b39ca082ccb7696c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Terrain.Core
import Mathlib.Data.Real.Basic

/-!
# Declared curvature semantics on finite terrain graphs

Curvature is never inferred from a picture or from the word “Ricci”.  A model
selects one named semantics, supplies its metric step and distance, and states
how legal and illegal terrain edges are represented.  The smooth-manifold tag
is retained for external or conditional integrations, but is excluded from a
`DiscreteCurvatureModel` by construction.
-/

namespace DAF.Geometry

open DAF.Terrain

universe uV uMetric

/-- The mathematical interpretation assigned to a curvature value. -/
inductive CurvatureSemantics
  | formanRicci
  | ollivierRicci
  | otherDeclaredDiscrete
  | smoothManifold
  deriving DecidableEq, Repr

namespace CurvatureSemantics

/-- Exactly the semantics accepted by the finite discrete interface. -/
def IsDiscrete : CurvatureSemantics → Prop
  | .formanRicci | .ollivierRicci | .otherDeclaredDiscrete => True
  | .smoothManifold => False

theorem isDiscrete_ne_smoothManifold
    {s : CurvatureSemantics}
    (hs : s.IsDiscrete) : s ≠ .smoothManifold := by
  intro h
  subst h
  exact hs

end CurvatureSemantics

/--
A fully named curvature capability on one fixed finite terrain domain.

`metricStep` evolves weights only.  The vertices and adjacency relation remain
the parameter `T`, while `illegal_edge_weight_zero` prevents metric evolution
from silently introducing a new edge.
-/
structure DiscreteCurvatureModel
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    (T : Terrain V)
    (MetricState : Type uMetric) where
  semantics : CurvatureSemantics
  semantics_discrete : semantics.IsDiscrete
  edgeWeight : MetricState → V → V → ℝ
  edgeWeight_symmetric :
    ∀ g {x y}, T.Adjacent x y → edgeWeight g x y = edgeWeight g y x
  illegal_edge_weight_zero :
    ∀ g {x y}, ¬ T.Adjacent x y → edgeWeight g x y = 0
  curvature : MetricState → V → V → ℝ
  referenceCurvature : V → V → ℝ
  metricStep : MetricState → MetricState
  metricDistance : MetricState → MetricState → ℝ
  metricDistance_nonnegative : ∀ g h, 0 ≤ metricDistance g h

namespace DiscreteCurvatureModel

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {T : Terrain V}

/-- A certified discrete curvature model cannot be a smooth-manifold model. -/
theorem semantics_ne_smoothManifold
    {MetricState : Type uMetric}
    (K : DiscreteCurvatureModel T MetricState) :
    K.semantics ≠ .smoothManifold :=
  CurvatureSemantics.isDiscrete_ne_smoothManifold K.semantics_discrete

/-- Illegal edges retain zero weight in every metric state. -/
theorem weight_eq_zero_of_not_adjacent
    {MetricState : Type uMetric}
    (K : DiscreteCurvatureModel T MetricState)
    (g : MetricState)
    {x y : V}
    (hxy : ¬ T.Adjacent x y) :
    K.edgeWeight g x y = 0 :=
  K.illegal_edge_weight_zero g hxy

end DiscreteCurvatureModel

end DAF.Geometry
```
