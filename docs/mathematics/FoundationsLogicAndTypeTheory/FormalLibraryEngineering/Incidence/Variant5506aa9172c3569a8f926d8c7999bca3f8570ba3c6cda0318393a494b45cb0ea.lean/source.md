# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Incidence.Variant5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b685be261b30e556a4ed45f35086afa64fd378ef` · SHA-256 `5506aa9172c3569a8f926d8c7999bca3f8570ba3c6cda0318393a494b45cb0ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.Primitive

/-!
# Incidence channel

The relation and each possible law are separate objects.  In particular,
existence and uniqueness of a line through two points are not constructors of
the signature.
-/

namespace Mathematics.Geometry

universe u v

/-- Bare point-line incidence data. -/
structure IncidenceSignature (Point : Type u) (Line : Type v) where
  liesOn : Point → Line → Prop

/-- Three points share at least one represented line. -/
def Collinear
    {Point : Type u} {Line : Type v}
    (incidence : IncidenceSignature Point Line)
    (first second third : Point) : Prop :=
  ∃ line,
    incidence.liesOn first line ∧
    incidence.liesOn second line ∧
    incidence.liesOn third line

/-- Existence half of the two-point incidence postulate. -/
def TwoPointLineExistence
    {Point : Type u} {Line : Type v}
    (incidence : IncidenceSignature Point Line) : Prop :=
  ∀ first second,
    first ≠ second →
      ∃ line,
        incidence.liesOn first line ∧
        incidence.liesOn second line

/-- Uniqueness half of the two-point incidence postulate. -/
def TwoPointLineUniqueness
    {Point : Type u} {Line : Type v}
    (incidence : IncidenceSignature Point Line) : Prop :=
  ∀ first second left right,
    first ≠ second →
    incidence.liesOn first left →
    incidence.liesOn second left →
    incidence.liesOn first right →
    incidence.liesOn second right →
      left = right

/-- A nondegeneracy assumption independent of line existence and uniqueness. -/
def ThreeNoncollinearPoints
    {Point : Type u} {Line : Type v}
    (incidence : IncidenceSignature Point Line) : Prop :=
  ∃ first second third,
    ¬ Collinear incidence first second third

end Mathematics.Geometry
```
