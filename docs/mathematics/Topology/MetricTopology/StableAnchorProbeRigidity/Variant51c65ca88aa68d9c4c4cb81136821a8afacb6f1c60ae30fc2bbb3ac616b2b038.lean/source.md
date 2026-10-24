# Complete source: GRWTSK.Topology.MetricTopology.StableAnchorProbeRigidity.Variant51c65ca88aa68d9c4c4cb81136821a8afacb6f1c60ae30fc2bbb3ac616b2b038

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62897de3bfe102c5c4f4e1802665f92cd0c83428` · SHA-256 `32b99049d256b30c754d7ff0f5388158e15947f0e041be41ab2ed26adfa656e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.CompactificationAnchor.Variant435ac8d4c7994a597a65451c05226f7c834ffd4b6f3ae1814b83a0fb53286ed0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"435ac8d4c7994a597a65451c05226f7c834ffd4b6f3ae1814b83a0fb53286ed0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.CompactificationAnchor.Variant435ac8d4c7994a597a65451c05226f7c834ffd4b6f3ae1814b83a0fb53286ed0","mathematical_subject":"Topology.MetricSpaces","original_sha256":"435ac8d4c7994a597a65451c05226f7c834ffd4b6f3ae1814b83a0fb53286ed0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/StableAnchorProbeRigidity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Discovery.OpenElement
import Mathematics.Projection.PoleSurgery

/-!
# Open element: intrinsic rigidity of the stable-anchor compactification

A pole-cover tower declares its compactification to be the closure of the
realized stable anchors.  The intrinsic claim below asks whether those same
anchors are metric determining on that closed carrier.  It is stronger than
finite-net approximation and weaker than claiming that one finite stage
recovers the exact metric.
-/


namespace GRWTSK.Topology.MetricTopology.CompactificationAnchor.Variant435ac8d4c7994a597a65451c05226f7c834ffd4b6f3ae1814b83a0fb53286ed0

namespace Mathematics.Projection

open Set
open Mathematics.Discovery
open Mathematics.Terrain.PointedMetricReconstruction

universe u v

namespace CertifiedPoleCoverTower

variable
    {Stable : Type u} [DecidableEq Stable]
    {X : Type v} [MetricSpace X]

/-- Every stable anchor regarded as a point of the intrinsic closure. -/
def compactificationAnchor
    (tower : CertifiedPoleCoverTower Stable X)
    (anchor : Stable) :
    tower.compactification :=
  ⟨tower.realize anchor, subset_closure ⟨anchor, rfl⟩⟩

end CertifiedPoleCoverTower

/--
Stable anchors should determine the full metric on the closure they generate.
This is a closed universal proposition over the actual pole-cover structure.
-/
def StableAnchorProbeRigidityStatement : Prop :=
  ∀ (Stable X : Type)
    [DecidableEq Stable] [MetricSpace X]
    (tower : CertifiedPoleCoverTower Stable X),
      MetricDetermining tower.compactificationAnchor

/-- Immutable proposal-only element for stable-anchor probe rigidity. -/
def stableAnchorProbeRigidityOpenElement :
    OpenConjectureElement StableAnchorProbeRigidityStatement where
  elementId :=
    { id := { value := "open:projection:stable-anchor-probe-rigidity" } }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Stable-anchor probe rigidity"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Projection.StableAnchorProbeRigidityStatement"
  leanDeclarationName_nonempty := by
    decide

/--
The anchor image is dense in the subtype defined as its ambient closure, so
the general dense-probe theorem makes the anchors metric determining.
-/
theorem stableAnchorProbeRigidity :
    StableAnchorProbeRigidityStatement := by
  intro Stable X _ _ tower
  apply denseBeacon_metricDetermining
  rw [DenseRange, Subtype.dense_iff]
  have image_eq :
      ((↑) : tower.compactification → X) ''
          range tower.compactificationAnchor =
        range tower.realize := by
    ext point
    constructor
    · rintro ⟨anchorPoint, ⟨anchor, rfl⟩, rfl⟩
      exact ⟨anchor, rfl⟩
    · rintro ⟨anchor, rfl⟩
      exact
        ⟨tower.compactificationAnchor anchor, ⟨anchor, rfl⟩, rfl⟩
  rw [image_eq]
  intro point member
  exact member

/-- Distinct theorem element linked to the immutable proposal seed. -/
def stableAnchorProbeRigidityTheoremElement :
    LeanTheoremElement stableAnchorProbeRigidityOpenElement where
  theoremElementId := {
    id := {
      value := "theorem:projection:stable-anchor-probe-rigidity"
    }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := stableAnchorProbeRigidityOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := stableAnchorProbeRigidity

end Mathematics.Projection
```
