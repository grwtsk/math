# findLeAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68515ab56537b8a11c7d9c3d8c0b690d911e4666921b0a83ec69bed5da11a0a7",
  "kind": "def",
  "lexical_name": "findLeAux",
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
  "slug": "findleaux--a3e05b3bd2586ce0abf10ef8",
  "source": {
    "blob": "e5077ba96c8432ca19b8470d57244f8970a48c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1064,
    "line": 1052,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3e05b3bd2586ce0abf10ef80fe62e7724d165d5a33c81306897129174a52049",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68515ab56537b8a11c7d9c3d8c0b690d911e4666921b0a83ec69bed5da11a0a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1052–1064.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findLeAux (x : α) : Ordnode α → α → α
  | nil, best => best
  | node _ l y r, best =>
    match cmpLE x y with
    | Ordering.lt => findLeAux x l best
    | Ordering.eq => y
    | Ordering.gt => findLeAux x r y

/-- O(log n). Get the largest element in the tree that is `≤ x`.

     findLe 2 {1, 2, 4} = some 2
     findLe 3 {1, 2, 4} = some 2
     findLe 0 {1, 2, 4} = none -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variant65d079147185b6279126c5a3c936732b6891ef60c47a5561f2df462499d0e397.lean#L1052).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5077ba96c8432ca19b8470d57244f8970a48c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
