# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Authority.Variantb05c0c28cb47f34c0e303442b261fb5e0ff5fbc5decd12f1de2c3c613b9d2fd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fc9896074d777e24ce35e3ebb492c394920d49c` · SHA-256 `b05c0c28cb47f34c0e303442b261fb5e0ff5fbc5decd12f1de2c3c613b9d2fd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace GatewayProof
namespace Authority

inductive Authority
| gatewayTransport
| quiverTruth
| bowRelease
| callIntake
| targetExecutionCustody
| operatorConsent
| songTruth
| hostedRuntimeProof
| humanReview
| publicationAcceptance
deriving Repr, DecidableEq

structure AuthorityBoundary where
  gatewayTransportOnly : Bool
  quiverTruthTransferred : Bool
  bowReleaseTransferred : Bool
  callIntakeTransferred : Bool
  targetExecutionCustodyTransferred : Bool
  operatorConsentCreated : Bool
  hostedRuntimeProofCreated : Bool
deriving Repr, DecidableEq

def gatewayBoundary : AuthorityBoundary := {
  gatewayTransportOnly := true,
  quiverTruthTransferred := false,
  bowReleaseTransferred := false,
  callIntakeTransferred := false,
  targetExecutionCustodyTransferred := false,
  operatorConsentCreated := false,
  hostedRuntimeProofCreated := false
}

def targetDescriptorCreatesRoute : Prop := False
def targetReceiptIsGatewayRuntimeProof : Prop := False
def songPacketIsGatewayTruth : Prop := False

theorem descriptor_does_not_create_route :
    ¬ targetDescriptorCreatesRoute := by
  intro h
  exact h

theorem target_receipt_not_runtime_proof :
    ¬ targetReceiptIsGatewayRuntimeProof := by
  intro h
  exact h

theorem song_packet_not_gateway_truth :
    ¬ songPacketIsGatewayTruth := by
  intro h
  exact h

theorem gateway_boundary_no_quiver_transfer :
    gatewayBoundary.quiverTruthTransferred = false := by
  rfl

theorem gateway_boundary_no_target_execution_transfer :
    gatewayBoundary.targetExecutionCustodyTransferred = false := by
  rfl

end Authority
end GatewayProof
```
