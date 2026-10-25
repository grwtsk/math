# classicalSelectedWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86672a4fb3bc3755ebac5d42a780a1ac4ea19e5d881cb88f5d56ac24caf7f214",
  "kind": "def",
  "lexical_name": "classicalSelectedWitness",
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
  "slug": "classicalselectedwitness--33657a370eb7d3bf6f0ced6f",
  "source": {
    "blob": "5107fcb7def6da94a876a362f6519adb65cbe95d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassicalSelection/Variant734057bee46fb23c6b7b33444c31c88d5d6697cb5b69f1b93650fe5e4edca868.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33657a370eb7d3bf6f0ced6fd201130fb86f5f7ca85e46e6cd8da50597edfb5c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassicalSelection/Variant734057bee46fb23c6b7b33444c31c88d5d6697cb5b69f1b93650fe5e4edca868.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86672a4fb3bc3755ebac5d42a780a1ac4ea19e5d881cb88f5d56ac24caf7f214`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassicalSelection/Variant734057bee46fb23c6b7b33444c31c88d5d6697cb5b69f1b93650fe5e4edca868.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassicalSelection/Variant734057bee46fb23c6b7b33444c31c88d5d6697cb5b69f1b93650fe5e4edca868.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5107fcb7def6da94a876a362f6519adb65cbe95d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
