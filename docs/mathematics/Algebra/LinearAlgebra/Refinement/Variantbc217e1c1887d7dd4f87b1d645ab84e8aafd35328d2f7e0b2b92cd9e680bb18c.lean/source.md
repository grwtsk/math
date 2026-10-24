# Complete source: GRWTSK.Algebra.LinearAlgebra.Refinement.Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b92d5e7decbbe95f051970bcaf03d16ee247bb1` · SHA-256 `bc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Terrain.AbsoluteRegion
import DAF.Manifest
import Mathlib.Algebra.Module.LinearMap.Basic
import Mathlib.Data.Real.Basic

/-!
# Absolute coarse-to-fine refinement

Hierarchy levels remain regions of one absolute global coordinate system.
Restriction and linear prolongation are explicit typed capabilities.  The
low-frequency/residual interface certifies exact linear reconstruction; a
learned nonlinear decoder would be a separate external implementation.
-/

universe u v w

namespace DAF.Terrain

/-- Evidence classification attached to a hierarchy level. -/
inductive HierarchyEvidenceStatus
  | certified
  | conditional
  | external
  | unresolved
  deriving DecidableEq, Repr

/-- Metadata that may vary by level without changing the global coordinate frame. -/
structure HierarchyLevelMetadata where
  version : DAF.Version
  generatorParametersRef : String
  boundaryTreatmentRef : String
  evidenceStatus : HierarchyEvidenceStatus
  deriving Repr

/-- A finite hierarchy of exact global regions and typed coarse/fine maps. -/
structure GlobalHierarchy {State : Type u} (G : KnownMaximalState State) where
  Level : Type v
  levelFintype : Fintype Level
  levelDecEq : DecidableEq Level
  rank : Level → Nat
  region : Level → AbsoluteRegion G
  parent : Level → Option Level
  parent_rank : ∀ {fine coarse}, parent fine = some coarse → rank coarse ≤ rank fine
  restrict : ∀ {fine coarse},
    rank coarse ≤ rank fine →
      (region fine).LocalCoord → Option (region coarse).LocalCoord
  prolongSignal : ∀ {coarse fine},
    rank coarse ≤ rank fine →
      ((region coarse).LocalCoord → Real) →ₗ[Real]
        ((region fine).LocalCoord → Real)
  metadata : Level → HierarchyLevelMetadata

/-- A certified linear low-frequency/residual decomposition. -/
structure LinearLaplacianEncoding
    (Signal : Type u) [AddCommGroup Signal] [Module Real Signal] where
  lowPass : Signal →ₗ[Real] Signal
  reconstructLow : Signal →ₗ[Real] Signal
  residual : Signal →ₗ[Real] Signal
  residual_spec :
    residual = LinearMap.id - reconstructLow.comp lowPass
  reconstruction : ∀ u, reconstructLow (lowPass u) + residual u = u

namespace LinearLaplacianEncoding

variable {Signal : Type u} [AddCommGroup Signal] [Module Real Signal]

/-- Low-frequency plus residual reconstructs the original signal exactly. -/
theorem reconstruct (E : LinearLaplacianEncoding Signal) (u : Signal) :
    E.reconstructLow (E.lowPass u) + E.residual u = u :=
  E.reconstruction u

end LinearLaplacianEncoding

/-- Typed failure of a requested coarse/fine compatibility square. -/
structure RefinementObstruction {State : Type u} (G : KnownMaximalState State) where
  coarse : AbsoluteRegion G
  fine : AbsoluteRegion G
  squareIdentifier : String
  failedCondition : Prop
  witness : failedCondition
  unresolvedObligations : List String

end DAF.Terrain
```
