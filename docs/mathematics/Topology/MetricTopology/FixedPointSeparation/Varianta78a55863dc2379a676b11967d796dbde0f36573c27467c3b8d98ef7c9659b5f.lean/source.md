# Complete source: GRWTSK.Topology.MetricTopology.FixedPointSeparation.Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `834e2704fd24e905adbd67bde5b0b75009891faa` · SHA-256 `e2e6548b6a5d19940976c545e1a48aa1521688c298ea3c71b20ae40e922e49a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.SeparationClassification.Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.SeparationClassification.Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739","mathematical_subject":"Topology.MetricSpaces","original_sha256":"8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Operational/FixedPointSeparation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Operational.DiscreteFixedPoint

/-!
# Fixed-family separation

Incidence identity, Banach distance, Hilbert separation, and quotient
classification are reported independently.  This module supplies explicit
pairwise and family-uniform Banach certificates.
-/


namespace GRWTSK.Topology.MetricTopology.SeparationClassification.Variant8d5401e24557f85f4c04239924642f4fd9c4eb87049e3aabf1e5814abcdd9739

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
