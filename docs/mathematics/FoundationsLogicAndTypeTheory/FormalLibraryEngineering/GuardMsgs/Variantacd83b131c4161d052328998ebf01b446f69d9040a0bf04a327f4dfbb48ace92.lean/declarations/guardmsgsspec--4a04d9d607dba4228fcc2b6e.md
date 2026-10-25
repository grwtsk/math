# GuardMsgsSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:618d26c868d9476b6b1c9d16ccfe8b69df09b47e7ab22f0be0b19ce0af98d543",
  "kind": "structure",
  "lexical_name": "GuardMsgsSpec",
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
  "slug": "guardmsgsspec--4a04d9d607dba4228fcc2b6e",
  "source": {
    "blob": "d5bdd00f7821327940d49248e38c24b37af06e1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variantacd83b131c4161d052328998ebf01b446f69d9040a0bf04a327f4dfbb48ace92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a04d9d607dba4228fcc2b6e46ad3770e2b3c5b572affc257e525044e0b00fb3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variantacd83b131c4161d052328998ebf01b446f69d9040a0bf04a327f4dfbb48ace92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:618d26c868d9476b6b1c9d16ccfe8b69df09b47e7ab22f0be0b19ce0af98d543`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GuardMsgsSpec where
  /-- Method for deciding whether and how to filter messages; see `FilterSpec`. -/
  filterFn : Message → FilterSpec := fun _ => .check
  /-- Method to use when normalizing whitespace, after trimming; see `WhitespaceMode`. -/
  whitespace : WhitespaceMode := .normalized
  /-- Method to use when combining multiple messages; see `MessageOrdering`. -/
  ordering : MessageOrdering := .exact
  /-- Whether to report position information. -/
  reportPositions : Bool := false
  /-- Whether to check for substring containment instead of exact match. -/
  substring : Bool := false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variantacd83b131c4161d052328998ebf01b446f69d9040a0bf04a327f4dfbb48ace92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variantacd83b131c4161d052328998ebf01b446f69d9040a0bf04a327f4dfbb48ace92.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5bdd00f7821327940d49248e38c24b37af06e1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
