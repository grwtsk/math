# _root_.Isometry.coveringNumber_image'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70645ffc-5e95-7afa-e43c-b43204890fd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db9a69aa-6f34-25a6-1c2d-920db405c3ea",
  "kind": "lemma",
  "lexical_name": "_root_.Isometry.coveringNumber_image'",
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
  "slug": "root-isometry-coveringnumber-image--f483cf1430cc0a18ac40f0cc",
  "source": {
    "blob": "ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 385,
    "path": "GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f483cf1430cc0a18ac40f0ccdd524638f41f6d12df975a3b77414b407bb6f281",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db9a69aa-6f34-25a6-1c2d-920db405c3ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Isometry.coveringNumber_image' {f : X → Y} (hf : Isometry f) (hf_inj : Set.InjOn f A) :
    coveringNumber ε (f '' A) = coveringNumber ε A := by
  refine le_antisymm ?_ ?_
  · simp only [coveringNumber, le_iInf_iff]
    intro C hC_subset hC_cover
    refine (iInf_le _ (C.image f)).trans ?_
    simp only [Set.image_subset_iff]
    have : ↑C ⊆ f ⁻¹' f '' A := hC_subset.trans (Set.subset_preimage_image f A)
    refine (iInf_le _ this).trans ?_
    rw [hf.isCover_image_iff]
    refine (iInf_le _ hC_cover).trans ?_
    exact encard_image_le f C
  · simp only [coveringNumber, le_iInf_iff]
    intro C hC_subset hC_cover
    obtain ⟨C', hC'_subset, rfl⟩ : ∃ C', C' ⊆ A ∧ C = C'.image f := by
      have (x : C) : ∃ y ∈ A, f y = x := by simpa using hC_subset x.2
      choose g hg_mem hg using this
      refine ⟨Set.range g, ?_, ?_⟩
      · rwa [Set.range_subset_iff]
      · ext
        simp
        grind
    refine (iInf_le _ C').trans <| (iInf_le _ hC'_subset).trans ?_
    simp only [hf.isCover_image_iff] at hC_cover
    refine (iInf_le _ hC_cover).trans ?_
    rw [InjOn.encard_image]
    exact hf_inj.mono hC'_subset

/-- The covering number of the image of a set under an injective isometry is equal to
the covering number of the set.
See `Isometry.coveringNumber_image'` for the version in a `PseudoEMetricSpace` and not
an `EMetricSpace`, for which an additional injectivity assumption is needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantc677ef012d5c333de1d2bbc745cfd623a163623bb448445fca4a2a91dee4157b.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4085f88cc6ecc5c1d0a0146b17defb3bfb1d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
