# ArchLineData.freeze_on_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68a982e4-7649-c28a-5d4a-2806d3d5f352",
  "kind": "theorem",
  "lexical_name": "ArchLineData.freeze_on_line",
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
  "slug": "archlinedata-freeze-on-line--7fddc2bfb3df1a10bcf09a1c",
  "source": {
    "blob": "3e3b9bfcde9101b8f3c28b140c8bb809278cf521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 961,
    "line": 882,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fddc2bfb3df1a10bcf09a1c052765715ba17ba41d54b93ffad7185313221ec4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68a982e4-7649-c28a-5d4a-2806d3d5f352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 882–961.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ArchLineData.freeze_on_line (h : ArchLineData c Λf Lpar) :
    ∃ C T₀ : ℝ, 0 ≤ C ∧ 8 ≤ T₀ ∧ ∀ T : ℝ, T₀ ≤ T → ∀ τ t : ℝ, T ≤ τ → T / 4 ≤ t →
      ‖deriv (EofL Λf) ((c:ℂ) + t * I) / EofL Λf ((c:ℂ) + t * I)
          - Bfn ((c:ℂ) + t * I) / (Lpar τ - Afn ((c:ℂ) + t * I))‖
        ≤ C * (|t - τ| + 1) / (T * Real.log T) := by
  obtain ⟨A₀, hA0, hA⟩ := norm_Afn_le_at h.one_lt
  obtain ⟨B₀, hB0, hB⟩ := norm_Bfn_le_at h.one_lt
  obtain ⟨C₁, hlow⟩ := h.lower
  obtain ⟨C₂, hder⟩ := h.deriv_le
  obtain ⟨C₃, htwo⟩ := h.two_pt
  obtain ⟨C₄, hlowp⟩ := h.lower_par
  set K : ℝ := A₀ + |C₁| + |C₄| + 2 with hK
  refine ⟨16 * |C₂| + 64 * B₀ * |C₃|, max 8 (Real.exp (4 * K)), by positivity, le_max_left _ _, ?_⟩
  intro T hT τ t hτ ht
  have hT8 : 8 ≤ T := le_trans (le_max_left _ _) hT
  have hT0 : 0 < T := by linarith
  have ht2 : 2 ≤ t := by linarith
  have ht0 : 0 < t := by linarith
  have hτ2 : 2 ≤ τ := by linarith
  have hlogT : 4 * K ≤ Real.log T := by
    have := Real.log_le_log (Real.exp_pos _) (le_trans (le_max_right _ _) hT)
    rwa [Real.log_exp] at this
  have hKpos : 2 ≤ K := by rw [hK]; have := abs_nonneg C₁; have := abs_nonneg C₄; linarith
  have hlogT1 : 1 ≤ Real.log T := by nlinarith
  have hlogt : Real.log T - 2 ≤ Real.log t := by
    have : Real.log (T/4) ≤ Real.log t := Real.log_le_log (by positivity) ht
    rw [Real.log_div hT0.ne' (by norm_num)] at this
    linarith [log_four_le_two]
  have hlogτ : Real.log T ≤ Real.log τ := Real.log_le_log hT0 hτ
  set s : ℂ := (c:ℂ) + t * I with hs
  -- lower bounds ‖Λ‖ − A₀ ≥ ¼ log T, ‖Λ⋆‖ − A₀ ≥ ¼ log T
  have hL : Real.log T / 4 ≤ ‖Λf s‖ - A₀ := by
    have := hlow t ht2; rw [← hs] at this; have := le_abs_self C₁; have := abs_nonneg C₄; nlinarith
  have hΛ : Real.log T / 4 ≤ ‖Lpar τ‖ - A₀ := by
    have := hlowp τ hτ2; have := le_abs_self C₄; have := abs_nonneg C₁; nlinarith
  have hq : 0 < Real.log T / 4 := by positivity
  have hLpos : A₀ < ‖Λf s‖ := by linarith
  have hΛpos : A₀ < ‖Lpar τ‖ := by linarith
  rw [h.derivE_div_E_eq, ← hs]
  have hfb := freeze_bound (L' := deriv Λf s) (hA t) (hB t) hLpos hΛpos
  rw [← hs] at hfb
  refine hfb.trans ?_
  -- first term
  have h1 : ‖deriv Λf s‖ / (‖Λf s‖ - A₀) ≤ 16 * |C₂| / (T * Real.log T) := by
    have hd : ‖deriv Λf s‖ ≤ |C₂| / t :=
      (hder t ht2).trans (div_le_div_of_nonneg_right (le_abs_self C₂) ht0.le)
    calc ‖deriv Λf s‖ / (‖Λf s‖ - A₀) ≤ (|C₂| / t) / (Real.log T / 4) := div_le_div₀ (by positivity) hd hq hL
      _ = 4 * |C₂| / (t * Real.log T) := by field_simp
      _ ≤ 16 * |C₂| / (T * Real.log T) := by
          rw [div_le_div_iff₀ (by positivity) (by positivity)]
          have : 0 ≤ |C₂| * Real.log T := by positivity
          nlinarith
  -- second term
  have h2 : B₀ * ‖Λf s - Lpar τ‖ / ((‖Λf s‖ - A₀) * (‖Lpar τ‖ - A₀))
      ≤ 64 * B₀ * |C₃| * (|t - τ| + 1) / (T * Real.log T) := by
    have hd : ‖Λf s - Lpar τ‖ ≤ |C₃| * (|t - τ| + 1) / min t τ := by
      refine (htwo t τ ht2 hτ2).trans ?_
      exact div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_right (le_abs_self _) (by positivity))
        (le_min ht0.le (by linarith))
    have hmin : T / 4 ≤ min t τ := le_min ht (by linarith)
    have hden : (Real.log T / 4) * (Real.log T / 4) ≤ (‖Λf s‖ - A₀) * (‖Lpar τ‖ - A₀) :=
      mul_le_mul hL hΛ hq.le (by linarith)
    calc B₀ * ‖Λf s - Lpar τ‖ / ((‖Λf s‖ - A₀) * (‖Lpar τ‖ - A₀))
        ≤ B₀ * (|C₃| * (|t - τ| + 1) / min t τ) / ((Real.log T / 4) * (Real.log T / 4)) :=
          div_le_div₀ (by positivity) (mul_le_mul_of_nonneg_left hd hB0) (by positivity) hden
      _ ≤ B₀ * (|C₃| * (|t - τ| + 1) / (T / 4)) / ((Real.log T / 4) * (Real.log T / 4)) := by gcongr
      _ = 64 * B₀ * |C₃| * (|t - τ| + 1) / (T * (Real.log T * Real.log T)) := by field_simp; ring
      _ ≤ 64 * B₀ * |C₃| * (|t - τ| + 1) / (T * Real.log T) := by
          refine div_le_div_of_nonneg_left (by positivity) (by positivity) ?_
          have : Real.log T ≤ Real.log T * Real.log T := by nlinarith
          exact mul_le_mul_of_nonneg_left this hT0.le
  calc ‖deriv Λf s‖ / (‖Λf s‖ - A₀) + B₀ * ‖Λf s - Lpar τ‖ / ((‖Λf s‖ - A₀) * (‖Lpar τ‖ - A₀))
      ≤ 16 * |C₂| / (T * Real.log T) + 64 * B₀ * |C₃| * (|t - τ| + 1) / (T * Real.log T) := add_le_add h1 h2
    _ ≤ (16 * |C₂| + 64 * B₀ * |C₃|) * (|t - τ| + 1) / (T * Real.log T) := by
        rw [← add_div]
        refine div_le_div_of_nonneg_right ?_ (by positivity)
        have : 0 ≤ 16 * |C₂| * |t - τ| := by positivity
        nlinarith

/-- the frozen object B/(Λ⋆(τ) − A(c+it)) is uniformly small on the line: ‖B/(Λ⋆(τ) − A(c+it))‖ ≤ 4B₀/log T. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean#L882).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3b9bfcde9101b8f3c28b140c8bb809278cf521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
