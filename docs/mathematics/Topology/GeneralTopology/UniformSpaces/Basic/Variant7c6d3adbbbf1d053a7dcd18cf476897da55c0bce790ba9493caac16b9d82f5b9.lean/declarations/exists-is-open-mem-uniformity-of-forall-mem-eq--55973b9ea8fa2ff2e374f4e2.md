# exists_is_open_mem_uniformity_of_forall_mem_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03720d70-7f22-dcaa-0336-53b51d8ff18d",
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
  "slug": "exists-is-open-mem-uniformity-of-forall-mem-eq--55973b9ea8fa2ff2e374f4e2",
  "source": {
    "blob": "e0505f4c40fa377aa97d85a26c412b9decac6dfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 994,
    "line": 970,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55973b9ea8fa2ff2e374f4e2562d0ee279a649e71220744627ac94a1f1a532da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03720d70-7f22-dcaa-0336-53b51d8ff18d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 970–994.

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

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean#L970).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0505f4c40fa377aa97d85a26c412b9decac6dfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
