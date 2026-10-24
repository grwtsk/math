-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.Tube.Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.Tube.Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6","mathematical_subject":"Topology.MetricSpaces","original_sha256":"0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Kakeya/Tube.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Kakeya.Direction
import Mathematics.Geometry.Kakeya.Scale

/-!
# Exact finite Euclidean tubes

The carrier is the closed metric neighborhood of a centered line segment.  No
raster tolerance, identifier, or presentation label enters membership.
-/


namespace GRWTSK.Topology.MetricTopology.Tube.Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6

namespace Mathematics.Geometry.Kakeya

/-- A finite oriented tube in real Euclidean space. -/
structure Tube (dimension : Nat) where
  center : AmbientPoint dimension
  direction : Direction dimension
  scale : ScaleWindow

namespace Tube

/-- The point at signed axial parameter `parameter` on the center line. -/
def axisPoint {dimension : Nat}
    (tube : Tube dimension) (parameter : ℝ) :
    AmbientPoint dimension :=
  tube.center + parameter • tube.direction.vector

/-- Exact membership in the closed tube around its finite center segment. -/
def Contains {dimension : Nat}
    (tube : Tube dimension) (point : AmbientPoint dimension) : Prop :=
  ∃ parameter : ℝ,
    |parameter| ≤ tube.scale.coarse ∧
      dist point (tube.axisPoint parameter) ≤ tube.scale.fine

/-- The point-set carrier of a tube. -/
def carrier {dimension : Nat} (tube : Tube dimension) :
    Set (AmbientPoint dimension) :=
  { point | tube.Contains point }

@[simp] theorem mem_carrier_iff {dimension : Nat}
    (tube : Tube dimension) (point : AmbientPoint dimension) :
    point ∈ tube.carrier ↔ tube.Contains point :=
  Iff.rfl

/-- Every exact tube contains its designated center. -/
theorem center_mem {dimension : Nat} (tube : Tube dimension) :
    tube.Contains tube.center := by
  refine ⟨0, ?_, ?_⟩
  · simpa using tube.scale.coarseNonnegative
  · simpa [axisPoint] using tube.scale.fineNonnegative

/-- Consequently every exact tube carrier is nonempty. -/
theorem carrier_nonempty {dimension : Nat} (tube : Tube dimension) :
    tube.carrier.Nonempty :=
  ⟨tube.center, tube.center_mem⟩

end Tube

end Mathematics.Geometry.Kakeya
