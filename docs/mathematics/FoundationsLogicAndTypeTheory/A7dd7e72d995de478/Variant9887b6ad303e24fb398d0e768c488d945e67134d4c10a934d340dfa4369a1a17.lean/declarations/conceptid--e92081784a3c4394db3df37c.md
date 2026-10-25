# conceptId?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff814b2952c4aec9bedab9b71de7d76fec989c33e454f9dc743b007fef6c2214",
  "kind": "def",
  "lexical_name": "conceptId?",
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
  "slug": "conceptid--e92081784a3c4394db3df37c",
  "source": {
    "blob": "e7a918b134c1ddff3d9eb4992bd5b50d423e4a14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 78,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/A7dd7e72d995de478/Variant9887b6ad303e24fb398d0e768c488d945e67134d4c10a934d340dfa4369a1a17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e92081784a3c4394db3df37cc60d06104bdb52036d7ecd78154af5f82f4a2b72",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/A7dd7e72d995de478/Variant9887b6ad303e24fb398d0e768c488d945e67134d4c10a934d340dfa4369a1a17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff814b2952c4aec9bedab9b71de7d76fec989c33e454f9dc743b007fef6c2214`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conceptId? : PrimaryDisposition → Option ConceptId
  | .ownedBy conceptId => some conceptId
  | .generatedUnder conceptId _ => some conceptId
  | .importedExternal conceptId => some conceptId
  | .explicitInternal _ => none

/-- Generated ownership exposes its exact parent entity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/A7dd7e72d995de478/Variant9887b6ad303e24fb398d0e768c488d945e67134d4c10a934d340dfa4369a1a17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/A7dd7e72d995de478/Variant9887b6ad303e24fb398d0e768c488d945e67134d4c10a934d340dfa4369a1a17.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7a918b134c1ddff3d9eb4992bd5b50d423e4a14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
