# checkMaxSteps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63dee3af8b565b08140da7d466a76832dbfdf0bc29c38854ba87b67bc79744f5",
  "kind": "def",
  "lexical_name": "checkMaxSteps",
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
  "slug": "checkmaxsteps--71aec3a2784b4d7a921e02db",
  "source": {
    "blob": "21532ab09212943466ed637c8ff45c3ee721c11b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71aec3a2784b4d7a921e02dbb28ab58400bcb1a81b58eea0dfb6a656e24f2045",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63dee3af8b565b08140da7d466a76832dbfdf0bc29c38854ba87b67bc79744f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkMaxSteps : SearchM Bool := do
  modify fun s => { s with steps := s.steps + 1 }
  return (← get').steps + (← get).steps > (← getConfig).liaSteps

/--
Adds the number of steps performed by the current search to the cumulative counter
in the cutsat state. It must be invoked after `resetDecisionStack` because backtracking
rolls back the cutsat state.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant51945a23d96b1024450df4c8870f05b07f1bb7f2b133051a77623e37ac660673.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21532ab09212943466ed637c8ff45c3ee721c11b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
