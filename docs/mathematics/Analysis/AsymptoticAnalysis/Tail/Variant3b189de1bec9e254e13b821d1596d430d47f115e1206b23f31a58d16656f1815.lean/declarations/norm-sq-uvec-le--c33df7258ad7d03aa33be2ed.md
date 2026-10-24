# norm_sq_uvec_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f020b3b5-88e6-6c45-8639-ff548849eea5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7d13c6b-6a0a-6e04-1a0f-1cfeb357f690",
  "kind": "lemma",
  "lexical_name": "norm_sq_uvec_le",
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
  "slug": "norm-sq-uvec-le--c33df7258ad7d03aa33be2ed",
  "source": {
    "blob": "b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 230,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c33df7258ad7d03aa33be2ed0e8111b0c216733620c62c7f557ecbd6a2341463",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7d13c6b-6a0a-6e04-1a0f-1cfeb357f690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_sq_uvec_le (hT : T₀ ≤ T) (hL : 2 ≤ P.L T) {C₁ : ℝ} (hC₁ : 0 ≤ C₁)
    (hdecay : ∀ (r y : ℝ), |y| ≤ 1 / 2 → (r : ℂ) - I * y ≠ 0 →
        ‖P.phiHat T (r - I * y)‖ ≤ Real.exp (P.L T / 4) * C₁ / ‖(r : ℂ) - I * y‖ ^ 2)
    {ρ : ℂ} (hρ : ρ ∈ Z.carrier) (htail : InTail T ρ.im) :
    ∑ k, ‖uvec P T ρ k‖ ^ 2
      ≤ (Real.exp (P.L T / 4) * C₁) ^ 2 * P.L T * ((distI T ρ.im) ^ 3)⁻¹ := by
  have hT' : (300 : ℝ) ≤ T := hT
  have hL0 : 0 < P.L T := by linarith
  set K := Real.exp (P.L T / 4) * C₁ with hK
  have hK0 : 0 ≤ K := by positivity
  have hD : 1 ≤ distI T ρ.im := by
    have h1 := sqrt_le_distI_of_InTail (by linarith) htail
    have h2 : (17 : ℝ) ≤ Real.sqrt T := by
      rw [Real.le_sqrt (by norm_num) (by linarith)]; linarith
    linarith
  calc ∑ k, ‖uvec P T ρ k‖ ^ 2
      ≤ ∑ k : Fin (P.d T),
          K ^ 2 * (|ρ.im - (T + (k : ℕ) * (2 * Real.pi / P.L T))| ^ 4)⁻¹ := by
        refine sum_le_sum fun k _ => ?_
        have h := norm_uvec_le hL0 (by linarith) hC₁ hdecay hρ htail k
        calc ‖uvec P T ρ k‖ ^ 2
            ≤ (K * (|ρ.im - (T + (k : ℕ) * (2 * Real.pi / P.L T))| ^ 2)⁻¹) ^ 2 :=
              pow_le_pow_left₀ (norm_nonneg _) h 2
          _ = _ := by rw [mul_pow, inv_pow, ← pow_mul]
    _ = K ^ 2 * ∑ k ∈ range (P.d T),
          (|ρ.im - (T + (k : ℕ) * (2 * Real.pi / P.L T))| ^ 4)⁻¹ := by
        rw [mul_sum, Fin.sum_univ_eq_sum_range
          (fun k : ℕ => K ^ 2 * (|ρ.im - (T + (k : ℕ) * (2 * Real.pi / P.L T))| ^ 4)⁻¹)]
    _ ≤ K ^ 2 * (P.L T * ((distI T ρ.im) ^ 3)⁻¹) :=
        mul_le_mul_of_nonneg_left
          (grid_sum_le hL (by linarith) (d_mul_hgrid_le hL0 (by linarith)) hD) (sq_nonneg _)
    _ = _ := by ring

end Concrete

/-! ### Summability of the zero-side series and E as the series over γ ∉ I' -/

section Series

variable {Z : ZeroConfig} {P : Params} {T A₀ C₁ : ℝ}

/-- Standing hypotheses of [prop:tail], bundled to keep signatures short. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
