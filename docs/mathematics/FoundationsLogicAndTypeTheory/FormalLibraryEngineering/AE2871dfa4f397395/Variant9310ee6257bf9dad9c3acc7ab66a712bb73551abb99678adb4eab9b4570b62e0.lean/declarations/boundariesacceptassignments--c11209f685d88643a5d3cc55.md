# BoundariesAcceptAssignments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c00de0900bb497cf36394cbbc16decb997077e506a3e21dd40b88f21be033842",
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
  "slug": "boundariesacceptassignments--c11209f685d88643a5d3cc55",
  "source": {
    "blob": "5f68dd08a0f1dd87a0428cc227451eced0eabdd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE2871dfa4f397395/Variant9310ee6257bf9dad9c3acc7ab66a712bb73551abb99678adb4eab9b4570b62e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c11209f685d88643a5d3cc55554e7d385146919a6c477da017b1bfba79e96d22",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE2871dfa4f397395/Variant9310ee6257bf9dad9c3acc7ab66a712bb73551abb99678adb4eab9b4570b62e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c00de0900bb497cf36394cbbc16decb997077e506a3e21dd40b88f21be033842`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–35.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE2871dfa4f397395/Variant9310ee6257bf9dad9c3acc7ab66a712bb73551abb99678adb4eab9b4570b62e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AE2871dfa4f397395/Variant9310ee6257bf9dad9c3acc7ab66a712bb73551abb99678adb4eab9b4570b62e0.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f68dd08a0f1dd87a0428cc227451eced0eabdd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
