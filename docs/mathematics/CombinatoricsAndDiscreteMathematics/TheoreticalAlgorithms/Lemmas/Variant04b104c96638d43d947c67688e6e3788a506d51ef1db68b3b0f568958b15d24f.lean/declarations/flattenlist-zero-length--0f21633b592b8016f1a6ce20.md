# flattenList_zero_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2ea3de0-2949-2ed6-0e06-f01510dbcd08",
  "kind": "theorem",
  "lexical_name": "flattenList_zero_length",
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
  "slug": "flattenlist-zero-length--0f21633b592b8016f1a6ce20",
  "source": {
    "blob": "eb698204152cd6b0b53cbdb340ff29daa8847616",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2998,
    "line": 2984,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f21633b592b8016f1a6ce20eb9a665307847cb0f7d8c548f2c7904b6b6fbe20",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2ea3de0-2949-2ed6-0e06-f01510dbcd08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2984–2998.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem flattenList_zero_length (vs : List (BitVec 0)) : BitVec.flattenList vs = 0 := by
  apply eq_of_getLsbD_eq
  intro i hi
  simp at hi

/--
Divide-and-conquer worker for `BitVec.flattenList`, returning the underlying
natural number value with the head of the list in the most significant bits.

Splitting the list in half means each bit region is shifted `O(log xs.length)`
times rather than once per element, so flattening a list of length `L` costs
`O(n * L * log L)` instead of the `O(n * L²)` of a left fold (which reshifts the
whole growing accumulator at every step). The recursion depth is `O(log L)`, so
this also does not overflow the stack.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant04b104c96638d43d947c67688e6e3788a506d51ef1db68b3b0f568958b15d24f.lean#L2984).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb698204152cd6b0b53cbdb340ff29daa8847616` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
