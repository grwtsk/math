# mergeSort_of_pairwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ce642e97b65ecce19fe5838830d1415832f3d08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c26d27e7-ce8a-a350-a708-2d02b3a63618",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f44174d5-af1b-529b-97f1-df77f5472690",
  "kind": "theorem",
  "lexical_name": "mergeSort_of_pairwise",
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
  "slug": "mergesort-of-pairwise--05e9a046f646f03cbadbf35a",
  "source": {
    "blob": "6ce642e97b65ecce19fe5838830d1415832f3d08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05e9a046f646f03cbadbf35a58d52942a0a551dae7ecc9e19ef58e661c6d30b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f44174d5-af1b-529b-97f1-df77f5472690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mergeSort_of_pairwise {le : α → α → Bool} {xs : Array α} (_ : xs.toList.Pairwise (le · ·)) :
    mergeSort xs le = xs := by
  simpa [mergeSort_eq_toArray_mergeSort_toList, List.toArray_eq_iff] using List.mergeSort_of_pairwise ‹_›

/--
This merge sort algorithm is stable,
in the sense that breaking ties in the ordering function using the position in the array
has no effect on the output.

That is, elements which are equal with respect to the ordering function will remain
in the same order in the output array as they were in the input array.

See also:
* `sublist_mergeSort`: if `c <+ l` and `c.Pairwise le`, then `c <+ (mergeSort le l).toList`.
* `pair_sublist_mergeSort`: if `[a, b] <+ l` and `le a b`, then `[a, b] <+ (mergeSort le l).toList`)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce642e97b65ecce19fe5838830d1415832f3d08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
