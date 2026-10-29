import Mathematics.MobiusOntology.ArithmeticSource
import Mathematics.Prismatic.ConstructionProvenance

/-!
# Structural arithmetic incidence

The realization and any projector arise from the same declared construction
rule; unrelated post-hoc projectors carry no structural-coupling authority.
-/

namespace Mathematics.MobiusOntology

universe u v w x

abbrev ConstructionProvenance :=
  Mathematics.Prismatic.ConstructionProvenance

abbrev ProjectorProvenance :=
  Mathematics.Prismatic.ProjectorProvenance

structure StructuralIncidence
    (Source : Type u) (Boundary : Type v) where
  incidence : Source → Boundary
  sourceSemantics : Prop
  sourceSemanticsProof : sourceSemantics

structure StructuralCoupling
    (Source : Type u) (Boundary : Type v) (Realization : Type w) where
  incidence : StructuralIncidence Source Boundary
  construct : Boundary → Realization
  source : Source
  realization : Realization
  realizationExact :
    realization = construct (incidence.incidence source)

structure StructuralProjectorCoupling
    (Source : Type u) (Boundary : Type v)
    (Realization : Type w) (Projector : Type x) where
  base : StructuralCoupling Source Boundary Realization
  constructProjector : Boundary → Projector
  projector : Projector
  projectorExact :
    projector =
      constructProjector (base.incidence.incidence base.source)

end Mathematics.MobiusOntology
