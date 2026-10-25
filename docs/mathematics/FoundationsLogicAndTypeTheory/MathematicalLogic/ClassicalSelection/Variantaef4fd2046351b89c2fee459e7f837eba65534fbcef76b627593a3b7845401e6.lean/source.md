# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ClassicalSelection.Variantaef4fd2046351b89c2fee459e7f837eba65534fbcef76b627593a3b7845401e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7179c46a13bd037d45268a18583d690be2179fa` · SHA-256 `aef4fd2046351b89c2fee459e7f837eba65534fbcef76b627593a3b7845401e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Witness

universe uInput uWitness

namespace FCRS.Transport.Mathematical

/-!
This module is the isolated mathematical choice boundary.  Materialized
transport theorem modules do not import it, and its result is indexed by
`ClassicalChoice`, so it cannot masquerade as verified search or another
materializable selection method.
-/

/-- Explicitly noncomputable selection from existential evidence. -/
noncomputable def classicalSelectedWitness
    {Input : Type uInput} {Witness : Type uWitness}
    {profile : IntervalProfile Input Witness}
    {certified : CertifiedIntervalTheorem profile}
    {input : Input}
    {application : TheoremApplication certified input}
    {existence : ExistenceEvidence application}
    {method : SelectionMethod .ClassicalChoice Input Witness}
    (eventArtifact : ArtifactRef .selectionEvent)
    (methodEvidence :
      method.certifies input (Classical.choose existence.witnessExists)) :
    Σ selection : WitnessSelectionEvent existence method,
      SelectedWitness selection :=
  let candidate : IntervalWitness profile input := {
    value := Classical.choose existence.witnessExists
    evidence := Classical.choose_spec existence.witnessExists
  }
  let selection : WitnessSelectionEvent existence method := {
    eventArtifact := eventArtifact
    result := candidate
    methodEvidence := methodEvidence
  }
  ⟨selection, {
    intervalWitness := candidate
    eventResultExact := rfl
  }⟩

end FCRS.Transport.Mathematical
```
