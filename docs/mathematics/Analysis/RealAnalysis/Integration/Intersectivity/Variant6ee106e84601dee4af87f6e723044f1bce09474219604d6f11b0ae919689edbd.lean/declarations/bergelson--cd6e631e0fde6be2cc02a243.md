# bergelson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:feee6b8b-7917-56cb-4aaf-c7374677b473",
  "kind": "lemma",
  "lexical_name": "bergelson",
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
  "slug": "bergelson--cd6e631e0fde6be2cc02a243",
  "source": {
    "blob": "bb0d82bb458e7116794ea71fc896ef43c367577b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Intersectivity/Variant6ee106e84601dee4af87f6e723044f1bce09474219604d6f11b0ae919689edbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd6e631e0fde6be2cc02a243a087a6a9411e7009b16da06ccc4646cfdf6c40b4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Intersectivity/Variant6ee106e84601dee4af87f6e723044f1bce09474219604d6f11b0ae919689edbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feee6b8b-7917-56cb-4aaf-c7374677b473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bergelson [Infinite ι] {s : ι → Set α} (hs : ∀ i, MeasurableSet (s i)) (hr₀ : r ≠ 0)
    (hr : ∀ i, r ≤ μ (s i)) :
    ∃ t : Set ι, t.Infinite ∧ ∀ ⦃u⦄, u ⊆ t → u.Finite → 0 < μ (⋂ i ∈ u, s i) := by
  obtain ⟨t, ht, h⟩ := bergelson' (fun n ↦ hs <| Infinite.natEmbedding _ n) hr₀ (fun n ↦ hr _)
  refine ⟨_, ht.image <| (Infinite.natEmbedding _).injective.injOn, fun u hut hu ↦
    (h (preimage_subset_of_surjOn (Infinite.natEmbedding _).injective hut) <| hu.preimage
    (Embedding.injective _).injOn).trans_le <| measure_mono <| subset_iInter₂ fun i hi ↦ ?_⟩
  obtain ⟨n, -, rfl⟩ := hut hi
  exact iInter₂_subset n hi
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Intersectivity/Variant6ee106e84601dee4af87f6e723044f1bce09474219604d6f11b0ae919689edbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Intersectivity/Variant6ee106e84601dee4af87f6e723044f1bce09474219604d6f11b0ae919689edbd.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb0d82bb458e7116794ea71fc896ef43c367577b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
