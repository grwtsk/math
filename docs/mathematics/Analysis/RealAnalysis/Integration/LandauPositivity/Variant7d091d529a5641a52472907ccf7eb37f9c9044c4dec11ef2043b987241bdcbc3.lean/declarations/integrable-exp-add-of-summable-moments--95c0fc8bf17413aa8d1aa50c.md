# integrable_exp_add_of_summable_moments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b22eb1b7015f389073296df210e9f5b42ded260b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d57545b9-c158-8c5c-397f-7118395275c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2394dee-3533-f846-3ae0-95a3c5850326",
  "kind": "theorem",
  "lexical_name": "integrable_exp_add_of_summable_moments",
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
  "slug": "integrable-exp-add-of-summable-moments--95c0fc8bf17413aa8d1aa50c",
  "source": {
    "blob": "b22eb1b7015f389073296df210e9f5b42ded260b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LandauPositivity/Variant7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95c0fc8bf17413aa8d1aa50caf02e91ad6187edf88efbab72dfd9becbd0c775a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LandauPositivity/Variant7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2394dee-3533-f846-3ae0-95a3c5850326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_exp_add_of_summable_moments (v r : ℝ) (hr : 0 ≤ r)
    (hX : ∀ᵐ ω ∂μ, 0 ≤ X ω)
    (hmom : ∀ n : ℕ, Integrable (fun ω ↦ X ω ^ n * Real.exp (v * X ω)) μ)
    (hsum : Summable (fun n : ℕ ↦ r ^ n / (n.factorial : ℝ) *
      ∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ)) :
    Integrable (fun ω ↦ Real.exp ((v + r) * X ω)) μ := by
  let F : ℕ → Ω → ℝ := exponentialTerm (X := X) v r
  have hF (n : ℕ) : Integrable (F n) μ := (hmom n).const_mul _
  have hnonneg (n : ℕ) : ∀ᵐ ω ∂μ, 0 ≤ F n ω := by
    filter_upwards [hX] with ω hω
    dsimp [F, exponentialTerm]
    positivity
  have hsum_norm : Summable (fun n ↦ ∫ ω, ‖F n ω‖ ∂μ) := by
    have heq (n : ℕ) : (∫ ω, ‖F n ω‖ ∂μ) =
        r ^ n / (n.factorial : ℝ) * ∫ ω, X ω ^ n * Real.exp (v * X ω) ∂μ := by
      have hnorm : (fun ω ↦ ‖F n ω‖) =ᵐ[μ] F n := by
        filter_upwards [hnonneg n] with ω hω
        exact Real.norm_of_nonneg hω
      rw [integral_congr_ae hnorm]
      exact integral_const_mul _ _
    simpa only [heq] using hsum
  have hmass : (∑' n, ∫⁻ ω, ‖F n ω‖ₑ ∂μ) ≠ ⊤ := by
    simp_rw [← ofReal_integral_norm_eq_lintegral_enorm (hF _)]
    rw [← ENNReal.ofReal_tsum_of_nonneg
      (fun n ↦ integral_nonneg (fun ω ↦ norm_nonneg (F n ω))) hsum_norm]
    exact ENNReal.ofReal_ne_top
  have hint : Integrable (fun ω ↦ ∑' n, F n ω) μ := by
    constructor
    · have hm (n : ℕ) : AEStronglyMeasurable (F n) μ := (hF n).1
      fun_prop
    · rw [hasFiniteIntegral_iff_enorm]
      apply lt_of_le_of_lt (lintegral_mono (fun ω ↦ enorm_tsum_le_tsum_enorm))
      rw [lintegral_tsum (fun n ↦ (hF n).1.enorm)]
      exact lt_top_iff_ne_top.mpr hmass
  exact hint.congr (Filter.Eventually.of_forall
    (fun ω ↦ (exponentialTerm_hasSum v r ω).tsum_eq))


/-- Inside the original convergence interval, Mathlib supplies all tilted moments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LandauPositivity/Variant7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LandauPositivity/Variant7d091d529a5641a52472907ccf7eb37f9c9044c4dec11ef2043b987241bdcbc3.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22eb1b7015f389073296df210e9f5b42ded260b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
