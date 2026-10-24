# Complete source: GRWTSK.Topology.MetricTopology.AnalyticSquare.Variant5f8298c9ab5f1243d1d86e143d1d4922c68c3073c599ebca8ff8290aab659b0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf7d5e22b44410fe59822acee7d759c4eccecf0f` · SHA-256 `43d2e04a82b9851cc5ee5a2f469af894977892b2f1e77848831eb74340ab9b14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.DiagramSquare.Variant13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.DiagramSquare.Variant13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7","mathematical_subject":"Topology.MetricSpaces","original_sha256":"13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/AnalyticSquare.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Mathlib.Algebra.Group.Basic
public import Mathlib.Topology.MetricSpace.Basic

/-!
# Generic analytic squares

These structures describe mathematical diagrams and their exact, metric, or
additive-obstruction laws.  They contain no scheduler or model authority and
do not turn numerical bounds into exact commutation.
-/


namespace GRWTSK.Topology.MetricTopology.DiagramSquare.Variant13482c71d9a0d25e7532935a5ba46f5bf5fe3fd2977f2ae35aca99338b102eb7

public section

namespace Surface.Core

universe u₁ u₂ u₃ u₄

/-- Four maps forming the boundary of a square.  No commutation law is assumed. -/
@[surface_interface]
structure DiagramSquare
    (A : Type u₁) (B : Type u₂) (A' : Type u₃) (B' : Type u₄) where
  top : A → B
  left : A → A'
  right : B → B'
  bottom : A' → B'

namespace DiagramSquare

variable {A : Type u₁} {B : Type u₂} {A' : Type u₃} {B' : Type u₄}

/-- The path across the top and then down the right side. -/
@[expose]
def topRight (square : DiagramSquare A B A' B') (x : A) : B' :=
  square.right (square.top x)

/-- The path down the left and then across the bottom. -/
@[expose]
def leftBottom (square : DiagramSquare A B A' B') (x : A) : B' :=
  square.bottom (square.left x)

end DiagramSquare

/-- A square whose two composites agree exactly. -/
@[surface_interface]
structure ExactSquare
    (A : Type u₁) (B : Type u₂) (A' : Type u₃) (B' : Type u₄)
    extends DiagramSquare A B A' B' where
  commutes : ∀ x, toDiagramSquare.topRight x = toDiagramSquare.leftBottom x

namespace ExactSquare

variable {A : Type u₁} {B : Type u₂} {A' : Type u₃} {B' : Type u₄}

@[surface_novel, surface_published]
theorem paths_equal (square : ExactSquare A B A' B') (x : A) :
    square.toDiagramSquare.topRight x =
      square.toDiagramSquare.leftBottom x :=
  square.commutes x

end ExactSquare

/-- A square with a uniform, explicitly retained bound on path discrepancy. -/
@[surface_interface]
structure MetricBoundedSquare
    (A : Type u₁) (B : Type u₂) (A' : Type u₃) (B' : Type u₄)
    [PseudoMetricSpace B'] extends DiagramSquare A B A' B' where
  bound : ℝ
  bound_nonnegative : 0 ≤ bound
  commutationBound :
    ∀ x, dist (toDiagramSquare.topRight x) (toDiagramSquare.leftBottom x) ≤ bound

namespace MetricBoundedSquare

variable {A : Type u₁} {B : Type u₂} {A' : Type u₃} {B' : Type u₄}
  [PseudoMetricSpace B']

@[surface_novel, surface_published]
theorem bound_nonneg (square : MetricBoundedSquare A B A' B') :
    0 ≤ square.bound :=
  square.bound_nonnegative

@[surface_novel, surface_published]
theorem paths_dist_le (square : MetricBoundedSquare A B A' B') (x : A) :
    dist (square.toDiagramSquare.topRight x)
        (square.toDiagramSquare.leftBottom x) ≤ square.bound :=
  square.commutationBound x

/-- A zero numerical bound yields zero path distance.  Exact equality is not
claimed for a pseudometric space. -/
@[surface_novel, surface_published]
theorem paths_dist_eq_zero_of_bound_eq_zero
    (square : MetricBoundedSquare A B A' B')
    (hbound : square.bound = 0) (x : A) :
    dist (square.toDiagramSquare.topRight x)
        (square.toDiagramSquare.leftBottom x) = 0 := by
  apply le_antisymm
  · simpa [hbound] using square.commutationBound x
  · exact dist_nonneg

end MetricBoundedSquare

/-- A square together with the additive difference between its two paths. -/
@[surface_interface]
structure AdditiveObstructionSquare
    (A : Type u₁) (B : Type u₂) (A' : Type u₃) (B' : Type u₄)
    [AddGroup B'] extends DiagramSquare A B A' B' where
  obstruction : A → B'
  obstruction_eq_pathDifference :
    ∀ x, obstruction x =
      toDiagramSquare.topRight x - toDiagramSquare.leftBottom x

namespace AdditiveObstructionSquare

variable {A : Type u₁} {B : Type u₂} {A' : Type u₃} {B' : Type u₄}
  [AddGroup B']

@[surface_novel, surface_published]
theorem obstruction_eq_zero_iff_paths_equal
    (square : AdditiveObstructionSquare A B A' B') (x : A) :
    square.obstruction x = 0 ↔
      square.toDiagramSquare.topRight x =
        square.toDiagramSquare.leftBottom x := by
  rw [square.obstruction_eq_pathDifference]
  exact sub_eq_zero

end AdditiveObstructionSquare

end Surface.Core
```
