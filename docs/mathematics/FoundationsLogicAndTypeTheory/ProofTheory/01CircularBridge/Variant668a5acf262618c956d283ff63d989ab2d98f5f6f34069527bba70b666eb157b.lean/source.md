# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.01CircularBridge.Variant668a5acf262618c956d283ff63d989ab2d98f5f6f34069527bba70b666eb157b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee1f2cbc8256c3833643357bdd6a15843cbea909` · SHA-256 `668a5acf262618c956d283ff63d989ab2d98f5f6f34069527bba70b666eb157b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.TheoremTransfer.Adapters.FCRSFullDerivation

namespace FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle3Witness

open FCRS.Transport

universe uInput uWitness uCoordinate uIntensionalEdge uMaterializedEdge

variable {Input : Type uInput} {Witness : Type uWitness}
variable {Coordinate : Type uCoordinate}
variable {IntensionalEdge : Type uIntensionalEdge}
variable {MaterializedEdge : Type uMaterializedEdge}
variable {derivationRef : ArtifactRef .transportDerivation}
variable {profile : IntervalProfile Input Witness}
variable {certified : CertifiedIntervalTheorem profile}
variable {input : Input}
variable {methodKind : SelectionMethodKind}
variable {method : SelectionMethod methodKind Input Witness}
variable {interpretation : BinaryInterpretation Input Witness Coordinate}
variable {constraint : BinaryConstraint Coordinate}
variable {interpretationBridge : InterpretationBridge profile interpretation constraint}
variable {specification : SieveSpecification Coordinate}
variable {procedure : SieveProcedure specification}
variable {soundness : SieveSoundness procedure}
variable {completeness : Option (SieveCompleteness procedure)}
variable {evidenceTheory : SieveEvidenceTheoryVersion (some soundness) completeness}
variable {constraintSieveBridge : ConstraintSieveBridge constraint specification}
variable {intensionalGraph : CoordinateGraph .Intensional Coordinate IntensionalEdge}
variable {intensionalSemantics : IntensionalGraphSemantics specification intensionalGraph}
variable {materializedGraph : CoordinateGraph .Materialized Coordinate MaterializedEdge}
variable {realizationContract : RealizationContract soundness materializedGraph}
variable {consequence : GraphConsequence materializedGraph}

local notation "NativeDerivation" => TransportDerivation
  derivationRef profile certified input method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence

/-- The bridge ignores its source premise and reuses the completed target proof. -/
def circularBridge (derivation : NativeDerivation) :
    FullNativePreservationBridge derivation where
  bridgeArtifact := projectionVersion "cycle-3-circular-bridge"
  bridgeDistinctFromTargetProof := by
    intro equality
    cases equality
  law := fun _sourceProof => derivation.graphConsequenceProof.proof

#check circularBridge

end FCRS.TheoremTransfer.Adapters.FCRSTransport.Cycle3Witness
```
