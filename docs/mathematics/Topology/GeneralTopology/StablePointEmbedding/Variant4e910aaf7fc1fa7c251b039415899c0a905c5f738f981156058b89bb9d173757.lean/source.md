# Complete source: GRWTSK.Topology.GeneralTopology.StablePointEmbedding.Variant4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `497d4211aee5e389744cbfc1893ab7d6ff5c9db9` · SHA-256 `4e910aaf7fc1fa7c251b039415899c0a905c5f738f981156058b89bb9d173757`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
