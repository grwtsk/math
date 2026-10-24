# mulIndicator_biUnion_finset_eventuallyEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e405dfff62a767a00841649e56cfbe6ecb707b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f61037a-7ab4-2f30-dfc6-0c0c751ecfd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2df3397-23d4-2821-a91d-2b78ca9dc46f",
  "kind": "theorem",
  "lexical_name": "mulIndicator_biUnion_finset_eventuallyEq",
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
  "slug": "mulindicator-biunion-finset-eventuallyeq--518fd14253b2c6d14971d378",
  "source": {
    "blob": "5e405dfff62a767a00841649e56cfbe6ecb707b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:518fd14253b2c6d14971d3787d746cc7a900d99995cfbf6ab9b7708315b1e076",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2df3397-23d4-2821-a91d-2b78ca9dc46f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulIndicator_biUnion_finset_eventuallyEq {ι} [One β] (s : ι → Set α) (f : α → β) (a : α) :
    (fun n : Finset ι => mulIndicator (⋃ i ∈ n, s i) f a) =ᶠ[atTop]
      fun _ ↦ mulIndicator (iUnion s) f a := by
  rw [iUnion_eq_iUnion_finset s]
  apply Monotone.mulIndicator_eventuallyEq_iUnion
  exact fun _ _ ↦ biUnion_subset_biUnion_left

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e405dfff62a767a00841649e56cfbe6ecb707b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
