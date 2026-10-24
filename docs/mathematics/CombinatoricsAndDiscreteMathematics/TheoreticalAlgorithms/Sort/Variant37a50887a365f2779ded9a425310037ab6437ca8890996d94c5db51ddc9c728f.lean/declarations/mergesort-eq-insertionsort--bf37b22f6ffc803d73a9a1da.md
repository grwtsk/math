# mergeSort_eq_insertionSort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c128a815-546c-21f5-986f-b93843c396cd",
  "kind": "theorem",
  "lexical_name": "mergeSort_eq_insertionSort",
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
  "slug": "mergesort-eq-insertionsort--bf37b22f6ffc803d73a9a1da",
  "source": {
    "blob": "010763a4b29c2eef87ca78cae4578a5e66c033c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 356,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant37a50887a365f2779ded9a425310037ab6437ca8890996d94c5db51ddc9c728f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf37b22f6ffc803d73a9a1da55dfba6c8c6c742aacc681a85cc9ba30a4aa803d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant37a50887a365f2779ded9a425310037ab6437ca8890996d94c5db51ddc9c728f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c128a815-546c-21f5-986f-b93843c396cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mergeSort_eq_insertionSort (l : List α) :
    mergeSort l (r · ·) = insertionSort r l :=
  ((mergeSort_perm l _).trans (perm_insertionSort r l).symm).eq_of_pairwise'
    (pairwise_mergeSort' r l) (pairwise_insertionSort r l)

end TotalAndTransitive

end Correctness

end MergeSort

end sort

section Sorted

variable {α : Type*} {l : List α}

/-!
### The predicates `List.SortedLE`, `List.SortedGE`, `List.SortedLT` and `List.SortedGT`
-/

section Preorder

variable [Preorder α]

/-!
These predicates are equivalent to `Monotone l.get`, but they are also equivalent to
`IsChain (· < ·)` and `Pairwise (· < ·)`. API is provided to move between these forms.

API has deliberately not been provided for decomposed lists to avoid unneeded API replication.
The provided API should be used to move to and from `IsChain`,
`Pairwise` or `Monotone` as needed.
-/

/-- `l.SortedLE` means that the list is monotonic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant37a50887a365f2779ded9a425310037ab6437ca8890996d94c5db51ddc9c728f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant37a50887a365f2779ded9a425310037ab6437ca8890996d94c5db51ddc9c728f.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `010763a4b29c2eef87ca78cae4578a5e66c033c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
