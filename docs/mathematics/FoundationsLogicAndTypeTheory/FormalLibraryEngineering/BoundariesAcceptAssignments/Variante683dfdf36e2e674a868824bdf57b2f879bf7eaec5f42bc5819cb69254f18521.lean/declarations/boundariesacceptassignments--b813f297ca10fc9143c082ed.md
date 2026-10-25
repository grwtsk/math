# BoundariesAcceptAssignments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77674f9f48405c9dd307562d615b1624f2ffa6cd59805e566e17ea9f0a66bf1a",
  "kind": "def",
  "lexical_name": "BoundariesAcceptAssignments",
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
  "slug": "boundariesacceptassignments--b813f297ca10fc9143c082ed",
  "source": {
    "blob": "07f99316b3f162ace0fc29553fe2b0d761879741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundariesAcceptAssignments/Variante683dfdf36e2e674a868824bdf57b2f879bf7eaec5f42bc5819cb69254f18521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b813f297ca10fc9143c082ed19eeba02426fc9f7ee83d19f254e2b5f353a6ca0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundariesAcceptAssignments/Variante683dfdf36e2e674a868824bdf57b2f879bf7eaec5f42bc5819cb69254f18521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77674f9f48405c9dd307562d615b1624f2ffa6cd59805e566e17ea9f0a66bf1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BoundariesAcceptAssignments
    (snapshot : Snapshot) (ledger : Ledger) : Prop :=
  ∀ assignment ∈ ledger.assignments,
    ∀ entity ∈ snapshot.entities,
      assignment.entityId = entity.id →
        match assignment.disposition with
        | .explicitInternal _ => True
        | .ownedBy conceptId =>
            ∃ concept ∈ ledger.concepts,
              concept.id = conceptId ∧ concept.AcceptsEntity entity.semanticProfile
        | .importedExternal conceptId =>
            ∃ concept ∈ ledger.concepts,
              concept.id = conceptId ∧ concept.AcceptsEntity entity.semanticProfile
        | .generatedUnder conceptId _ =>
            ∃ concept ∈ ledger.concepts,
              concept.id = conceptId ∧ concept.AcceptsEntity entity.semanticProfile

end Ledger

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundariesAcceptAssignments/Variante683dfdf36e2e674a868824bdf57b2f879bf7eaec5f42bc5819cb69254f18521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundariesAcceptAssignments/Variante683dfdf36e2e674a868824bdf57b2f879bf7eaec5f42bc5819cb69254f18521.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07f99316b3f162ace0fc29553fe2b0d761879741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
