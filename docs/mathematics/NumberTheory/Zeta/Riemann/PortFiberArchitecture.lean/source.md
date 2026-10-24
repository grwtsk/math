# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30d364a42b27b33410705d6d7954aec9d891b6a7` · SHA-256 `900d789bc5de6514c7778c4f7a065f1c6a7791fd3be47a51cdee90bb3a839b0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Complex.PortFiberHolomorphy
import GRWTSK.Topology.Algebra.PortFiberRing
import GRWTSK.Logic.SimultaneousProofArchitecture
import GRWTSK.NumberTheory.Zeta.Riemann.Hypothesis

namespace GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture

open GRWTSK.Topology
open GRWTSK.Logic.SimultaneousProofArchitecture

universe u v w

/-- The exact project comparator proposition. This alias introduces no proof of RH. -/
abbrev RiemannTarget : Prop := GRWTSK.RiemannHypothesis.Target.Statement

/-- One heterogeneous, proof-carrying stage in the architecture.

The certificate is an exact proposition chosen by the producer; its proof cannot be replaced by
its display name or source metadata. The theorem claim is retained separately because a certified
map may support a narrower downstream theorem. -/
structure BoundStage where
  Source : Type u
  Target : Type u
  map : Source → Target
  certificate : Prop
  certified : certificate
  theoremClaim : Prop
  theoremProof : theoremClaim
  sourceIdentity : GRWTSK.Topology.PortFiber.SourceIdentity
  invalidationKey : String

namespace BoundStage

/-- Bind one exact typed port and its proof-carrying certificate into a heterogeneous stage. -/
def ofPort (P : GRWTSK.Topology.PortFiber.{v, u, w})
    {A B : P.Obj} (p : P.Port A B)
    (certificate : Prop) (certified : certificate)
    (theoremClaim : Prop) (theoremProof : theoremClaim)
    (sourceIdentity : GRWTSK.Topology.PortFiber.SourceIdentity)
    (invalidationKey : String) : BoundStage where
  Source := P.Fiber A
  Target := P.Fiber B
  map := P.map p
  certificate := certificate
  certified := certified
  theoremClaim := theoremClaim
  theoremProof := theoremProof
  sourceIdentity := sourceIdentity
  invalidationKey := invalidationKey

end BoundStage

/-- An indexed family of certified local stages plus an independent RH disposition. -/
structure Architecture (I : Type v) where
  stage : I → BoundStage.{u}
  targetDisposition : TargetDisposition RiemannTarget

namespace Architecture

variable {I : Type v}

/-- The local theorem family carried by an architecture. -/
def LocalClaim (A : Architecture.{u, v} I) (i : I) : Prop :=
  (A.stage i).theoremClaim

/-- Every architecture yields one simultaneous proof bundle. -/
def toBundle (A : Architecture.{u, v} I) :
    SimultaneousProofBundle A.LocalClaim RiemannTarget where
  localProof := fun i => (A.stage i).theoremProof
  targetDisposition := A.targetDisposition

/-- All local stage theorems are available even when the RH disposition is unresolved. -/
theorem allLocal (A : Architecture.{u, v} I) (i : I) : A.LocalClaim i :=
  A.toBundle.local i

/-- Replacing the RH disposition preserves the complete local theorem family. -/
def withTargetDisposition (A : Architecture.{u, v} I)
    (d : TargetDisposition RiemannTarget) : Architecture.{u, v} I where
  stage := A.stage
  targetDisposition := d

end Architecture

namespace Fixtures

/-- Two differently certified paths coexist in one simultaneous architecture. -/
inductive StageIndex
  | holomorphic
  | topologicalRing
  deriving DecidableEq, Repr

/-- Translation followed by squaring as a certified holomorphic path. -/
def holomorphicPath :=
  GRWTSK.Analysis.Complex.PortFiber.Fixtures.translatedSquarePath 1

/-- Composite port of the complete holomorphic path. -/
def holomorphicPort := holomorphicPath.composite

/-- Exact holomorphy proof for the whole path composite. -/
def holomorphicCertificate :
    GRWTSK.Analysis.Complex.PortFiber.HolomorphicCertificate holomorphicPort :=
  holomorphicPath.certified

/-- The path-level holomorphic certificate is the first local theorem. -/
def holomorphicStage : BoundStage :=
  BoundStage.ofPort
    GRWTSK.Analysis.Complex.PortFiber.system
    holomorphicPort
    (GRWTSK.Analysis.Complex.PortFiber.HolomorphicCertificate holomorphicPort)
    holomorphicCertificate
    (GRWTSK.Analysis.Complex.PortFiber.HolomorphicCertificate holomorphicPort)
    holomorphicCertificate
    { repository := "grwtsk/math"
      revision := "issue-230-portfiber-holomorphy"
      path := "GRWTSK/Analysis/Complex/PortFiberHolomorphy.lean"
      declaration := "Fixtures.translatedSquarePath_certified" }
    "portfiber-holomorphic-path-v2"

/-- Two identity atoms as a certified topological-ring path. -/
def ringPath :=
  GRWTSK.Topology.Algebra.PortFiber.Fixtures.complexIdentityPath

/-- Composite port of the whole ring path. -/
def ringPort := ringPath.composite

/-- Exact topological-ring certificate for the whole path composite. -/
def ringCertificate :
    GRWTSK.Topology.Algebra.PortFiber.TopologicalRingCertificate
      GRWTSK.Topology.Algebra.PortFiber.Fixtures.complexFunctionFiber ringPort :=
  ringPath.certified

/-- The path-level topological-ring certificate is the second local theorem. -/
def topologicalRingStage : BoundStage :=
  BoundStage.ofPort
    GRWTSK.Topology.Algebra.PortFiber.Fixtures.complexFunctionFiber
    ringPort
    (GRWTSK.Topology.Algebra.PortFiber.TopologicalRingCertificate
      GRWTSK.Topology.Algebra.PortFiber.Fixtures.complexFunctionFiber ringPort)
    ringCertificate
    (GRWTSK.Topology.Algebra.PortFiber.TopologicalRingCertificate
      GRWTSK.Topology.Algebra.PortFiber.Fixtures.complexFunctionFiber ringPort)
    ringCertificate
    { repository := "grwtsk/math"
      revision := "issue-230-portfiber-holomorphy"
      path := "GRWTSK/Topology/Algebra/PortFiberRing.lean"
      declaration := "Fixtures.complexIdentityPath_certified" }
    "portfiber-topological-ring-path-v2"

/-- Stage family mixing holomorphic and topological-ring proofs without coercing either. -/
def stage : StageIndex → BoundStage
  | .holomorphic => holomorphicStage
  | .topologicalRing => topologicalRingStage

/-- RH-facing architecture: every current local stage is proved and RH remains explicitly open. -/
def architecture : Architecture StageIndex where
  stage := stage
  targetDisposition := .unresolved
    "Riemann Hypothesis remains independent of the certified local port-fiber stages"

/-- Both local certification theorems are available simultaneously. -/
theorem all_local_stages (i : StageIndex) : architecture.LocalClaim i :=
  architecture.allLocal i

/-- The committed fixture records an unresolved RH target, not a proof or refutation. -/
theorem rh_disposition_is_unresolved :
    architecture.targetDisposition = .unresolved
      "Riemann Hypothesis remains independent of the certified local port-fiber stages" :=
  rfl

end Fixtures

end GRWTSK.NumberTheory.Zeta.Riemann.PortFiberArchitecture
```
