# card_filter_mk_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "568afd2a17d01d31917937ed1495b1a9c63786fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4df97716-053d-6342-03b8-d6c2db6903c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a63c9f6a-e892-d7a1-0ac1-c70c1013d741",
  "kind": "theorem",
  "lexical_name": "card_filter_mk_eq",
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
  "slug": "card-filter-mk-eq--5ce8277f9ff817dd97ca66ee",
  "source": {
    "blob": "568afd2a17d01d31917937ed1495b1a9c63786fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 308,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ce8277f9ff817dd97ca66eec96fdca29b9d63707b2a6dab706f50205e2907f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a63c9f6a-e892-d7a1-0ac1-c70c1013d741`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_filter_mk_eq [NumberField K] (w : InfinitePlace K) : #{φ | mk φ = w} = mult w := by
  conv_lhs =>
    congr; congr; ext
    rw [← mk_embedding w, mk_eq_iff, ComplexEmbedding.conjugate, star_involutive.eq_iff]
  simp_rw [Finset.filter_or, Finset.filter_eq' _ (embedding w),
    Finset.filter_eq' _ (ComplexEmbedding.conjugate (embedding w)),
    Finset.mem_univ, ite_true, mult]
  split_ifs with hw
  · rw [ComplexEmbedding.isReal_iff.mp (isReal_iff.mp hw), Finset.union_idempotent,
      Finset.card_singleton]
  · refine Finset.card_pair ?_
    rwa [Ne, eq_comm, ← ComplexEmbedding.isReal_iff, ← isReal_iff]

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantc7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc7e04bb7c42c2eec6c0025061502ed135989c9c855f8a3200a779f2d63793c5d.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `568afd2a17d01d31917937ed1495b1a9c63786fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
