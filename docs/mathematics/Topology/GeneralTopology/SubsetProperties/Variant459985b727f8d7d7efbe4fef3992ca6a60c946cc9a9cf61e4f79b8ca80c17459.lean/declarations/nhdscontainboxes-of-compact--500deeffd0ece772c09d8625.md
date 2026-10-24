# nhdsContainBoxes_of_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e52814ff071f39927c50c6b77ea81c348738f4dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 669,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:965c8c7d-d99a-b3fb-452d-48250a16a9f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdffa844-9dd3-19ab-31d2-962b565ec192",
  "kind": "theorem",
  "lexical_name": "nhdsContainBoxes_of_compact",
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
  "slug": "nhdscontainboxes-of-compact--500deeffd0ece772c09d8625",
  "source": {
    "blob": "e52814ff071f39927c50c6b77ea81c348738f4dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 669,
    "path": "GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:500deeffd0ece772c09d86257dd67b2f13ea265db40e97534b15d20e2f52f8b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdffa844-9dd3-19ab-31d2-962b565ec192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsContainBoxes_of_compact {s : Set α} (hs : IsCompact s) (t : Set β)
    (H : ∀ x ∈ s, NhdsContainBoxes ({x} : Set α) t) : NhdsContainBoxes s t := fun n hn hp =>
  have :
    ∀ x : s,
      ∃ uv : Set α × Set β, IsOpen uv.1 ∧ IsOpen uv.2 ∧ {↑x} ⊆ uv.1 ∧ t ⊆ uv.2 ∧ uv.1 ×ˢ uv.2 ⊆ n :=
    fun ⟨x, hx⟩ =>
    have : ({x} : Set α) ×ˢ t ⊆ n := Subset.trans (prod_mono (by simpa) Subset.rfl) hp
    let ⟨ux, vx, H1⟩ := H x hx n hn this
    ⟨⟨ux, vx⟩, H1⟩
  let ⟨uvs, h⟩ := Classical.axiom_of_choice this
  have us_cover : s ⊆ ⋃ i, (uvs i).1 := fun x hx =>
    subset_iUnion _ ⟨x, hx⟩ (by simpa using (h ⟨x, hx⟩).2.2.1)
  let ⟨s0, s0_cover⟩ := hs.elim_finite_subcover _ (fun i => (h i).1) us_cover
  let u := ⋃ i ∈ s0, (uvs i).1
  let v := ⋂ i ∈ s0, (uvs i).2
  have : IsOpen u := isOpen_biUnion fun i _ => (h i).1
  have : IsOpen v := isOpen_biInter s0.finite_toSet fun i _ => (h i).2.1
  have : t ⊆ v := subset_iInter₂ fun i _ => (h i).2.2.2.1
  have : u ×ˢ v ⊆ n := fun ⟨x', y'⟩ ⟨hx', hy'⟩ =>
    have : ∃ i ∈ s0, x' ∈ (uvs i).1 := by simpa using hx'
    let ⟨i, is0, hi⟩ := this
    (h i).2.2.2.2 ⟨hi, (biInter_subset_of_mem is0 : v ⊆ (uvs i).2) hy'⟩
  ⟨u, v, ‹IsOpen u›, ‹IsOpen v›, s0_cover, ‹t ⊆ v›, ‹u ×ˢ v ⊆ n›⟩
#align nhds_contain_boxes_of_compact nhdsContainBoxes_of_compact

/-- If `s` and `t` are compact sets and `n` is an open neighborhood of `s × t`, then there exist
open neighborhoods `u ⊇ s` and `v ⊇ t` such that `u × v ⊆ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SubsetProperties/Variant459985b727f8d7d7efbe4fef3992ca6a60c946cc9a9cf61e4f79b8ca80c17459.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e52814ff071f39927c50c6b77ea81c348738f4dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
