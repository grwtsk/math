# μ_limsup_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb856f040270765afe527066a77b6bb4b1af22e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4bd3219-c4ed-56cc-e350-297a715a6344",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc28a582-2679-a31f-aaf8-21343d74b9ec",
  "kind": "theorem",
  "lexical_name": "μ_limsup_le_one",
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
  "slug": "limsup-le-one--8e727a4ba48507ef4e67e8dd",
  "source": {
    "blob": "bb856f040270765afe527066a77b6bb4b1af22e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 348,
    "path": "GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e727a4ba48507ef4e67e8dd2edd4a5fc1f8a5ab24325bab75a619680ea2ccaf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc28a582-2679-a31f-aaf8-21343d74b9ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem μ_limsup_le_one {s : ℕ → ℕ} (hs_le : ∀ n : ℕ, s n ≤ n) {x : R} {ψ : ℕ → ℕ}
    (hψ_lim : Tendsto ((fun n : ℕ => ↑(s n) / (n : ℝ)) ∘ ψ) atTop (𝓝 0)) :
    limsup (fun n : ℕ => μ x ^ ((s (ψ n) : ℝ) * (1 / (ψ n : ℝ)))) atTop ≤ 1 := by
  simp only [limsup, limsSup]
  rw [csInf_le_iff (μ_bddBelow μ s ψ) (μ_nonempty μ hs_le ψ)]
  · intro c hc_bd
    simp only [mem_lowerBounds, eventually_map, eventually_atTop, ge_iff_le, Set.mem_setOf_eq,
      forall_exists_index] at hc_bd
    by_cases hμx : μ x < 1
    · apply hc_bd (1 : ℝ) 0
      intro b _
      exact rpow_le_one (apply_nonneg _ _) (le_of_lt hμx)
          (mul_nonneg (cast_nonneg _) (one_div_nonneg.mpr (cast_nonneg _)))
    · have hμ_lim : Tendsto (fun n : ℕ => μ x ^ (↑(s (ψ n)) * (1 / (ψ n : ℝ)))) atTop (𝓝 1) := by
        nth_rw 1 [← rpow_zero (μ x)]
        convert Tendsto.rpow tendsto_const_nhds hψ_lim
            (Or.inl (ne_of_gt (lt_of_lt_of_le zero_lt_one (not_lt.mp hμx))))
        · simp only [rpow_zero, mul_one_div, Function.comp_apply]
        · rw [rpow_zero]
      rw [tendsto_atTop_nhds] at hμ_lim
      apply le_of_forall_pos_le_add
      intro ε hε
      have h1 : (1 : ℝ) ∈ Set.Ioo 0 (1 + ε) := by
        simp only [Set.mem_Ioo, zero_lt_one, lt_add_iff_pos_right, hε, and_self]
      obtain ⟨k, hk⟩ := hμ_lim (Set.Ioo (0 : ℝ) (1 + ε)) h1 isOpen_Ioo
      exact hc_bd (1 + ε) k fun b hb => le_of_lt (Set.mem_Ioo.mp (hk b hb)).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb856f040270765afe527066a77b6bb4b1af22e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
