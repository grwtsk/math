# FiniteDimensional.of_totallyBounded_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5001b90d-be02-c920-060d-e4de180a65fa",
  "kind": "theorem",
  "lexical_name": "FiniteDimensional.of_totallyBounded_nhds_zero",
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
  "slug": "finitedimensional-of-totallybounded-nhds-zero--3dd138849fc631e4890891ae",
  "source": {
    "blob": "b0a708f26fe323b4ebd668530a81a56735e0a4ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 682,
    "line": 641,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiniteDimension/Variant4bf7838979da6119fea747eaddaf72c3bf636f452304fabe6657f4dbf8ae49fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dd138849fc631e4890891ae6f84d36e06b37f99d1ba38e4f3170d9c4e07e866",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiniteDimension/Variant4bf7838979da6119fea747eaddaf72c3bf636f452304fabe6657f4dbf8ae49fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5001b90d-be02-c920-060d-e4de180a65fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteDimensional.of_totallyBounded_nhds_zero {U : Set Eᵤ} (hU_nhds : U ∈ 𝓝 (0 : Eᵤ))
    (hU_tb : TotallyBounded U) : FiniteDimensional 𝕜 Eᵤ := by
  obtain ⟨c, hc0, hc1⟩ : ∃ c : 𝕜, 0 < ‖c‖ ∧ ‖c‖ < 1 := NormedField.exists_norm_lt 𝕜 zero_lt_one
  have hc_ne : c ≠ 0 := norm_pos_iff.mp hc0
  obtain ⟨F, hF_finite, hF_cover⟩ := totallyBounded_iff_subset_finite_iUnion_nhds_zero.mp hU_tb
    (c • U) ((set_smul_mem_nhds_zero_iff hc_ne).mpr hU_nhds)
  let M : Submodule 𝕜 Eᵤ := Submodule.span 𝕜 F
  let : FiniteDimensional 𝕜 M := Finite.span_of_finite 𝕜 hF_finite
  have h_cover : U ⊆ M + c • U := fun x hx ↦ by
    obtain ⟨f, hf, y, hy, rfl⟩ := Set.mem_iUnion₂.mp <| hF_cover hx
    exact ⟨f, Submodule.subset_span hf, y, hy, rfl⟩
  have h_ind (n : ℕ) : U ⊆ M + c ^ n • U := by
    induction n with
    | zero => simpa using! fun x hx ↦ ⟨0, M.zero_mem, x, hx, zero_add x⟩
    | succ n ih =>
      calc
        U ⊆ M + c ^ n • U := ih
        _ ⊆ M + c ^ n • (M + c • U) := by gcongr
        _ ⊆ M + c ^ (n + 1) • U := by
          rw [smul_add, smul_smul, pow_succ, ← add_assoc]
          congr!
          lift c to 𝕜ˣ using isUnit_iff_ne_zero.mpr hc_ne
          simp [← Units.val_pow_eq_pow_val, ← Units.smul_def]
  have h_small : Tendsto (fun n ↦ c ^ n • U) atTop (𝓝 0).smallSets :=
    (TotallyBounded.isVonNBounded 𝕜 hU_tb).tendsto_smallSets_nhds.comp
    (tendsto_pow_atTop_nhds_zero_of_norm_lt_one hc1)
  have hU_sub_M : U ⊆ M := by
    intro x hx
    choose m hm u hu h_eq using fun n ↦ h_ind n hx
    have hu_tendsto : Tendsto u atTop (𝓝 0) := by
      intro W hW
      exact (tendsto_smallSets_iff.mp h_small W hW).mono fun n hn ↦ hn (hu n)
    have hm_tendsto : Tendsto m atTop (𝓝 x) := by
      simpa [show m = fun n ↦ x - u n by grind] using! tendsto_const_nhds.sub hu_tendsto
    exact M.closed_of_finiteDimensional.mem_of_tendsto hm_tendsto (Eventually.of_forall hm)
  have hM_top : M = ⊤ := absorbent_nhds_zero (𝕜 := 𝕜) hU_nhds |>.mono hU_sub_M |>.submodule_eq_top
  exact FiniteDimensional.of_surjective M.subtype fun x ↦ ⟨⟨x, by simp [hM_top]⟩, rfl⟩

open scoped Pointwise in
/-- **Riesz's theorem**: if a T2 topological vector space over a complete non-trivial
normed field admits a totally bounded neighborhood of some point, then it is
finite-dimensional. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiniteDimension/Variant4bf7838979da6119fea747eaddaf72c3bf636f452304fabe6657f4dbf8ae49fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiniteDimension/Variant4bf7838979da6119fea747eaddaf72c3bf636f452304fabe6657f4dbf8ae49fb.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a708f26fe323b4ebd668530a81a56735e0a4ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
