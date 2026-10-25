# close

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef31aba591fd8e63f505b43ce3f4f765f691e793acf644cebaf0447ea50b99fd",
  "kind": "def",
  "lexical_name": "close",
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
  "slug": "close--32224dc45e17ac5110bbacdf",
  "source": {
    "blob": "b7d1cf2b971c5845cd7e618c0c75633e8aa69782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32224dc45e17ac5110bbacdfdf4ed2f211bb82c51445982c07ab905f043b9e57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef31aba591fd8e63f505b43ce3f4f765f691e793acf644cebaf0447ea50b99fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def close (ch : Bounded α) : EIO Broadcast.Error Unit := do
  ch.state.atomically do
    let st ← get

    if st.closed then
      throw .alreadyClosed

    for consumer in st.waiters.toArray do
      consumer.resolve false

    set { st with waiters := ∅, closed := true }
    return ()

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7d1cf2b971c5845cd7e618c0c75633e8aa69782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
