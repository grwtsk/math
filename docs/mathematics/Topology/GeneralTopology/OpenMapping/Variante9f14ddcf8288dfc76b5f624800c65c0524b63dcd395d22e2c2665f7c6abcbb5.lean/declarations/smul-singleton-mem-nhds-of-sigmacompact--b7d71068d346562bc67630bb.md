# smul_singleton_mem_nhds_of_sigmaCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a64e609491074c47c975dbefcc115f006879850",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9f14ddcf8288dfc76b5f624800c65c0524b63dcd395d22e2c2665f7c6abcbb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af471e89-8a8f-593d-6094-f26090856701",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7f38039-746f-a823-e9b4-e45189186337",
  "kind": "theorem",
  "lexical_name": "smul_singleton_mem_nhds_of_sigmaCompact",
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
  "slug": "smul-singleton-mem-nhds-of-sigmacompact--b7d71068d346562bc67630bb",
  "source": {
    "blob": "5a64e609491074c47c975dbefcc115f006879850",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/OpenMapping/Variante9f14ddcf8288dfc76b5f624800c65c0524b63dcd395d22e2c2665f7c6abcbb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7d71068d346562bc67630bb1e88582da5675d677f7dc1ab764c72c7bc42fece",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenMapping/Variante9f14ddcf8288dfc76b5f624800c65c0524b63dcd395d22e2c2665f7c6abcbb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7f38039-746f-a823-e9b4-e45189186337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_singleton_mem_nhds_of_sigmaCompact
    {U : Set G} (hU : U ∈ 𝓝 1) (x : X) : U • {x} ∈ 𝓝 x := by
  /- Consider a small closed neighborhood `V` of the identity. Then the group is covered by
  countably many translates of `V`, say `gᵢ V`. Let also `Kₙ` be a sequence of compact sets covering
  the space. Then the image of `Kₙ ∩ gᵢ V` in the orbit is compact, and their unions covers the
  space. By Baire, one of them has nonempty interior. Then `gᵢ V • x` has nonempty interior, and
  so does `V • x`. Its interior contains a point `g' x` with `g' ∈ V`. Then `g'⁻¹ • V • x` contains
  a neighborhood of `x`, and it is included in `V⁻¹ • V • x`, which is itself contained in `U • x`
  if `V` is small enough. -/
  obtain ⟨V, V_mem, V_closed, V_symm, VU⟩ : ∃ V ∈ 𝓝 (1 : G), IsClosed V ∧ V⁻¹ = V ∧ V * V ⊆ U :=
    exists_closed_nhds_one_inv_eq_mul_subset hU
  obtain ⟨s, s_count, hs⟩ : ∃ (s : Set G), s.Countable ∧ ⋃ g ∈ s, g • V = univ :=
    countable_cover_nhds_of_sigmaCompact fun _ ↦ by simpa
  let K : ℕ → Set G := compactCovering G
  let F : ℕ × s → Set X := fun p ↦ (K p.1 ∩ (p.2 : G) • V) • ({x} : Set X)
  obtain ⟨⟨n, ⟨g, hg⟩⟩, hi⟩ : ∃ i, (interior (F i)).Nonempty := by
    have : Nonempty X := ⟨x⟩
    have : Encodable s := Countable.toEncodable s_count
    apply nonempty_interior_of_iUnion_of_closed
    · rintro ⟨n, ⟨g, hg⟩⟩
      apply IsCompact.isClosed
      suffices H : IsCompact ((fun (g : G) ↦ g • x) '' (K n ∩ g • V)) by
        simpa only [F, smul_singleton] using H
      apply IsCompact.image ?_ (by fun_prop)
      exact (isCompact_compactCovering G n).inter_right (V_closed.smul g)
    · apply eq_univ_iff_forall.2 (fun y ↦ ?_)
      obtain ⟨h, rfl⟩ : ∃ h, h • x = y := exists_smul_eq G x y
      obtain ⟨n, hn⟩ : ∃ n, h ∈ K n := exists_mem_compactCovering h
      obtain ⟨g, gs, hg⟩ : ∃ g ∈ s, h ∈ g • V := exists_set_mem_of_union_eq_top s _ hs _
      simp only [F, smul_singleton, mem_iUnion, mem_image, mem_inter_iff, Prod.exists,
        Subtype.exists, exists_prop]
      exact ⟨n, g, gs, h, ⟨hn, hg⟩, rfl⟩
  have I : (interior ((g • V) • {x})).Nonempty := by
    apply hi.mono
    apply interior_mono
    exact smul_subset_smul_right inter_subset_right
  obtain ⟨y, hy⟩ : (interior (V • ({x} : Set X))).Nonempty := by
    rw [smul_assoc, interior_smul] at I
    exact smul_set_nonempty.1 I
  obtain ⟨g', hg', rfl⟩ : ∃ g' ∈ V, g' • x = y := by simpa using interior_subset hy
  have J : (g'⁻¹ • V) • {x} ∈ 𝓝 x := by
    apply mem_interior_iff_mem_nhds.1
    rwa [smul_assoc, interior_smul, mem_inv_smul_set_iff]
  have : (g'⁻¹ • V) • {x} ⊆ U • ({x} : Set X) := by
    apply smul_subset_smul_right
    apply Subset.trans (smul_set_subset_smul (inv_mem_inv.2 hg')) ?_
    rw [V_symm]
    exact VU
  exact Filter.mem_of_superset J this

/-- Consider a sigma-compact group acting continuously and transitively on a Baire space. Then
the orbit map is open. This is a version of the open mapping theorem, valid notably for the
action of a sigma-compact locally compact group on a locally compact space. -/
@[to_additive /-- Consider a sigma-compact additive group acting continuously and transitively on a
Baire space. Then the orbit map is open. This is a version of the open mapping theorem, valid
notably for the action of a sigma-compact locally compact group on a locally compact space. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenMapping/Variante9f14ddcf8288dfc76b5f624800c65c0524b63dcd395d22e2c2665f7c6abcbb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenMapping/Variante9f14ddcf8288dfc76b5f624800c65c0524b63dcd395d22e2c2665f7c6abcbb5.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a64e609491074c47c975dbefcc115f006879850` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
