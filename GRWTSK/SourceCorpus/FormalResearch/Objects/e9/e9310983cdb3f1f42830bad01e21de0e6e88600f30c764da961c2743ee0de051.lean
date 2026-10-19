import GatewayProof.Authority

namespace GatewayProof
namespace Boundary

open GatewayProof.Authority

inductive ProjectionSurface
| targetServiceDescriptor
| targetGatewayDescriptor
| songAdventurePacket
| arrowStreamPacket
| repositoryProofRun
| bufferCarriagePacket
deriving Repr, DecidableEq

structure BoundaryFlags where
  candidateOnly : Bool
  createsRoute : Bool
  provesRuntime : Bool
  quiverTruthMoved : Bool
  bowReleaseMoved : Bool
  callIntakeMoved : Bool
  targetCustodyMoved : Bool
  operatorConsentCreated : Bool
deriving Repr, DecidableEq

def flagsFor : ProjectionSurface -> BoundaryFlags
| .targetServiceDescriptor => { candidateOnly := true, createsRoute := false, provesRuntime := false, quiverTruthMoved := false, bowReleaseMoved := false, callIntakeMoved := false, targetCustodyMoved := false, operatorConsentCreated := false }
| .targetGatewayDescriptor => { candidateOnly := true, createsRoute := false, provesRuntime := false, quiverTruthMoved := false, bowReleaseMoved := false, callIntakeMoved := false, targetCustodyMoved := false, operatorConsentCreated := false }
| .songAdventurePacket => { candidateOnly := true, createsRoute := false, provesRuntime := false, quiverTruthMoved := false, bowReleaseMoved := false, callIntakeMoved := false, targetCustodyMoved := false, operatorConsentCreated := false }
| .arrowStreamPacket => { candidateOnly := true, createsRoute := false, provesRuntime := false, quiverTruthMoved := false, bowReleaseMoved := false, callIntakeMoved := false, targetCustodyMoved := false, operatorConsentCreated := false }
| .repositoryProofRun => { candidateOnly := false, createsRoute := false, provesRuntime := false, quiverTruthMoved := false, bowReleaseMoved := false, callIntakeMoved := false, targetCustodyMoved := false, operatorConsentCreated := false }
| .bufferCarriagePacket => { candidateOnly := true, createsRoute := false, provesRuntime := false, quiverTruthMoved := false, bowReleaseMoved := false, callIntakeMoved := false, targetCustodyMoved := false, operatorConsentCreated := false }

def noBoundaryCollapse (surface : ProjectionSurface) : Prop :=
  (flagsFor surface).createsRoute = false ∧
  (flagsFor surface).provesRuntime = false ∧
  (flagsFor surface).quiverTruthMoved = false ∧
  (flagsFor surface).bowReleaseMoved = false ∧
  (flagsFor surface).callIntakeMoved = false ∧
  (flagsFor surface).targetCustodyMoved = false ∧
  (flagsFor surface).operatorConsentCreated = false

theorem target_service_descriptor_no_boundary_collapse :
    noBoundaryCollapse ProjectionSurface.targetServiceDescriptor := by
  simp [noBoundaryCollapse, flagsFor]

theorem target_gateway_descriptor_no_boundary_collapse :
    noBoundaryCollapse ProjectionSurface.targetGatewayDescriptor := by
  simp [noBoundaryCollapse, flagsFor]

theorem song_packet_no_boundary_collapse :
    noBoundaryCollapse ProjectionSurface.songAdventurePacket := by
  simp [noBoundaryCollapse, flagsFor]

theorem repository_proof_run_not_runtime_proof :
    (flagsFor ProjectionSurface.repositoryProofRun).provesRuntime = false := by
  rfl

theorem gateway_boundary_transport_only :
    gatewayBoundary.gatewayTransportOnly = true ∧
    gatewayBoundary.quiverTruthTransferred = false ∧
    gatewayBoundary.bowReleaseTransferred = false ∧
    gatewayBoundary.callIntakeTransferred = false ∧
    gatewayBoundary.targetExecutionCustodyTransferred = false ∧
    gatewayBoundary.operatorConsentCreated = false ∧
    gatewayBoundary.hostedRuntimeProofCreated = false := by
  simp [gatewayBoundary]

end Boundary
end GatewayProof
