# IsCompact.nhdsSet_basis_uniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "095842172c30b0f12e6f84aa2a9ef6bac9e1441b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 815,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b0146e5-776c-c8e1-189a-a8bf1ceca31a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80241c27-bc92-0986-c82a-e89b102702df",
  "kind": "theorem",
  "lexical_name": "IsCompact.nhdsSet_basis_uniformity",
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
  "slug": "iscompact-nhdsset-basis-uniformity--797bb9f1c90b98507879f0b2",
  "source": {
    "blob": "095842172c30b0f12e6f84aa2a9ef6bac9e1441b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 841,
    "line": 815,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:797bb9f1c90b98507879f0b2fc63ead7a52cbba0c5235d71e31a9ff3293c438f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80241c27-bc92-0986-c82a-e89b102702df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 815–841.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.nhdsSet_basis_uniformity {p : ι → Prop} {s : ι → Set (α × α)}
    (hU : (𝓤 α).HasBasis p s) {K : Set α} (hK : IsCompact K) :
    (𝓝ˢ K).HasBasis p fun i => ⋃ x ∈ K, ball x (s i) := by
  refine' ⟨fun U => _⟩
  simp only [mem_nhdsSet_iff_forall, (nhds_basis_uniformity' hU).mem_iff, iUnion₂_subset_iff]
  refine' ⟨fun H => _, fun ⟨i, hpi, hi⟩ x hx => ⟨i, hpi, hi x hx⟩⟩
  replace H : ∀ x ∈ K, ∃ i : { i // p i }, ball x (s i ○ s i) ⊆ U
  · intro x hx
    rcases H x hx with ⟨i, hpi, hi⟩
    rcases comp_mem_uniformity_sets (hU.mem_of_mem hpi) with ⟨t, ht_mem, ht⟩
    rcases hU.mem_iff.1 ht_mem with ⟨j, hpj, hj⟩
    exact ⟨⟨j, hpj⟩, Subset.trans (ball_mono ((compRel_mono hj hj).trans ht) _) hi⟩
  have : Nonempty { a // p a } := nonempty_subtype.2 hU.ex_mem
  choose! I hI using H
  rcases hK.elim_nhds_subcover (fun x => ball x <| s (I x)) fun x _ =>
      ball_mem_nhds _ <| hU.mem_of_mem (I x).2 with
    ⟨t, htK, ht⟩
  obtain ⟨i, hpi, hi⟩ : ∃ i, p i ∧ s i ⊆ ⋂ x ∈ t, s (I x)
  exact hU.mem_iff.1 ((biInter_finset_mem t).2 fun x _ => hU.mem_of_mem (I x).2)
  rw [subset_iInter₂_iff] at hi
  refine' ⟨i, hpi, fun x hx => _⟩
  rcases mem_iUnion₂.1 (ht hx) with ⟨z, hzt : z ∈ t, hzx : x ∈ ball z (s (I z))⟩
  calc
    ball x (s i) ⊆ ball z (s (I z) ○ s (I z)) := fun y hy => ⟨x, hzx, hi z hzt hy⟩
    _ ⊆ U := hI z (htK z hzt)
#align is_compact.nhds_set_basis_uniformity IsCompact.nhdsSet_basis_uniformity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0580a8e6c671b03d10413bee1bdd7787d38c2ce607a46200e0f9bccceccca6c9.lean#L815).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095842172c30b0f12e6f84aa2a9ef6bac9e1441b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
