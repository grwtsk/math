# limsup_mu_le

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
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a6ec284-b95a-1469-f44f-a52c1688ccfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d85fc725-f01e-01ff-196a-fd4eec66871a",
  "kind": "theorem",
  "lexical_name": "limsup_mu_le",
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
  "slug": "limsup-mu-le--f888fb2dbeefcb009a3972b1",
  "source": {
    "blob": "bb856f040270765afe527066a77b6bb4b1af22e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 375,
    "path": "GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f888fb2dbeefcb009a3972b1f8280962c989f32f551337d5530c0b39c727836f",
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

Occurrence: `result:d85fc725-f01e-01ff-196a-fd4eec66871a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem limsup_mu_le (hμ1 : μ 1 ≤ 1) {s : ℕ → ℕ} (hs_le : ∀ n : ℕ, s n ≤ n) {x : R}
    {a : ℝ} (a_in : a ∈ Set.Icc (0 : ℝ) 1) {ψ : ℕ → ℕ} (hψ_mono : StrictMono ψ)
    (hψ_lim : Tendsto ((fun n : ℕ => (s n : ℝ) / ↑n) ∘ ψ) atTop (𝓝 a)) :
    limsup (fun n : ℕ => μ (x ^ s (ψ n)) ^ (1 / (ψ n : ℝ))) atTop ≤ smoothingFun μ x ^ a := by
  by_cases ha : a = 0
  · rw [ha] at hψ_lim
    calc limsup (fun n : ℕ => μ (x ^ s (ψ n)) ^ (1 / (ψ n : ℝ))) atTop ≤
          limsup (fun n : ℕ => μ x ^ ((s (ψ n) : ℝ) * (1 / (ψ n : ℝ)))) atTop := by
          apply csInf_le_csInf _ (μ_nonempty μ hs_le ψ)
          · intro b hb
            simp only [eventually_map, eventually_atTop, ge_iff_le, Set.mem_setOf_eq] at hb ⊢
            obtain ⟨m, hm⟩ := hb
            use m
            intro k hkm
            apply le_trans _ (hm k hkm)
            rw [rpow_mul (apply_nonneg μ x), rpow_natCast]
            exact rpow_le_rpow (apply_nonneg μ _) (map_pow_le_pow' hμ1 x _)
              (one_div_nonneg.mpr (cast_nonneg _))
          · use 0
            simp only [mem_lowerBounds, eventually_map, eventually_atTop, ge_iff_le,
              Set.mem_setOf_eq, forall_exists_index]
            exact fun _ m hm ↦ le_trans (rpow_nonneg (apply_nonneg μ _) _) (hm m (le_refl _))
      _ ≤ 1 := (μ_limsup_le_one μ hs_le hψ_lim)
      _ = smoothingFun μ x ^ a := by rw [ha, rpow_zero]
  · have ha_pos : 0 < a := lt_of_le_of_ne a_in.1 (Ne.symm ha)
    have h_eq : (fun n : ℕ =>
        (μ (x ^ s (ψ n)) ^ (1 / (s (ψ n) : ℝ))) ^ ((s (ψ n) : ℝ) / (ψ n : ℝ))) =ᶠ[atTop]
        fun n : ℕ => μ (x ^ s (ψ n)) ^ (1 / (ψ n : ℝ)) := by
      have h : (fun n : ℕ => (1 : ℝ) / (s (ψ n) : ℝ) * (s (ψ n) : ℝ)) =ᶠ[atTop] 1 := by
        apply Filter.EventuallyEq.div_mul_cancel_atTop
        exact Tendsto.num (tendsto_natCast_atTop_atTop.comp hψ_mono.tendsto_atTop) ha_pos hψ_lim
      simp_rw [← rpow_mul (apply_nonneg μ _), mul_div]
      exact EventuallyEq.comp₂ EventuallyEq.rfl HPow.hPow (h.div EventuallyEq.rfl)
    exact le_of_eq (Tendsto.limsup_eq (Tendsto.congr' h_eq
      ((((tendsto_smoothingFun_of_map_one_le_one μ hμ1 x).comp
      ((tendsto_natCast_atTop_iff (R := ℝ)).mp <|
        Tendsto.num (tendsto_natCast_atTop_atTop.comp hψ_mono.tendsto_atTop)
          ha_pos hψ_lim)).rpow hψ_lim (Or.inr ha_pos)))))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb856f040270765afe527066a77b6bb4b1af22e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
