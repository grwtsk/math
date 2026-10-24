# Array.insertionSort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c75de9d7a93fea36653978a1b77c95e0d2f910eb1d40f723ff880ac8e37084c5",
  "kind": "def",
  "lexical_name": "Array.insertionSort",
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
  "slug": "array-insertionsort--02ee96a0b0a1abb0005ca5e3",
  "source": {
    "blob": "c550849c27bfebdc7f6c75ec29f579d90d066872",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertionSort/Variant56ab53d649cd99ff965548d53a19ee402b1f17ebadae8ce9c16824048406ffd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02ee96a0b0a1abb0005ca5e316257edbd4943037e9fad296eada604ad2244a4f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertionSort/Variant56ab53d649cd99ff965548d53a19ee402b1f17ebadae8ce9c16824048406ffd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c75de9d7a93fea36653978a1b77c95e0d2f910eb1d40f723ff880ac8e37084c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def Array.insertionSort (xs : Array α) (lt : α → α → Bool := by exact (· < ·)) : Array α :=
  traverse xs 0 xs.size
where
  @[specialize] traverse (xs : Array α) (i : Nat) (fuel : Nat) : Array α :=
    match fuel with
    | 0      => xs
    | fuel+1 =>
      if h : i < xs.size then
        traverse (swapLoop xs i h) (i+1) fuel
      else
        xs
  @[specialize] swapLoop (xs : Array α) (j : Nat) (h : j < xs.size) : Array α :=
    match (generalizing := false) he:j with -- using `generalizing` because we don't want to refine the type of `h`
    | 0    => xs
    | j'+1 =>
      have h' : j' < xs.size := by subst j; exact Nat.lt_trans (Nat.lt_succ_self _) h
      if lt xs[j] xs[j'] then
        swapLoop (xs.swap j j') j' (by rw [size_swap]; assumption; done)
      else
        xs
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertionSort/Variant56ab53d649cd99ff965548d53a19ee402b1f17ebadae8ce9c16824048406ffd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertionSort/Variant56ab53d649cd99ff965548d53a19ee402b1f17ebadae8ce9c16824048406ffd3.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c550849c27bfebdc7f6c75ec29f579d90d066872` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
