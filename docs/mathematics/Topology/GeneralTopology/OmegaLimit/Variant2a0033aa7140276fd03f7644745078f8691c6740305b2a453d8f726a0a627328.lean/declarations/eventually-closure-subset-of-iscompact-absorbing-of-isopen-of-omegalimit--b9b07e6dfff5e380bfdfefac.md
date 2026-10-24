# eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f67d0a98b6bf517e62ee2fb45e3e09258dcc7506",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b65a67f0-239e-35ff-18d0-21f849a8a487",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2fe53ed-f43b-d880-e154-6703fd3b6197",
  "kind": "theorem",
  "lexical_name": "eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset'",
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
  "slug": "eventually-closure-subset-of-iscompact-absorbing-of-isopen-of-omegalimit--b9b07e6dfff5e380bfdfefac",
  "source": {
    "blob": "f67d0a98b6bf517e62ee2fb45e3e09258dcc7506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 207,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9b07e6dfff5e380bfdfefac2c14eb0d696e569bfc827d6feede4d33c783779d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2fe53ed-f43b-d880-e154-6703fd3b6197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_closure_subset_of_isCompact_absorbing_of_isOpen_of_omegaLimit_subset' {c : Set β}
    (hc₁ : IsCompact c) (hc₂ : ∃ v ∈ f, closure (image2 ϕ v s) ⊆ c) {n : Set β} (hn₁ : IsOpen n)
    (hn₂ : ω f ϕ s ⊆ n) : ∃ u ∈ f, closure (image2 ϕ u s) ⊆ n := by
  rcases hc₂ with ⟨v, hv₁, hv₂⟩
  let k := closure (image2 ϕ v s)
  have hk : IsCompact (k \ n) :=
    (hc₁.of_isClosed_subset isClosed_closure hv₂).diff hn₁
  let j u := (closure (image2 ϕ (u ∩ v) s))ᶜ
  have hj₁ : ∀ u ∈ f, IsOpen (j u) := fun _ _ ↦ isOpen_compl_iff.mpr isClosed_closure
  have hj₂ : k \ n ⊆ ⋃ u ∈ f, j u := by
    have : ⋃ u ∈ f, j u = ⋃ u : (↥f.sets), j u := biUnion_eq_iUnion _ _
    rw [this, diff_subset_comm, diff_iUnion]
    rw [omegaLimit_eq_iInter_inter _ _ _ hv₁] at hn₂
    simp_rw [j, diff_compl]
    rw [← inter_iInter]
    exact Subset.trans inter_subset_right hn₂
  rcases hk.elim_finite_subcover_image hj₁ hj₂ with ⟨g, hg₁ : ∀ u ∈ g, u ∈ f, hg₂, hg₃⟩
  let w := (⋂ u ∈ g, u) ∩ v
  have hw₂ : w ∈ f := by simpa [w, *]
  have hw₃ : k \ n ⊆ (closure (image2 ϕ w s))ᶜ := by
    apply Subset.trans hg₃
    simp only [j, iUnion_subset_iff, compl_subset_compl]
    intros u hu
    unfold w
    gcongr
    refine iInter_subset_of_subset u (iInter_subset_of_subset hu ?_)
    all_goals exact Subset.rfl
  have hw₄ : kᶜ ⊆ (closure (image2 ϕ w s))ᶜ := by
    simp only [compl_subset_compl]
    exact closure_mono (image2_subset inter_subset_right Subset.rfl)
  have hnc : nᶜ ⊆ k \ n ∪ kᶜ := by rw [union_comm, ← inter_subset, diff_eq, inter_comm]
  have hw : closure (image2 ϕ w s) ⊆ n :=
    compl_subset_compl.mp (Subset.trans hnc (union_subset hw₃ hw₄))
  exact ⟨_, hw₂, hw⟩

/-- A set is eventually carried into any open neighbourhood of its ω-limit:
if `c` is a compact set such that `closure {ϕ t x | t ∈ v, x ∈ s} ⊆ c` for some `v ∈ f`
and `n` is an open neighbourhood of `ω f ϕ s`, then for some `u ∈ f` we have
`closure {ϕ t x | t ∈ u, x ∈ s} ⊆ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant2a0033aa7140276fd03f7644745078f8691c6740305b2a453d8f726a0a627328.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f67d0a98b6bf517e62ee2fb45e3e09258dcc7506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
