# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PortFiberLocalToGlobal

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c2d3893b7db1b842b24a354199b18cd808b0533` · SHA-256 `aaddcb09ab91964e27645de386d764277ecfb3e6cf939b18c1776b04da47f3e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Complex.HolomorphicRestrictionGluing
import GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture

namespace GRWTSK.NumberTheory.Zeta.Riemann.PortFiberLocalToGlobal

open GRWTSK.Topology
open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Logic.SimultaneousProofArchitecture
open GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture

/-- Local theorem slots for the restriction-and-gluing architecture. -/
inductive LocalIndex
  | simultaneousRestriction
  | ordinaryFunctionGluing
  | holomorphicGlobalizationBoundary
  deriving DecidableEq, Repr

/-- The complete restriction path carries every selected certificate simultaneously. -/
def restrictionClaim : Prop :=
  simultaneousProperty.Holds
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.restrictionPath.composite

/-- The upper/lower half-plane cover has exact ordinary-function gluing. -/
def gluingClaim : Prop :=
  ∀ s : BinaryDomainCover.MatchingData
      GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover,
    system.map
        GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.xToU
        (GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.glueMap s) =
        s.1.1 ∧
      system.map
        GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.xToV
        (GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.glueMap s) =
        s.1.2

/-- Holomorphic globalization is available only from its separate exact certificate. -/
def holomorphicBoundaryClaim : Prop :=
  ∀ s : BinaryDomainCover.HolomorphicMatchingData
      GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover,
    BinaryDomainCover.HolomorphicGlueCertificate
        GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover s →
      ExtendsHolomorphically
        GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.X
        (GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.glueMap
          s.local)

/-- Proof of all certificates on the composite restriction path. -/
theorem restrictionClaim_proof : restrictionClaim :=
  GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.restrictionPath.certified

/-- Proof of ordinary function gluing on both subdomains. -/
theorem gluingClaim_proof : gluingClaim := by
  intro s
  exact ⟨
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.glueMap_left s,
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.glueMap_right s⟩

/-- The boundary theorem consumes, rather than invents, a holomorphic gluing certificate. -/
theorem holomorphicBoundaryClaim_proof : holomorphicBoundaryClaim := by
  intro s h
  exact
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.global_holomorphic_of_certificate
      s h

/-- Restriction stage carrying a simultaneous holomorphy-preservation/topological-ring proof. -/
def restrictionStage : BoundStage where
  Source := Section
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.whole
  Target := Section
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.realAxis
  map := system.map
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.restrictionPath.composite
  certificate := restrictionClaim
  certified := restrictionClaim_proof
  theoremClaim := restrictionClaim
  theoremProof := restrictionClaim_proof
  sourceIdentity :=
    { repository := "grwtsk/math"
      revision := "issue-230-portfiber-holomorphy"
      path := "GRWTSK/Analysis/Complex/HolomorphicRestriction.lean"
      declaration := "Fixtures.restrictionPath" }
  invalidationKey := "portfiber-simultaneous-restriction-v1"

/-- Constructive ordinary-function gluing stage for one exact binary cover. -/
noncomputable def gluingStage : BoundStage where
  Source := BinaryDomainCover.MatchingData
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover
  Target := Section
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.X
  map :=
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.glueMap
  certificate :=
    GRWTSK.Topology.PortFiber.BinaryCover.SheafCertificate
      GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.toPortCover
  certified :=
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneFunctionSheaf
  theoremClaim := gluingClaim
  theoremProof := gluingClaim_proof
  sourceIdentity :=
    { repository := "grwtsk/math"
      revision := "issue-230-portfiber-holomorphy"
      path := "GRWTSK/Analysis/Complex/HolomorphicRestrictionGluing.lean"
      declaration := "Fixtures.halfPlaneFunctionSheaf" }
  invalidationKey := "portfiber-half-plane-gluing-v1"

/-- Explicit boundary stage: local holomorphy does not become global without the separate
`HolomorphicGlueCertificate`. -/
noncomputable def holomorphicBoundaryStage : BoundStage where
  Source := BinaryDomainCover.HolomorphicMatchingData
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover
  Target := Section
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.X
  map := fun s =>
    GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.halfPlaneCover.glueMap
      s.local
  certificate := holomorphicBoundaryClaim
  certified := holomorphicBoundaryClaim_proof
  theoremClaim := holomorphicBoundaryClaim
  theoremProof := holomorphicBoundaryClaim_proof
  sourceIdentity :=
    { repository := "grwtsk/math"
      revision := "issue-230-portfiber-holomorphy"
      path := "GRWTSK/Analysis/Complex/HolomorphicRestrictionGluing.lean"
      declaration := "BinaryDomainCover.global_holomorphic_of_certificate" }
  invalidationKey := "portfiber-holomorphic-globalization-boundary-v1"

/-- Exact local stage family. -/
noncomputable def stage : LocalIndex → BoundStage
  | .simultaneousRestriction => restrictionStage
  | .ordinaryFunctionGluing => gluingStage
  | .holomorphicGlobalizationBoundary => holomorphicBoundaryStage

/-- All local restriction and gluing mathematics is proved while RH remains unresolved. -/
noncomputable def architecture : Architecture LocalIndex where
  stage := stage
  targetDisposition := .unresolved
    "Riemann Hypothesis remains independent of local restriction, gluing, and holomorphy certificates"

/-- Every local theorem is available in the unresolved RH architecture. -/
theorem all_local (i : LocalIndex) : architecture.LocalClaim i :=
  architecture.allLocal i

/-- Local theorem availability is invariant under every later RH disposition, including a
hypothetical supplied refutation. -/
theorem all_local_under_target_disposition
    (d : TargetDisposition RiemannTarget) (i : LocalIndex) :
    (architecture.withTargetDisposition d).LocalClaim i :=
  (architecture.withTargetDisposition d).allLocal i

/-- The committed target state remains explicitly unresolved. -/
theorem rh_remains_unresolved :
    architecture.targetDisposition = .unresolved
      "Riemann Hypothesis remains independent of local restriction, gluing, and holomorphy certificates" :=
  rfl

end GRWTSK.NumberTheory.Zeta.Riemann.PortFiberLocalToGlobal
```
