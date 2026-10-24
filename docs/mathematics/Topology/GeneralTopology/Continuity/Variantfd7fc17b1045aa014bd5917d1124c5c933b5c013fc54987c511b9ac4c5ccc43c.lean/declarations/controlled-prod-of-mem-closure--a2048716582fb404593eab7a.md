# controlled_prod_of_mem_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e26bd440-80fb-cda9-9922-d7039afa9d13",
  "kind": "theorem",
  "lexical_name": "controlled_prod_of_mem_closure",
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
  "slug": "controlled-prod-of-mem-closure--a2048716582fb404593eab7a",
  "source": {
    "blob": "94b75e46d2a4619f2b5894465f010e2f8f5dd755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 341,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2048716582fb404593eab7a63428c4ad637b0dc49701a49312f8393a13c4f21",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e26bd440-80fb-cda9-9922-d7039afa9d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controlled_prod_of_mem_closure {s : Subgroup E} (hg : a ∈ closure (s : Set E)) {b : ℕ → ℝ}
    (b_pos : ∀ n, 0 < b n) :
    ∃ v : ℕ → E,
      Tendsto (fun n => ∏ i ∈ range (n + 1), v i) atTop (𝓝 a) ∧
        (∀ n, v n ∈ s) ∧ ‖(v 0)⁻¹ * a‖ < b 0 ∧ ∀ n, 0 < n → ‖v n‖ < b n := by
  obtain ⟨u : ℕ → E, u_in : ∀ n, u n ∈ s, lim_u : Tendsto u atTop (𝓝 a)⟩ :=
    mem_closure_iff_seq_limit.mp hg
  obtain ⟨n₀, hn₀⟩ : ∃ n₀, ∀ n ≥ n₀, ‖(u n)⁻¹ * a‖ < b 0 :=
    haveI : { x | ‖x⁻¹ * a‖ < b 0 } ∈ 𝓝 a := by
      simp_rw [← dist_eq_norm_inv_mul]
      exact Metric.ball_mem_nhds _ (b_pos _)
    Filter.tendsto_atTop'.mp lim_u _ this
  set z : ℕ → E := fun n => u (n + n₀)
  have lim_z : Tendsto z atTop (𝓝 a) := lim_u.comp (tendsto_add_atTop_nat n₀)
  have mem_𝓤 : ∀ n, { p : E × E | ‖p.1⁻¹ * p.2‖ < b (n + 1) } ∈ 𝓤 E := fun n => by
    simpa [← dist_eq_norm_inv_mul] using Metric.dist_mem_uniformity (b_pos <| n + 1)
  obtain ⟨φ : ℕ → ℕ, φ_extr : StrictMono φ, hφ : ∀ n, ‖(z (φ (n + 1)))⁻¹ * z (φ n)‖ < b (n + 1)⟩ :=
    lim_z.cauchySeq.subseq_mem mem_𝓤
  set w : ℕ → E := z ∘ φ
  have hw : Tendsto w atTop (𝓝 a) := lim_z.comp φ_extr.tendsto_atTop
  set v : ℕ → E := fun i => if i = 0 then w 0 else (w (i - 1))⁻¹ * w i
  refine ⟨v, ?_, ?_, hn₀ _ (n₀.le_add_left _), ?_⟩
  · apply hw.congr (fun n ↦ ?_)
    rw [Finset.prod_range_succ']
    have : ∏ k ∈ range n, v (k + 1) = (v 0)⁻¹ * w n := by
      apply prod_range_induction _ _ (by simp [v]) _ (fun k hk ↦ ?_)
      simp only [↓reduceIte, Nat.add_eq_zero_iff, one_ne_zero, and_false, add_tsub_cancel_right, v]
      group
    simp [this]
  · rintro ⟨⟩
    · change w 0 ∈ s
      apply u_in
    · exact s.mul_mem (s.inv_mem (u_in _)) (u_in _)
  · intro l hl
    obtain ⟨k, rfl⟩ : ∃ k, l = k + 1 := Nat.exists_eq_succ_of_ne_zero hl.ne'
    rw [← norm_inv']
    simp only [Nat.add_eq_zero_iff, one_ne_zero, and_false, ↓reduceIte, add_tsub_cancel_right,
      mul_inv_rev, inv_inv, v]
    apply hφ

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantfd7fc17b1045aa014bd5917d1124c5c933b5c013fc54987c511b9ac4c5ccc43c.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94b75e46d2a4619f2b5894465f010e2f8f5dd755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
