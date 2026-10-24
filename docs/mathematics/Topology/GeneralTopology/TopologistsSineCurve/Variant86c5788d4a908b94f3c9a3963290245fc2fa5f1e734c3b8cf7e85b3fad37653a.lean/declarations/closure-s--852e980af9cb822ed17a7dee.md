# closure_S

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae5c238ddc4274ddb2184d7ac50dc37960a16b09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86c5788d4a908b94f3c9a3963290245fc2fa5f1e734c3b8cf7e85b3fad37653a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8625c18a-9bf2-5d13-9afb-39c1d34a8a4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f0770d4-a87e-5601-4b44-e6b3d10a1426",
  "kind": "lemma",
  "lexical_name": "closure_S",
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
  "slug": "closure-s--852e980af9cb822ed17a7dee",
  "source": {
    "blob": "ae5c238ddc4274ddb2184d7ac50dc37960a16b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/TopologistsSineCurve/Variant86c5788d4a908b94f3c9a3963290245fc2fa5f1e734c3b8cf7e85b3fad37653a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:852e980af9cb822ed17a7dee2199ade01dccba9717eb3bafa773cc918c5af9f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologistsSineCurve/Variant86c5788d4a908b94f3c9a3963290245fc2fa5f1e734c3b8cf7e85b3fad37653a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f0770d4-a87e-5601-4b44-e6b3d10a1426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma closure_S : closure S = T := by
  ext ⟨x, y⟩
  -- Use sequential characterization of closure.
  simp only [mem_closure_iff_seq_limit, Prod.tendsto_iff]
  constructor
  · -- Show that if a sequence in `S` has a limit in `ℝ ^ 2`, the limit must be in `T`.
    rintro ⟨f, hf_mem, hf_lim⟩
    have x_nonneg : 0 ≤ x := by
      refine isClosed_Ici.mem_of_tendsto hf_lim.1 (.of_forall fun n ↦ ?_)
      obtain ⟨y, hy⟩ := hf_mem n
      simpa [← hy.2] using le_of_lt hy.1
    -- Case split on whether limit point `(x, y)` has `x = 0`.
    rcases x_nonneg.eq_or_lt with rfl | h
    · -- If the limit has `x = 0`, show `y`-coord must be in `[-1, 1]` using closedness
      right
      simp only [Z, mem_image, Prod.mk.injEq, true_and, exists_eq_right]
      refine isClosed_Icc.mem_of_tendsto hf_lim.2 (.of_forall fun n ↦ ?_)
      obtain ⟨y, hy⟩ := hf_mem n
      simpa only [Function.comp_apply, ← hy.2] using sin_mem_Icc ..
    · -- If the limit has `0 < x`, show `y`-coord must be `sin x⁻¹` using continuity
      refine .inl ⟨x, h, ?_⟩
      simp only [Prod.mk.injEq, true_and]
      have : ContinuousAt (fun x ↦ sin x⁻¹) x :=
        continuous_sin.continuousAt.comp <| continuousAt_inv₀ h.ne'
      refine tendsto_nhds_unique_of_forall (this.tendsto.comp hf_lim.1) hf_lim.2 fun n ↦ ?_
      obtain ⟨y, hy⟩ := hf_mem n
      simp [← hy.2]
  · -- Show that every `p ∈ T` is the limit of a sequence in `S`.
    rintro (hz | ⟨z, hz⟩)
    · -- Point is in `S`: use constant sequence
      exact ⟨_, fun _ ↦ hz, tendsto_const_nhds, tendsto_const_nhds⟩
    · -- Point is in `Z`: use sequence from `xSeq`
      simp only [Prod.mk.injEq] at hz
      rcases hz with ⟨hz, ⟨rfl, rfl⟩⟩
      refine ⟨fun n ↦ (xSeq z n, z), fun n ↦ ⟨_, xSeq_pos z n, ?_⟩, xSeq_tendsto z,
        tendsto_const_nhds⟩
      simpa using sin_inv_xSeq hz n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologistsSineCurve/Variant86c5788d4a908b94f3c9a3963290245fc2fa5f1e734c3b8cf7e85b3fad37653a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologistsSineCurve/Variant86c5788d4a908b94f3c9a3963290245fc2fa5f1e734c3b8cf7e85b3fad37653a.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae5c238ddc4274ddb2184d7ac50dc37960a16b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
