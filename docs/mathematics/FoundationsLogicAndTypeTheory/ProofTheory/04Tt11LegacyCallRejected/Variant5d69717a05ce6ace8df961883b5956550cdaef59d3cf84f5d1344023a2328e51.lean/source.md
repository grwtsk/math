# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.04Tt11LegacyCallRejected.Variant5d69717a05ce6ace8df961883b5956550cdaef59d3cf84f5d1344023a2328e51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1149a7961b96dc5cda1dc41f84581f5219b222b5` · SHA-256 `5d69717a05ce6ace8df961883b5956550cdaef59d3cf84f5d1344023a2328e51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Theorems.TT11_ReflectiveRecovery

namespace FCRS.Transport.Theorems.Cycle6.LegacyCall

universe uInput uWitness uCoordinate uIntensionalEdge uMaterializedEdge

variable {Input : Type uInput} {Witness : Type uWitness}
variable {Coordinate : Type uCoordinate}
variable {IntensionalEdge : Type uIntensionalEdge}
variable {MaterializedEdge : Type uMaterializedEdge}
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
variable {derivationRef : ArtifactRef .transportDerivation}

local notation "LegacyCompletedDerivation" => TransportDerivation
  derivationRef profile certified input method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence

/-- The complete superseded argument sequence cannot call the corrected TT-11. -/
example
    (derivation : LegacyCompletedDerivation)
    (provenance : ReflectiveRecoveryProvenance derivation)
    (validationExecution : ValidationExecution materializedGraph.version)
    (validationResult : ValidationResult validationExecution)
    (validationDecision : AcceptanceDecision validationResult)
    (realizationReflects : RealizationReflection specification materializedGraph)
    (sieveReflects : SieveReflection constraint specification)
    (coordinateReflects : InterpretationReflection profile interpretation constraint) :
    True := by
  fail_if_success
    exact tt11_reflectiveRecovery derivation provenance validationExecution
      validationResult validationDecision realizationReflects sieveReflects
      coordinateReflects
  trivial

end FCRS.Transport.Theorems.Cycle6.LegacyCall
```
