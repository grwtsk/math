# centroid_mem_affineSpan_of_card_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a09b52d58651d9ae49fbb7b4571b28f367a6007",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bed1175a-f4db-c4a6-b525-f1887aa7cdb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a9187b7-2198-723e-8a38-1dddec235f34",
  "kind": "theorem",
  "lexical_name": "centroid_mem_affineSpan_of_card_ne_zero",
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
  "slug": "centroid-mem-affinespan-of-card-ne-zero--1ffa7c239a13b2acef479b4f",
  "source": {
    "blob": "3a09b52d58651d9ae49fbb7b4571b28f367a6007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1118,
    "line": 1113,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ffa7c239a13b2acef479b4fe94d29c15bfcc2bafc07ec39af91070dc897271b",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a9187b7-2198-723e-8a38-1dddec235f34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1113–1118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centroid_mem_affineSpan_of_card_ne_zero [CharZero k] {s : Finset ι} (p : ι → P)
    (h : #s ≠ 0) : s.centroid k p ∈ affineSpan k (range p) :=
  affineCombination_mem_affineSpan (s.sum_centroidWeights_eq_one_of_card_ne_zero k h) p

/-- In the characteristic zero case, the centroid lies in the affine
span if the set is nonempty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant19e3e4ccaa8d097e0e292a9d81a29508ada6905c6251db17bbb9f540d8a1e091.lean#L1113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a09b52d58651d9ae49fbb7b4571b28f367a6007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
