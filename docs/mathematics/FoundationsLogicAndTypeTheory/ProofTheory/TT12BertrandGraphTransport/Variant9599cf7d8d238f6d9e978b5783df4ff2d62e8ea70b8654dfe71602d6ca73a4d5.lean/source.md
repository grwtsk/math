# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.TT12BertrandGraphTransport.Variant9599cf7d8d238f6d9e978b5783df4ff2d62e8ea70b8654dfe71602d6ca73a4d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b3871db1580c81a609509400ea4f4436693e598` · SHA-256 `9599cf7d8d238f6d9e978b5783df4ff2d62e8ea70b8654dfe71602d6ca73a4d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Theorems.TT01_Bertrand
import FCRS.Transport.Theorems.TT08_TransportComposition

universe uCoordinate uIntensionalEdge uMaterializedEdge

namespace FCRS.Transport.Theorems

/-!
Specialized Bertrand transport. TT-01 first supplies existential interval
evidence. An explicit selection plan for the declared nonclassical method then
certifies one exact interval witness. The source coordinate is interpreted
from `n`, the target coordinate from that selected prime `q`, and the result
retains every typed stage through operational commitment.
-/

theorem tt12_bertrandGraphTransport
    {Coordinate : Type uCoordinate}
    {IntensionalEdge : Type uIntensionalEdge}
    {MaterializedEdge : Type uMaterializedEdge}
    (n : Nat) (hn : 1 < n)
    (identity : TransportDerivationIdentity)
    {methodKind : SelectionMethodKind}
    (method : SelectionMethod methodKind Nat Nat)
    (materializable : MaterializableSelectionKind methodKind)
    (selectionPlan :
      (∃ q, bertrandProfile.admissible n q) →
        ∃ candidate : IntervalWitness bertrandProfile n,
          method.certifies n candidate.value)
    (interpretation : BinaryInterpretation Nat Nat Coordinate)
    (constraint : BinaryConstraint Coordinate)
    (interpretationBridge : InterpretationBridge
      bertrandProfile interpretation constraint)
    (specification : SieveSpecification Coordinate)
    (procedure : SieveProcedure specification)
    (soundness : SieveSoundness procedure)
    (completeness : SieveCompleteness procedure)
    (evidenceTheory :
      SieveEvidenceTheoryVersion (some soundness) (some completeness))
    (constraintSieveBridge : ConstraintSieveBridge constraint specification)
    (intensionalGraph :
      CoordinateGraph .Intensional Coordinate IntensionalEdge)
    (intensionalSemantics :
      IntensionalGraphSemantics specification intensionalGraph)
    (materializedGraph :
      CoordinateGraph .Materialized Coordinate MaterializedEdge)
    (realizationContract :
      RealizationContract soundness materializedGraph)
    (consequence : GraphConsequence materializedGraph)
    (proveConsequence :
      ∀ candidate : IntervalWitness bertrandProfile n,
        ∀ _occurrence : EdgeOccurrence materializedGraph
            (interpretation.source n)
            (interpretation.target candidate.value),
          consequence.statement)
    (validationClaim : Prop)
    (validationEvidence : validationClaim) :
    ∃ q : Nat,
      Nat.Prime q ∧ n < q ∧ q < 2 * n ∧
        ∃ selectedIntervalWitness : IntervalWitness bertrandProfile n,
          selectedIntervalWitness.value = q ∧
          ∃ selectionMethodEvidence :
              method.certifies n selectedIntervalWitness.value,
            ∃ derivation : TransportDerivation
                identity.derivationRef bertrandProfile
                bertrandCertifiedTheorem n method interpretation constraint
                interpretationBridge specification procedure soundness
                (some completeness) evidenceTheory constraintSieveBridge
                intensionalGraph intensionalSemantics materializedGraph
                realizationContract consequence,
              TransportDerivationRetains derivation identity
                selectedIntervalWitness materializable
                selectionMethodEvidence validationClaim validationEvidence := by
  have hExistence : ∃ q, bertrandProfile.admissible n q := by
    obtain ⟨q, hPrime, hnq, hqUpper⟩ := tt01_bertrand n hn
    exact ⟨q, bertrandAdmissible hn hPrime hnq hqUpper⟩
  obtain ⟨selectedIntervalWitness, selectionMethodEvidence⟩ :=
    selectionPlan hExistence
  let q := selectedIntervalWitness.value
  have hAdmissible : bertrandProfile.admissible n q :=
    selectedIntervalWitness.evidence
  have hPrime : Nat.Prime q := hAdmissible.2.2
  have hnq : n < q := hAdmissible.2.1.1
  have hqUpper : q < 2 * n := hAdmissible.2.1.2
  obtain ⟨derivation, retention⟩ :=
    tt08_transportComposition
    identity materializable
    selectedIntervalWitness selectionMethodEvidence
    (proveConsequence selectedIntervalWitness)
    validationClaim validationEvidence
  exact ⟨q, hPrime, hnq, hqUpper, selectedIntervalWitness, rfl,
    selectionMethodEvidence, derivation, retention⟩

end FCRS.Transport.Theorems
```
