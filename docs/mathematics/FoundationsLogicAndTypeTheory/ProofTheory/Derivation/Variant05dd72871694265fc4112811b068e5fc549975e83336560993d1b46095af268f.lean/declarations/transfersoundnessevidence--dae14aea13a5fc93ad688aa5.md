# TransferSoundnessEvidence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6be5a7274fb034affe3db134a5cabfa6cc80051ce7b41b10e2389d115279e59c",
  "kind": "inductive",
  "lexical_name": "TransferSoundnessEvidence",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "transfersoundnessevidence--dae14aea13a5fc93ad688aa5",
  "source": {
    "blob": "7aed9cf8c44c5b20dbd74facbb00a3769ee52e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 344,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dae14aea13a5fc93ad688aa5984a9bd251201e56f00feed8c807785980364a7f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6be5a7274fb034affe3db134a5cabfa6cc80051ce7b41b10e2389d115279e59c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive TransferSoundnessEvidence
    {source : Theory.{uSO, uSP}}
    {target : Theory.{uTO, uTP}}
    {sourceFoundation targetFoundation : Foundation}
    {sourceVersion : MathematicalTheoryVersion source sourceFoundation}
    {targetVersion : MathematicalTheoryVersion target targetFoundation}
    {sourceAssumptions : AssumptionSet source}
    {targetAssumptions : AssumptionSet target}
    {sourceScope : TransferScope source}
    {targetScope : TransferScope target}
    (translation : Translation source target sourceVersion targetVersion
      sourceAssumptions targetAssumptions sourceScope targetScope)
    (preservation : PreservationTheorem translation)
    (sourceTheorem : CertifiedTheorem sourceVersion sourceAssumptions)
    (targetTheorem : CertifiedTheorem targetVersion targetAssumptions)
    (declaredRegime : Option (EquivalenceRegime target)) :
    TransferSoundnessLevel →
      Type (max (max (uSO + 1) (uSP + 1))
        (max (uTO + 1) (uTP + 1))) where
  | syntacticallyTranslated (evidence : SyntacticTranslationEvidence) :
      TransferSoundnessEvidence translation preservation sourceTheorem targetTheorem
        declaredRegime .SyntacticallyTranslated
  | semanticallyPreserved :
      TransferSoundnessEvidence translation preservation sourceTheorem targetTheorem
        declaredRegime .SemanticallyPreserved
  | proofPreserved
      (proofMap : ProofPreservationClaim translation sourceTheorem targetTheorem) :
      TransferSoundnessEvidence translation preservation sourceTheorem targetTheorem
        declaredRegime .ProofPreserved
  | propertyReflected (reflection : ReflectionTheorem translation) :
      TransferSoundnessEvidence translation preservation sourceTheorem targetTheorem
        declaredRegime .PropertyReflected
  | bidirectionallyEquivalent (equivalence : EquivalenceWitness translation) :
      TransferSoundnessEvidence translation preservation sourceTheorem targetTheorem
        declaredRegime .BidirectionallyEquivalent
  | representationIndependent
      (equivalence : EquivalenceWitness translation)
      (independence : RepresentationIndependenceClaim translation
        targetTheorem.proposition)
      (regimeExact : declaredRegime = some independence.regime) :
      TransferSoundnessEvidence translation preservation sourceTheorem targetTheorem
        declaredRegime .RepresentationIndependent

/--
Recursive realization of translation lineage as an ordered path through the
actual dependency DAG.  An atomic leaf is tied to one real edge.  A composite
must expose a genuine middle node with an exact theory-version identity and a
present proposition artifact, then realize its two children on the two sides
of that same middle node.  Parallel endpoint edges cannot inhabit this type.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Derivation/Variant05dd72871694265fc4112811b068e5fc549975e83336560993d1b46095af268f.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aed9cf8c44c5b20dbd74facbb00a3769ee52e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
