# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parallel.Variant999ad0464922c90a492ba5dc42460559c49316498c7579768135826ce656c3a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a38c96c819a2385e20c8de3f1a4508477faf1cd` · SHA-256 `999ad0464922c90a492ba5dc42460559c49316498c7579768135826ce656c3a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
