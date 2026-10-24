# exists_path_lifts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5a47dfa109fb307cf105a6bfef0da78a03d6d21",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a40d4f4d-e3f9-013d-5116-9dfb6bf46dc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cacf5164-9469-bcb6-15d3-68005885297b",
  "kind": "theorem",
  "lexical_name": "exists_path_lifts",
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
  "slug": "exists-path-lifts--03f0f1e870c75bf04f83db48",
  "source": {
    "blob": "f5a47dfa109fb307cf105a6bfef0da78a03d6d21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 218,
    "path": "GRWTSK/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03f0f1e870c75bf04f83db48fefef2008873d38934b064d64a5e0d0828095b77",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cacf5164-9469-bcb6-15d3-68005885297b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_path_lifts : ∃ Γ : C(I, E), p ∘ Γ = γ ∧ Γ 0 = e := by
  let U x := (cov x).2.choose
  choose mem_base U_open _ H _ using fun x ↦ (cov x).2.choose_spec
  obtain ⟨t, t_0, t_mono, ⟨n_max, h_max⟩, t_sub⟩ :=
    exists_monotone_Icc_subset_open_cover_unitInterval
    (fun x ↦ (U_open x).preimage γ.continuous) fun t _ ↦ Set.mem_iUnion.2 ⟨γ t, mem_base _⟩
  suffices ∀ n, ∃ Γ : I → E, ContinuousOn Γ (Set.Icc 0 (t n)) ∧
      (Set.Icc 0 (t n)).EqOn (p ∘ Γ) γ ∧ Γ 0 = e by
    obtain ⟨Γ, cont, eqOn, Γ_0⟩ := this n_max
    rw [h_max _ le_rfl] at cont eqOn
    exact ⟨⟨Γ, continuousOn_univ.mp
      (by convert! cont; rw [eq_comm, Set.eq_univ_iff_forall]; exact fun t ↦ ⟨bot_le, le_top⟩)⟩,
      funext fun _ ↦ eqOn ⟨bot_le, le_top⟩, Γ_0⟩
  intro n
  induction n with
  | zero =>
    refine ⟨fun _ ↦ e, continuous_const.continuousOn, fun t ht ↦ ?_, rfl⟩
    rw [t_0, Set.Icc_self, Set.mem_singleton_iff] at ht; subst ht; exact γ_0.symm
  | succ n ih => ?_
  obtain ⟨Γ, cont, eqOn, Γ_0⟩ := ih
  obtain ⟨x, t_sub⟩ := t_sub n
  have pΓtn : p (Γ (t n)) = γ (t n) := eqOn ⟨t_0 ▸ t_mono n.zero_le, le_rfl⟩
  have : Nonempty (p ⁻¹' {x}) :=
    ⟨(H x ⟨Γ (t n), Set.mem_preimage.mpr (pΓtn ▸ t_sub ⟨le_rfl, t_mono n.le_succ⟩)⟩).2⟩
  let q := (cov x).toTrivialization
  refine ⟨fun s ↦ if s ≤ t n then Γ s else q.invFun (γ s, (q (Γ (t n))).2),
    .if (fun s hs ↦ ?_) (cont.mono fun _ h ↦ ?_) ?_, fun s hs ↦ ?_, ?_⟩
  · cases frontier_Iic_subset _ hs.2
    rw [← pΓtn]
    refine (q.symm_apply_mk_proj ?_).symm
    rw [q.mem_source, pΓtn]
    exact t_sub ⟨le_rfl, t_mono n.le_succ⟩
  · rw [closure_le_eq continuous_id' continuous_const] at h; exact ⟨h.1.1, h.2⟩
  · apply q.continuousOn_invFun.comp ((Continuous.prodMk_left _).comp γ.2).continuousOn
    simp_rw [not_le, q.target_eq]; intro s h
    exact ⟨t_sub ⟨closure_lt_subset_le continuous_const continuous_subtype_val h.2, h.1.2⟩, ⟨⟩⟩
  · rw [Function.comp_apply]; split_ifs with h
    exacts [eqOn ⟨hs.1, h⟩, q.proj_symm_apply' (t_sub ⟨le_of_not_ge h, hs.2⟩)]
  · dsimp only; rwa [ite_eq_left (t_0 ▸ t_mono n.zero_le)]

/-- The lift of a path to a covering space given a lift of the left endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Lifting/Variant47b44da5cc6f4d708c6d234a8abceea6a6852da69cd5e25c70c8e34deda9b47c.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a47dfa109fb307cf105a6bfef0da78a03d6d21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
