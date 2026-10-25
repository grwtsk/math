# Iter.Partial.find?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2ad52e62a74a451c3e74e0518d7ef87ae4e9d9f2d51d1d11a08086e5bfc1f81",
  "kind": "def",
  "lexical_name": "Iter.Partial.find?",
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
  "slug": "iter-partial-find--091abeed339f285edd9292dd",
  "source": {
    "blob": "79d052fa3c8089a7a51b105e1c5da23912fb7684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 637,
    "line": 619,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:091abeed339f285edd9292dde794a174c9d0583ad499088a12dbe78673a12296",
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

Occurrence: `declaration:e2ad52e62a74a451c3e74e0518d7ef87ae4e9d9f2d51d1d11a08086e5bfc1f81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–637.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Iter.Partial.find? {α β : Type w} [Iterator α Id β] [IteratorLoop α Id Id]
    (it : Iter.Partial (α := α) β) (f : β → Bool) : Option β :=
  it.it.find? f

/--
Returns the first output of the iterator for which the predicate `p` returns `true`, or `none` if
no such output is found.

`O(|it|)`. Short-circuits upon encountering the first match. The elements in `it` are examined in
order of iteration.

This variant terminates after finitely many steps and requires a proof that the iterator is
finite. If such a proof is not available, consider using `Iter.find?`.

Examples:
* `[7, 6, 5, 8, 1, 2, 6].iter.find? (· < 5) = some 1`
* `[7, 6, 5, 8, 1, 2, 6].iter.find? (· < 1) = none`
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Loop/Variant87e11dbce4303ceb8c66db2c586589ec13c9f62f510c17eefbd6fec7bd265395.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79d052fa3c8089a7a51b105e1c5da23912fb7684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
