# splitOnP_eq_splitOnPTR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c863c397-1ad9-b6e4-bd04-752c0e14c1c7",
  "kind": "theorem",
  "lexical_name": "splitOnP_eq_splitOnPTR",
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
  "slug": "splitonp-eq-splitonptr--98afb9dad55a8ef60398f85b",
  "source": {
    "blob": "32aa73c395735e47470e6ffa77e973bd02ff95d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8c0e961d96aae7ad7b5bc3cbb1f3200ec439315c1d6a0a436b4c50e7900bf41f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98afb9dad55a8ef60398f85b2977df5aab81f7985d1cbb47da02aa6ab6efdc6c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8c0e961d96aae7ad7b5bc3cbb1f3200ec439315c1d6a0a436b4c50e7900bf41f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c863c397-1ad9-b6e4-bd04-752c0e14c1c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[csimp] theorem splitOnP_eq_splitOnPTR : @splitOnP = @splitOnPTR := by
  funext α P l
  simp only [splitOnPTR]
  suffices ∀ xs acc r,
    splitOnPTR.go P xs acc r = r.toList ++ splitOnPPrepend P xs acc.toList.reverse from
      (this l #[] #[]).symm
  intro xs acc r
  induction xs generalizing acc r with
  | nil => simp [splitOnPPrepend, splitOnPTR.go]
  | cons x xs IH => cases h : P x <;> simp [splitOnPPrepend, splitOnPTR.go, *]

/--
Split a list at every occurrence of a separator element. The separators are not in the result.

Examples:
* {lean}`[1, 1, 2, 3, 2, 4, 4].splitOn 2 = [[1, 1], [3], [4, 4]]`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8c0e961d96aae7ad7b5bc3cbb1f3200ec439315c1d6a0a436b4c50e7900bf41f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8c0e961d96aae7ad7b5bc3cbb1f3200ec439315c1d6a0a436b4c50e7900bf41f.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32aa73c395735e47470e6ffa77e973bd02ff95d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
