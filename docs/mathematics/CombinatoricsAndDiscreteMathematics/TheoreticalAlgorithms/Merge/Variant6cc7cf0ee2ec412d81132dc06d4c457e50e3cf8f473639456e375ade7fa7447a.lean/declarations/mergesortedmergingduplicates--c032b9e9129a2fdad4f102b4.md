# mergeSortedMergingDuplicates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:705d11a55647fc7f91afd366fda8c9ce7ce92ff82118975b3c42d0055cc99ae1",
  "kind": "def",
  "lexical_name": "mergeSortedMergingDuplicates",
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
  "slug": "mergesortedmergingduplicates--c032b9e9129a2fdad4f102b4",
  "source": {
    "blob": "04232fde4cd7eda74f8e1831e5bca6ecbe1cf833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c032b9e9129a2fdad4f102b4af71c8a546b5141bae9f3766f2963895e3337a17",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:705d11a55647fc7f91afd366fda8c9ce7ce92ff82118975b3c42d0055cc99ae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mergeSortedMergingDuplicates [ord : Ord α] (xs ys : Array α)
    (merge : α → α → α) : Array α :=
  let acc := Array.mkEmpty (xs.size + ys.size)
  go acc 0 0
where
  /-- Auxiliary definition for `mergeSortedMergingDuplicates`. -/
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
      match compare x y with
      | Ordering.lt =>
        have : xs.size + ys.size - (i + 1 + j) < xs.size + ys.size - (i + j) := by
          rw [show i + 1 + j = i + j + 1 by simp_arith]
          exact Nat.sub_succ_lt_self _ _ hij
        go (acc.push x) (i + 1) j
      | Ordering.gt =>
        have : xs.size + ys.size - (i + j + 1) < xs.size + ys.size - (i + j) :=
          Nat.sub_succ_lt_self _ _ hij
        go (acc.push y) i (j + 1)
      | Ordering.eq =>
        have : xs.size + ys.size - (i + 1 + (j + 1)) < xs.size + ys.size - (i + j) := by
          rw [show i + 1 + (j + 1) = i + j + 2 by simp_arith]
          apply Nat.sub_add_lt_sub _ (by decide)
          rw [show i + j + 2 = (i + 1) + (j + 1) by simp_arith]
          exact Nat.add_le_add hi hj
        go (acc.push (merge x y)) (i + 1) (j + 1)
termination_by go => xs.size + ys.size - (i + j)

/--
Merge arrays `xs` and `ys`, which must be sorted according to `compare` and must
not contain duplicates. If an element appears in both `xs` and `ys`, only one
copy is kept.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Merge/Variant6cc7cf0ee2ec412d81132dc06d4c457e50e3cf8f473639456e375ade7fa7447a.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04232fde4cd7eda74f8e1831e5bca6ecbe1cf833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
