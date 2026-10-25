# BoundariesAcceptAssignments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8431c7f9497f1a4475d2fc716248ce060e54cc4384ec3b44ffe039104489378",
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
  "slug": "boundariesacceptassignments--70a985b295d5ef146e6d7a26",
  "source": {
    "blob": "811c52ac7cbb025154a9ab24e2f2a6c7c95e6bc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE2871dfa4f397395/Variant466f46de7a96dafe49fe52afd7ed59ac6f7192c1d7169e549c730233592579ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70a985b295d5ef146e6d7a266a7f19dd2da0db04b38a4e59ccc4e434754fe06b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE2871dfa4f397395/Variant466f46de7a96dafe49fe52afd7ed59ac6f7192c1d7169e549c730233592579ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e8431c7f9497f1a4475d2fc716248ce060e54cc4384ec3b44ffe039104489378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–43.

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

end MathDiscovery.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE2871dfa4f397395/Variant466f46de7a96dafe49fe52afd7ed59ac6f7192c1d7169e549c730233592579ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE2871dfa4f397395/Variant466f46de7a96dafe49fe52afd7ed59ac6f7192c1d7169e549c730233592579ee.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `811c52ac7cbb025154a9ab24e2f2a6c7c95e6bc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
