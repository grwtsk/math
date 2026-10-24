# maximalRectangles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:222dc7051b1257c2296292f2e0f1531b8e94a75a42c56335a4bf73835c4f3b15",
  "kind": "def",
  "lexical_name": "maximalRectangles",
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
  "slug": "maximalrectangles--1c1d5a445d5eac78caef5e1a",
  "source": {
    "blob": "dc58f859be6270c4c2c7d3b90fbd308191c068b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rectangles/Variant7f457801f05f034a660dd81709a58a409892160dcbb4ee8698c1cbc6dea78d75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c1d5a445d5eac78caef5e1a9fa532c686752994b76d2b6c3a376b12276c1766",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rectangles/Variant7f457801f05f034a660dd81709a58a409892160dcbb4ee8698c1cbc6dea78d75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:222dc7051b1257c2296292f2e0f1531b8e94a75a42c56335a4bf73835c4f3b15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def maximalRectangles (xs : List (Nat × Nat)) : List Rectangle :=
  go [] (xs.map fun (x, y) => Rectangle.mk x (x+1) y (y+1))
where
  go (maximal : List Rectangle) (queue : List Rectangle) : List Rectangle :=
  match queue with
  | [] => maximal
  | r :: rs =>
    if maximal.any (r ≤ ·) then
      go maximal rs
    else
      match r.expansions.filter (· ∈ xs) with
      | [] => go (r :: maximal) rs
      | rs' => go maximal (rs' ++ rs)

/--
info: [{ left := 2, right := 3, bottom := 0, top := 3 },
 { left := 0, right := 1, bottom := 0, top := 3 },
 { left := 0, right := 3, bottom := 0, top := 2 }]
-/
#guard_msgs in
#eval maximalRectangles [(0, 0), (1, 0), (0, 1), (1, 1), (2, 0), (0, 2), (2, 1), (2, 2)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rectangles/Variant7f457801f05f034a660dd81709a58a409892160dcbb4ee8698c1cbc6dea78d75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rectangles/Variant7f457801f05f034a660dd81709a58a409892160dcbb4ee8698c1cbc6dea78d75.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc58f859be6270c4c2c7d3b90fbd308191c068b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
