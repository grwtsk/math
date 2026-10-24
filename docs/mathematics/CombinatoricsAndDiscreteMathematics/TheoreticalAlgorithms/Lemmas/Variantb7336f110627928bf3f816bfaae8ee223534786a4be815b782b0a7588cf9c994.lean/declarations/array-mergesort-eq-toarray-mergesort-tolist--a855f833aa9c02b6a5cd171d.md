# Array.mergeSort_eq_toArray_mergeSort_toList

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
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b10e266c-334a-e6ad-b702-c64917485cdd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:115231a9-7447-c143-64a2-fa6707ca0ce3",
  "kind": "theorem",
  "lexical_name": "Array.mergeSort_eq_toArray_mergeSort_toList",
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
  "slug": "array-mergesort-eq-toarray-mergesort-tolist--a855f833aa9c02b6a5cd171d",
  "source": {
    "blob": "6ce642e97b65ecce19fe5838830d1415832f3d08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a855f833aa9c02b6a5cd171d3bd4e93de92ff181f01a956bbe922d11384bff36",
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

Occurrence: `result:115231a9-7447-c143-64a2-fa6707ca0ce3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Array.mergeSort_eq_toArray_mergeSort_toList {xs : Array α} {le : α → α → Bool} :
    xs.mergeSort le = (xs.toList.mergeSort le).toArray := by
  simp [← toList_mergeSort]

/-!
# Basic properties of `Array.mergeSort`.

* `pairwise_mergeSort`: `mergeSort` produces a sorted array.
* `mergeSort_perm`: `mergeSort` is a permutation of the input array.
* `mergeSort_of_pairwise`: `mergeSort` does not change a sorted array.
* `sublist_mergeSort`: if `c` is a sorted sublist of `l`, then `c` is still a sublist of `mergeSort le l`.
-/

namespace Array

-- Enable this instance locally so we can write `Pairwise le` instead of `Pairwise (le · ·)` everywhere.
attribute [local instance] boolRelToRel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb7336f110627928bf3f816bfaae8ee223534786a4be815b782b0a7588cf9c994.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce642e97b65ecce19fe5838830d1415832f3d08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
