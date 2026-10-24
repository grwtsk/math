# exists_is_open_mem_uniformity_of_forall_mem_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ef169b1cee415481d609f5882d80f61e629ae56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 962,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a472a619-1bd9-9160-23a0-cfe54d619025",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e55605e3-dd7b-806a-08ae-0a489144ee07",
  "kind": "lemma",
  "lexical_name": "exists_is_open_mem_uniformity_of_forall_mem_eq",
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
  "slug": "exists-is-open-mem-uniformity-of-forall-mem-eq--facd81adefd121443a6dfc03",
  "source": {
    "blob": "2ef169b1cee415481d609f5882d80f61e629ae56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 986,
    "line": 962,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:facd81adefd121443a6dfc03053f898f2a38ff982dbe210bd868861a085d0a16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e55605e3-dd7b-806a-08ae-0a489144ee07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 962–986.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_is_open_mem_uniformity_of_forall_mem_eq
    [TopologicalSpace β] {r : Set (α × α)} {s : Set β}
    {f g : β → α} (hf : ∀ x ∈ s, ContinuousAt f x) (hg : ∀ x ∈ s, ContinuousAt g x)
    (hfg : s.EqOn f g) (hr : r ∈ 𝓤 α) :
    ∃ t, IsOpen t ∧ s ⊆ t ∧ ∀ x ∈ t, (f x, g x) ∈ r := by
  have A : ∀ x ∈ s, ∃ t, IsOpen t ∧ x ∈ t ∧ ∀ z ∈ t, (f z, g z) ∈ r := by
    intro x hx
    obtain ⟨t, ht, htsymm, htr⟩ := comp_symm_mem_uniformity_sets hr
    have A : {z | (f x, f z) ∈ t} ∈ 𝓝 x := (hf x hx).preimage_mem_nhds (mem_nhds_left (f x) ht)
    have B : {z | (g x, g z) ∈ t} ∈ 𝓝 x := (hg x hx).preimage_mem_nhds (mem_nhds_left (g x) ht)
    rcases _root_.mem_nhds_iff.1 (inter_mem A B) with ⟨u, hu, u_open, xu⟩
    refine ⟨u, u_open, xu, fun y hy ↦ ?_⟩
    have I1 : (f y, f x) ∈ t := (htsymm.mk_mem_comm).2 (hu hy).1
    have I2 : (g x, g y) ∈ t := (hu hy).2
    rw [hfg hx] at I1
    exact htr (prodMk_mem_compRel I1 I2)
  choose! t t_open xt ht using A
  refine ⟨⋃ x ∈ s, t x, isOpen_biUnion t_open, fun x hx ↦ mem_biUnion hx (xt x hx), ?_⟩
  rintro x hx
  simp only [mem_iUnion, exists_prop] at hx
  rcases hx with ⟨y, ys, hy⟩
  exact ht y ys x hy

end Uniform

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant5ae83779595b586d778403507894af21ff64111723322afa63d32d1a6c14dbe6.lean#L962).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ef169b1cee415481d609f5882d80f61e629ae56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
