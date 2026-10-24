# Complete source: GRWTSK.Topology.GeneralTopology.StablePointEmbedding.Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2b135a96670f36ef09c62d7fbd06d1bce8c7ab0` · SHA-256 `bbeb6283850560188dcf1ffa253a66c77e875901c2f0a7c3f93c075d60fda095`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.StableProbeFamily.Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.StableProbeFamily.Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757","mathematical_subject":"Topology.GeneralTopology","original_sha256":"4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/StablePointEmbedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Discovery.OpenElement
import Mathematics.Prismatic.LoopClosure
import Mathlib.Topology.Basic
import Mathlib.Topology.Separation.Hausdorff

/-!
# Jointly rigid stable-prime probes

A product of local probes reconstructs a global carrier only when it is jointly
point separating and induces the original topology.  Neither property follows
from stability of the individual prime-local coordinates.
-/


namespace GRWTSK.Topology.GeneralTopology.StableProbeFamily.Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757

namespace Mathematics.Prismatic

universe u v

noncomputable section

/-- One indexed product of stable real-valued observations. -/
structure StableProbeFamily
    (State : Type u) (Probe : Type v)
    [TopologicalSpace State] where
  observe : Probe → State → ℝ
  stable : Probe → Prop
  everyProbeStable : ∀ probe, stable probe
  familyDigest : Digest
  familyAddress : ObjectAddress

namespace StableProbeFamily

variable
    {State : Type u} {Probe : Type v}
    [TopologicalSpace State]

/-- Product profile of all certified stable probes. -/
def profile
    (family : StableProbeFamily State Probe)
    (state : State) :
    Probe → ℝ :=
  fun probe ↦ family.observe probe state

/-- Exact hypotheses required for probe-rigid global reconstruction. -/
structure Rigid
    (family : StableProbeFamily State Probe) : Prop where
  jointlySeparating :
    Function.Injective family.profile
  topologyRecovered :
    Topology.IsInducing family.profile

/-- Joint separation plus topology recovery is exactly a topological embedding. -/
theorem Rigid.isEmbedding
    {family : StableProbeFamily State Probe}
    (rigid : family.Rigid) :
    Topology.IsEmbedding family.profile :=
  ⟨rigid.topologyRecovered, rigid.jointlySeparating⟩

theorem Rigid.injective
    {family : StableProbeFamily State Probe}
    (rigid : family.Rigid) :
    Function.Injective family.profile :=
  rigid.jointlySeparating

/--
For a compact source, continuous jointly separating probes recover the source
topology automatically: their product profile is a continuous injection into
the Hausdorff real product, hence a closed embedding.
-/
def CompactProbeRigidityStatement : Prop :=
  ∀ (State Probe : Type)
    [TopologicalSpace State] [CompactSpace State]
    (family : StableProbeFamily State Probe),
      (∀ probe, Continuous (family.observe probe)) →
      Function.Injective family.profile →
      family.Rigid

/--
Proposal seed emitted by the architecture before the standard compact-to-
Hausdorff argument is checked.
-/
def compactProbeRigidityOpenElement :
    Mathematics.Discovery.OpenConjectureElement
      CompactProbeRigidityStatement where
  elementId := {
    id := {
      value := "open:prismatic:compact-stable-probe-rigidity"
    }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Compact stable probes are intrinsically rigid"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Prismatic.StableProbeFamily.CompactProbeRigidityStatement"
  leanDeclarationName_nonempty := by
    decide

/--
The low-dependency seed closes without an extra topology-recovery axiom.
Compactness supplies closedness of the continuous injective profile.
-/
theorem compactProbeRigidity :
    CompactProbeRigidityStatement := by
  intro State Probe _ _ family continuousCoordinates separating
  have continuousProfile : Continuous family.profile :=
    continuous_pi continuousCoordinates
  have embedding : Topology.IsClosedEmbedding family.profile :=
    continuousProfile.isClosedEmbedding separating
  exact {
    jointlySeparating := separating
    topologyRecovered := embedding.isInducing
  }

/-- Proof-bearing element linked immutably to the proposal seed. -/
def compactProbeRigidityTheoremElement :
    Mathematics.Discovery.LeanTheoremElement
      compactProbeRigidityOpenElement where
  theoremElementId := {
    id := {
      value := "theorem:prismatic:compact-stable-probe-rigidity"
    }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := compactProbeRigidityOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := compactProbeRigidity

end StableProbeFamily

end

end Mathematics.Prismatic
```
