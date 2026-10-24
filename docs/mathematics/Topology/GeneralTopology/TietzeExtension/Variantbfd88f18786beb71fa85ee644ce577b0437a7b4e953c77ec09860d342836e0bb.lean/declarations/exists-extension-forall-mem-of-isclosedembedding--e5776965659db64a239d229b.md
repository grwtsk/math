# exists_extension_forall_mem_of_isClosedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65e77ae6c01e8592f9cc53a4fcd12b24fd0dae55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 457,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b557e3e-9c9f-75ca-4061-104040689126",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:559e1a7e-5ad2-6d5f-df7e-485bd5d9e18d",
  "kind": "theorem",
  "lexical_name": "exists_extension_forall_mem_of_isClosedEmbedding",
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
  "slug": "exists-extension-forall-mem-of-isclosedembedding--e5776965659db64a239d229b",
  "source": {
    "blob": "65e77ae6c01e8592f9cc53a4fcd12b24fd0dae55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 457,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5776965659db64a239d229ba077b181a17d0a77afddeb6751e173db45c36761",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:559e1a7e-5ad2-6d5f-df7e-485bd5d9e18d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_extension_forall_mem_of_isClosedEmbedding (f : C(X, ℝ)) {t : Set ℝ} {e : X → Y}
    [hs : OrdConnected t] (hf : ∀ x, f x ∈ t) (hne : t.Nonempty) (he : IsClosedEmbedding e) :
    ∃ g : C(Y, ℝ), (∀ y, g y ∈ t) ∧ g ∘ e = f := by
  have h : ℝ ≃o Ioo (-1 : ℝ) 1 := orderIsoIooNegOneOne ℝ
  let F : X →ᵇ ℝ :=
    { toFun := (↑) ∘ h ∘ f
      continuous_toFun := continuous_subtype_val.comp (h.continuous.comp f.continuous)
      map_bounded' := isBounded_range_iff.1
        ((isBounded_Ioo (-1 : ℝ) 1).subset <| range_subset_iff.2 fun x => (h (f x)).2) }
  let t' : Set ℝ := (↑) ∘ h '' t
  have ht_sub : t' ⊆ Ioo (-1 : ℝ) 1 := image_subset_iff.2 fun x _ => (h x).2
  have : OrdConnected t' := by
    constructor
    rintro _ ⟨x, hx, rfl⟩ _ ⟨y, hy, rfl⟩ z hz
    lift z to Ioo (-1 : ℝ) 1 using Icc_subset_Ioo (h x).2.1 (h y).2.2 hz
    change z ∈ Icc (h x) (h y) at hz
    rw [← h.image_Icc] at hz
    rcases hz with ⟨z, hz, rfl⟩
    exact ⟨z, hs.out hx hy hz, rfl⟩
  have hFt : ∀ x, F x ∈ t' := fun x => mem_image_of_mem _ (hf x)
  rcases F.exists_extension_forall_mem_of_isClosedEmbedding hFt (hne.image _) he with ⟨G, hG, hGF⟩
  let g : C(Y, ℝ) :=
    ⟨h.symm ∘ codRestrict G _ fun y => ht_sub (hG y),
      h.symm.continuous.comp <| G.continuous.subtype_mk _⟩
  have hgG : ∀ {y a}, g y = a ↔ G y = h a := @fun y a =>
    h.toEquiv.symm_apply_eq.trans Subtype.ext_iff
  refine ⟨g, fun y => ?_, ?_⟩
  · rcases hG y with ⟨a, ha, hay⟩
    convert ha
    exact hgG.2 hay.symm
  · ext x
    exact hgG.2 (congr_fun hGF _)

/-- **Tietze extension theorem** for real-valued continuous maps, a version for a closed set. Let
`s` be a closed set in a normal topological space `Y`. Let `f` be a continuous real-valued function
on `s`. Let `t` be a nonempty convex set of real numbers (we use `OrdConnected` instead of `Convex`
to automatically deduce this argument by typeclass search) such that `f x ∈ t` for all `x : s`. Then
there exists a continuous real-valued function `g : C(Y, ℝ)` such that `g y ∈ t` for all `y` and
`g.restrict s = f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e77ae6c01e8592f9cc53a4fcd12b24fd0dae55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
