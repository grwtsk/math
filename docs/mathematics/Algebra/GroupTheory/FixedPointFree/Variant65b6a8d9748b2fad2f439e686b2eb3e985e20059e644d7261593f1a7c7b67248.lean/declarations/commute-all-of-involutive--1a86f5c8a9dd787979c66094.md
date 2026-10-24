# commute_all_of_involutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3cc7f4352ca2f15432270ba1578550c1effe1fd3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb23dcf9-f381-6aba-592f-48ef01b81822",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3838b620-74dc-263b-ea7c-34b96fccabfd",
  "kind": "theorem",
  "lexical_name": "commute_all_of_involutive",
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
  "slug": "commute-all-of-involutive--1a86f5c8a9dd787979c66094",
  "source": {
    "blob": "3cc7f4352ca2f15432270ba1578550c1effe1fd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 64,
    "path": "GRWTSK/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a86f5c8a9dd787979c66094d375a9fde31ecb3dc9272258ed7d5bc3652a3e44",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3838b620-74dc-263b-ea7c-34b96fccabfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commute_all_of_involutive (hφ : FixedPointFree φ) (h2 : Function.Involutive φ) (g h : G) :
    Commute g h := by
  have key := map_mul φ g h
  rwa [hφ.coe_eq_inv_of_involutive h2, inv_eq_iff_eq_inv, mul_inv_rev, inv_inv, inv_inv] at key

/-- If a finite group admits a fixed-point-free involution, then it is commutative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FixedPointFree/Variant65b6a8d9748b2fad2f439e686b2eb3e985e20059e644d7261593f1a7c7b67248.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cc7f4352ca2f15432270ba1578550c1effe1fd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
