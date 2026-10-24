# mergeSortedPreservingDuplicates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33988b97203eadb214ddf516e8060749416d4d0d43da3bbcbf0226ccb915a4b0",
  "kind": "def",
  "lexical_name": "mergeSortedPreservingDuplicates",
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
  "slug": "mergesortedpreservingduplicates--1390bb2f6b02030143f9099c",
  "source": {
    "blob": "909908b2f44f088c894bc1b8d94f02dd3e4c5c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1390bb2f6b02030143f9099c1ab839ae27507c863c5bf1f4cf3112043ec8b00a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33988b97203eadb214ddf516e8060749416d4d0d43da3bbcbf0226ccb915a4b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mergeSortedPreservingDuplicates [ord : Ord α] (xs ys : Array α) :
    Array α :=
  let acc := Array.mkEmpty (xs.size + ys.size)
  go acc 0 0
where
  /-- Auxiliary definition for `mergeSortedPreservingDuplicates`. -/
  go (acc : Array α) (i j : Nat) : Array α :=
    if hi : i ≥ xs.size then
      acc ++ ys[j:]
    else if hj : j ≥ ys.size then
      acc ++ xs[i:]
    else
      have hi : i < xs.size := Nat.lt_of_not_le hi
      have hj : j < ys.size := Nat.lt_of_not_le hj
      have hij : i + j < xs.size + ys.size := Nat.add_lt_add hi hj
      let x := xs[i]
      let y := ys[j]
      if compare x y |>.isLE then
        have : xs.size + ys.size - (i + 1 + j) < xs.size + ys.size - (i + j) := by
          rw [show i + 1 + j = i + j + 1 by simp_arith]
          exact Nat.sub_succ_lt_self _ _ hij
        go (acc.push x) (i + 1) j
      else
        have : xs.size + ys.size - (i + j + 1) < xs.size + ys.size - (i + j) :=
          Nat.sub_succ_lt_self _ _ hij
        go (acc.push y) i (j + 1)
termination_by go => xs.size + ys.size - (i + j)

/--
Merge arrays `xs` and `ys`, which must be sorted according to `compare` and must
not contain duplicates. Equal elements are merged using `merge`. If `merge`
respects the order (i.e. for all `x`, `y`, `y'`, `z`, if `x < y < z` and
`x < y' < z` then `x < merge y y' < z`) then the resulting array is again
sorted.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant009f3d5ecd6ee5a1a9969a75708852adb8e29cd51cb383264ef2d66d547a9c7f.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `909908b2f44f088c894bc1b8d94f02dd3e4c5c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
