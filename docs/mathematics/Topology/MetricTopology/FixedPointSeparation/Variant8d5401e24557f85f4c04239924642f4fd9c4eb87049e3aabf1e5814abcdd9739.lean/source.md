# Complete source: GRWTSK.Topology.MetricTopology.FixedPointSeparation.Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97b8044e3efd3b2c5ccef1a0fe230aff96b970bd` · SHA-256 `8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Operational.DiscreteFixedPoint

/-!
# Fixed-family separation

Incidence identity, Banach distance, Hilbert separation, and quotient
classification are reported independently.  This module supplies explicit
pairwise and family-uniform Banach certificates.
-/

namespace Mathematics.Operational

universe u v w

/-- Mutually distinct separation conclusions. -/
inductive SeparationClassification
  | incidenceSeparated
  | banachSeparated
  | hilbertSeparated
  | hilbertLinearlyIndependent
  | profileUniformlySeparated
  | symmetryEquivalent
  | quotientEquivalent
  | unresolved
  deriving DecidableEq, Repr

/-- Explicit lower bounds for every distinct pair in a certified family. -/
structure FixedFamilySeparationCertificate
    {State : Type u}
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    (family : CertifiedFixedFamily operator) where
  lowerBound : family.Point → family.Point → ℝ
  lowerBound_positive :
    ∀ {left right}, left ≠ right →
      0 < lowerBound left right
  lowerBound_le_distance :
    ∀ left right,
      lowerBound left right ≤
        dist (family.point left).point
          (family.point right).point

/-- One positive lower bound for the entire finite family. -/
structure UniformFixedFamilySeparationCertificate
    {State : Type u}
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    (family : CertifiedFixedFamily operator) where
  separation : ℝ
  separation_positive : 0 < separation
  separation_le :
    ∀ {left right}, left ≠ right →
      separation ≤
        dist (family.point left).point
          (family.point right).point

/--
Uniform noncollapse across an explicitly indexed family of metric profiles is
additional data; pointwise separation in one profile does not construct it.
-/
structure ProfileUniformSeparationCertificate
    (Profile : Type v)
    (Point : Type w)
    (distance : Profile → Point → Point → ℝ) where
  admittedProfiles : Set Profile
  separation : ℝ
  separation_positive : 0 < separation
  lowerBound :
    ∀ profile ∈ admittedProfiles,
      ∀ {left right}, left ≠ right →
        separation ≤ distance profile left right

namespace FixedFamilySeparationCertificate

/-- A pairwise certificate implies actual metric separation. -/
theorem dist_positive
    {State : Type u}
    [PseudoMetricSpace State]
    {operator : VersionedOperator State}
    {family : CertifiedFixedFamily operator}
    (certificate : FixedFamilySeparationCertificate family)
    {left right : family.Point}
    (distinct : left ≠ right) :
    0 <
      dist (family.point left).point
        (family.point right).point :=
  (certificate.lowerBound_positive distinct).trans_le
    (certificate.lowerBound_le_distance left right)

end FixedFamilySeparationCertificate

end Mathematics.Operational
```
