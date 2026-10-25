# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.03ReflectiveRecoveryPremiseContainsConclusion.Variantfa9e3378fdc6663e68ffb7e0e579e02940f22a125e29b9d1c403a7170f296396

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10633732bc1213d077b75616b60c06c1ab5d7768` · SHA-256 `fa9e3378fdc6663e68ffb7e0e579e02940f22a125e29b9d1c403a7170f296396`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Theorems.TT11_ReflectiveRecovery

namespace FCRS.Transport.Theorems.Cycle5ReflectiveRecovery

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

local notation "CompletedDerivation" => TransportDerivation
  derivationRef profile certified input method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence

/-!
This has exactly the conclusion of `tt11_reflectiveRecovery`, but needs none of
its occurrence, validation, acceptance, or reflection arguments.  The complete
derivation premise already stores an `IntervalWitness`, whose evidence field is
the desired source proposition.
-/
theorem recoveryWithoutTargetOccurrenceOrReflection
    (derivation : CompletedDerivation) :
    profile.admissible input derivation.selectedWitness.value :=
  derivation.selectedWitness.intervalWitness.evidence

#check recoveryWithoutTargetOccurrenceOrReflection

end FCRS.Transport.Theorems.Cycle5ReflectiveRecovery
```
