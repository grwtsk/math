# findIndexAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d456c6c65eab9cef2a16cfcfdcbf1dc4bab2c89ede85a6440d40fa0744f495a9",
  "kind": "def",
  "lexical_name": "findIndexAux",
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
  "slug": "findindexaux--ebd27fdd3ad1d332b702bb95",
  "source": {
    "blob": "7a3e407dea17535d37b4c9068d428ded1133472c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1248,
    "line": 1234,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant9bf6d50c0376140d69fd29f1207ac1d9c7ba737eabbe7ad6e31a3b0cabe3166b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebd27fdd3ad1d332b702bb95b28724746773a778f48ee8002095f75d55401ad8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant9bf6d50c0376140d69fd29f1207ac1d9c7ba737eabbe7ad6e31a3b0cabe3166b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d456c6c65eab9cef2a16cfcfdcbf1dc4bab2c89ede85a6440d40fa0744f495a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1234–1248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findIndexAux (x : α) : Ordnode α → ℕ → Option ℕ
  | nil, _ => none
  | node _ l y r, i =>
    match cmpLE x y with
    | Ordering.lt => findIndexAux x l i
    | Ordering.eq => some (i + size l)
    | Ordering.gt => findIndexAux x r (i + size l + 1)
#align ordnode.find_index_aux Ordnode.findIndexAux

/-- O(log n). Get the index, counting from the left,
of an element equivalent to `x` if it exists.

    findIndex 2 {1, 2, 4} = some 1
    findIndex 4 {1, 2, 4} = some 2
    findIndex 5 {1, 2, 4} = none -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant9bf6d50c0376140d69fd29f1207ac1d9c7ba737eabbe7ad6e31a3b0cabe3166b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant9bf6d50c0376140d69fd29f1207ac1d9c7ba737eabbe7ad6e31a3b0cabe3166b.lean#L1234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a3e407dea17535d37b4c9068d428ded1133472c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
