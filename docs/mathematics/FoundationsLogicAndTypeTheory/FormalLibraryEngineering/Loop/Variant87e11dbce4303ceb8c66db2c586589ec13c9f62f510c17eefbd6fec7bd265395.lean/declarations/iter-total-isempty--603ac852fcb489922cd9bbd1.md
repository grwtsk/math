# Iter.Total.isEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f526be18b3389ecc33b86d4f067add7f0bb04339764866a8cbf2b6e36ac8a92",
  "kind": "def",
  "lexical_name": "Iter.Total.isEmpty",
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
  "slug": "iter-total-isempty--603ac852fcb489922cd9bbd1",
  "source": {
    "blob": "79d052fa3c8089a7a51b105e1c5da23912fb7684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 722,
    "line": 711,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:603ac852fcb489922cd9bbd12b1ec51db1465164a06078b4eeb9f8c9d6438c64",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f526be18b3389ecc33b86d4f067add7f0bb04339764866a8cbf2b6e36ac8a92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–722.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Iter.Total.isEmpty {α β : Type w} [Iterator α Id β] [IteratorLoop α Id Id] [Productive α Id]
    (it : Iter.Total (α := α) β) : Bool :=
  it.it.isEmpty

/--
Steps through the whole iterator, counting the number of outputs emitted.

**Performance**:

This function's runtime is linear in the number of steps taken by the iterator.
-/
@[always_inline, inline, expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d052fa3c8089a7a51b105e1c5da23912fb7684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
