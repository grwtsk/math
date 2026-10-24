# Topology.IsInducing.isSigmaCompact_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2888288cd6b3c863dea49c6f454c696e745b8e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdbe9d44-5b56-5100-b81c-5000a376814d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8eabad9-927f-d612-86ed-9752e8633f4a",
  "kind": "lemma",
  "lexical_name": "Topology.IsInducing.isSigmaCompact_iff",
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
  "slug": "topology-isinducing-issigmacompact-iff--b3885541fbdf236c5a135361",
  "source": {
    "blob": "e2888288cd6b3c863dea49c6f454c696e745b8e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/SigmaCompact/Variant1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3885541fbdf236c5a135361d81b3446f8bd6884898972b67987f60ac671326f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SigmaCompact/Variant1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8eabad9-927f-d612-86ed-9752e8633f4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Topology.IsInducing.isSigmaCompact_iff {f : X → Y} {s : Set X}
    (hf : IsInducing f) : IsSigmaCompact s ↔ IsSigmaCompact (f '' s) := by
  constructor
  · exact fun h ↦ h.image hf.continuous
  · rintro ⟨L, hcomp, hcov⟩
    -- Suppose f(s) is σ-compact; we want to show s is σ-compact.
    -- Write f(s) as a union of compact sets L n, so s = ⋃ K n with K n := f⁻¹(L n) ∩ s.
    -- Since f is inducing, each K n is compact iff L n is.
    refine ⟨fun n ↦ f ⁻¹' (L n) ∩ s, ?_, ?_⟩
    · intro n
      have : f '' (f ⁻¹' (L n) ∩ s) = L n := by
        rw [image_preimage_inter, inter_eq_left.mpr]
        exact (subset_iUnion _ n).trans hcov.le
      apply hf.isCompact_iff.mpr (this.symm ▸ (hcomp n))
    · calc ⋃ n, f ⁻¹' L n ∩ s
        _ = f ⁻¹' (⋃ n, L n) ∩ s  := by rw [preimage_iUnion, iUnion_inter]
        _ = f ⁻¹' (f '' s) ∩ s := by rw [hcov]
        _ = s := inter_eq_right.mpr (subset_preimage_image _ _)

@[deprecated (since := "2024-10-28")]
alias Inducing.isSigmaCompact_iff := IsInducing.isSigmaCompact_iff

/-- If `f : X → Y` is an embedding, the image `f '' s` of a set `s` is σ-compact
if and only `s` is σ-compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SigmaCompact/Variant1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SigmaCompact/Variant1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2888288cd6b3c863dea49c6f454c696e745b8e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
