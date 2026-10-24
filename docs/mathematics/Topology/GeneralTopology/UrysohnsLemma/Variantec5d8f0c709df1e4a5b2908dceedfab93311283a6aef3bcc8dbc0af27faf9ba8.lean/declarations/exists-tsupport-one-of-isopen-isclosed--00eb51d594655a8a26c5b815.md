# exists_tsupport_one_of_isOpen_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9394cf07ff8f84c2c7a018b66c1dffe0a15fa444",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 480,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0fd5004-e867-0001-e43c-97b2b344a8a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bc7b618-b0c3-e487-f2bb-4772b28fa13b",
  "kind": "lemma",
  "lexical_name": "exists_tsupport_one_of_isOpen_isClosed",
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
  "slug": "exists-tsupport-one-of-isopen-isclosed--00eb51d594655a8a26c5b815",
  "source": {
    "blob": "9394cf07ff8f84c2c7a018b66c1dffe0a15fa444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 480,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00eb51d594655a8a26c5b81599d97d14009ac1c1810ab13ce5f516aa6027988c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bc7b618-b0c3-e487-f2bb-4772b28fa13b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_tsupport_one_of_isOpen_isClosed [T2Space X] {s t : Set X}
    (hs : IsOpen s) (hscp : IsCompact (closure s)) (ht : IsClosed t) (hst : t ⊆ s) :
    ∃ f : C(X, ℝ), tsupport f ⊆ s ∧ EqOn f 1 t ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1 := by
-- separate `sᶜ` and `t` by `u` and `v`.
  rw [← compl_compl s] at hscp
  obtain ⟨u, v, huIsOpen, hvIsOpen, hscompl_subset_u, ht_subset_v, hDisjointuv⟩ :=
    SeparatedNhds.of_isClosed_isCompact_closure_compl_isClosed (isClosed_compl_iff.mpr hs)
    hscp ht (HasSubset.Subset.disjoint_compl_left hst)
  rw [← subset_compl_iff_disjoint_right] at hDisjointuv
  have huvc : closure u ⊆ vᶜ := closure_minimal hDisjointuv hvIsOpen.isClosed_compl
-- although `sᶜ` is not compact, `closure s` is compact and we can apply
-- `SeparatedNhds.of_isClosed_isCompact_closure_compl_isClosed`. To apply the condition
-- recursively, we need to make sure that `sᶜ ⊆ C`.
  let P : Set X → Set X → Prop := fun C _ => sᶜ ⊆ C
  set c : Urysohns.CU P :=
  { C := closure u
    U := tᶜ
    P_C_U := hscompl_subset_u.trans subset_closure
    closed_C := isClosed_closure
    open_U := ht.isOpen_compl
    subset := subset_compl_comm.mp
      (Subset.trans ht_subset_v (subset_compl_comm.mp huvc))
    hP := by
      intro c u0 cIsClosed Pc u0IsOpen csubu0
      obtain ⟨u1, hu1⟩ := SeparatedNhds.of_isClosed_isCompact_closure_compl_isClosed cIsClosed
        (IsCompact.of_isClosed_subset hscp isClosed_closure
        (closure_mono (compl_subset_compl.mpr Pc)))
        (isClosed_compl_iff.mpr u0IsOpen) (HasSubset.Subset.disjoint_compl_right csubu0)
      simp_rw [← subset_compl_iff_disjoint_right, compl_subset_comm (s := u0)] at hu1
      obtain ⟨v1, hu1, hv1, hcu1, hv1u, hu1v1⟩ := hu1
      refine ⟨u1, hu1, hcu1, ?_, Pc, (Pc.trans hcu1).trans subset_closure⟩
      exact closure_minimal hu1v1 hv1.isClosed_compl |>.trans hv1u }
-- `c.lim = 0` on `closure u` and `c.lim = 1` on `t`, so that `tsupport c.lim ⊆ s`.
  use ⟨c.lim, c.continuous_lim⟩
  simp only [ContinuousMap.coe_mk]
  refine ⟨?_, ?_, Urysohns.CU.lim_mem_Icc c⟩
  · apply Subset.trans _ (compl_subset_comm.mp hscompl_subset_u)
    rw [← IsClosed.closure_eq (isClosed_compl_iff.mpr huIsOpen)]
    apply closure_mono
    exact Disjoint.subset_compl_right (disjoint_of_subset_right subset_closure
      (Disjoint.symm (Urysohns.CU.disjoint_C_support_lim c)))
  · intro x hx
    apply Urysohns.CU.lim_of_notMem_U
    exact notMem_compl_iff.mpr hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9394cf07ff8f84c2c7a018b66c1dffe0a15fa444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
