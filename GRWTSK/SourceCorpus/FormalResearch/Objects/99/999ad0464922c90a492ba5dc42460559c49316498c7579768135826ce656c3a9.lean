import Mathematics.Geometry.Incidence

/-!
# Parallel channel

Parallelism is a relation on lines.  Symmetry, irreflexivity, and Playfair
uniqueness remain independent assumptions.
-/

namespace Mathematics.Geometry

universe u v

/-- Bare line-parallelism data. -/
structure ParallelSignature (Line : Type v) where
  parallel : Line → Line → Prop

def ParallelSymmetric
    {Line : Type v}
    (parallelism : ParallelSignature Line) : Prop :=
  ∀ left right,
    parallelism.parallel left right →
      parallelism.parallel right left

def ParallelIrreflexive
    {Line : Type v}
    (parallelism : ParallelSignature Line) : Prop :=
  ∀ line, ¬ parallelism.parallel line line

/--
Playfair's condition, stated independently of all incidence, order,
congruence, construction, and continuity laws.
-/
def UniqueParallelThroughExternalPoint
    {Point : Type u} {Line : Type v}
    (incidence : IncidenceSignature Point Line)
    (parallelism : ParallelSignature Line) : Prop :=
  ∀ point line,
    ¬ incidence.liesOn point line →
      ∃ candidate,
        incidence.liesOn point candidate ∧
        parallelism.parallel candidate line ∧
        ∀ other,
          incidence.liesOn point other →
          parallelism.parallel other line →
            other = candidate

end Mathematics.Geometry
