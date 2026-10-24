# Subarray.mergeSort

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5685714b2638f2648241861b5b6738387b5d541d49f878a5d00547d4f0aaece",
  "kind": "def",
  "lexical_name": "Subarray.mergeSort",
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
  "slug": "subarray-mergesort--d4f151fe7ea14c6321ea4c9a",
  "source": {
    "blob": "287b226af459736ae6f1ad3230d25be98cea4719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant963bbe622d3570e69901aaf900d50d8f0a744d4c1635297f9b2ef21624c3c9ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4f151fe7ea14c6321ea4c9a55e0857dec625fc08b8c00e647445c9dd2ef7651",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant963bbe622d3570e69901aaf900d50d8f0a744d4c1635297f9b2ef21624c3c9ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5685714b2638f2648241861b5b6738387b5d541d49f878a5d00547d4f0aaece`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subarray.mergeSort (xs : Subarray α) (le : α → α → Bool := by exact (· ≤ ·)) : Array α :=
    if h : 1 < xs.size then
      let splitIdx := (xs.size + 1) / 2 -- We follow the same splitting convention as `List.mergeSort`
      let left := xs[*...splitIdx]
      let right := xs[splitIdx...*]
      Array.MergeSort.Internal.merge (mergeSort left le) (mergeSort right le) le
    else
      xs.toArray
termination_by xs.size
decreasing_by
  · simp only [Subarray.size_mkSlice_rio]; omega
  · simp only [Subarray.size_mkSlice_rci]; omega

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant963bbe622d3570e69901aaf900d50d8f0a744d4c1635297f9b2ef21624c3c9ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant963bbe622d3570e69901aaf900d50d8f0a744d4c1635297f9b2ef21624c3c9ea.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `287b226af459736ae6f1ad3230d25be98cea4719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
