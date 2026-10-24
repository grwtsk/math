# tendsto_lpow_mul_X_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cce0ff4-4f08-3905-bd63-87d25d18fa58",
  "kind": "lemma",
  "lexical_name": "tendsto_lpow_mul_X_div",
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
  "slug": "tendsto-lpow-mul-x-div--56dc4bda7bfb9d84b532061e",
  "source": {
    "blob": "32f7cd6b3dc8a50c4b6b28aeeb1d157a104180bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 519,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56dc4bda7bfb9d84b532061e3d51367ca716ea3d2ee8a891aa9c2204f16f74a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cce0ff4-4f08-3905-bd63-87d25d18fa58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_lpow_mul_X_div (P : Params) (hlam1 : P.lam < 1) (n : ℕ) :
    Tendsto (fun T => l T ^ n * P.X T / T) atTop (𝓝 0) := by
  set c : ℝ := 1 - P.lam with hc
  have hc0 : 0 < c := by rw [hc]; linarith
  -- u ↦ (c u)^n e^{-(c u)} → 0 as u → ∞
  have h1 : Tendsto (fun u : ℝ => (c * u) ^ n * Real.exp (-(c * u))) atTop (𝓝 0) :=
    (Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero n).comp (tendsto_id.const_mul_atTop hc0)
  have h2 : Tendsto (fun T : ℝ => (c * l T) ^ n * Real.exp (-(c * l T))) atTop (𝓝 0) :=
    h1.comp Assembly.tendsto_l_atTop
  have h3 : Tendsto (fun T : ℝ => (1 / (2 * π * c ^ n)) * ((c * l T) ^ n * Real.exp (-(c * l T))))
      atTop (𝓝 0) := by
    simpa using h2.const_mul (1 / (2 * π * c ^ n))
  refine h3.congr' ?_
  filter_upwards [eventually_gt_atTop (0:ℝ)] with T hT
  have hexp : Real.exp (l T) = T / (2 * π) := by
    rw [l, Real.exp_log (by positivity)]
  have hX : P.X T = Real.exp (P.lam * l T) := rfl
  have e1 : Real.exp (-(c * l T)) = Real.exp (P.lam * l T) / Real.exp (l T) := by
    rw [← Real.exp_sub]; congr 1; rw [hc]; ring
  rw [e1, hexp, hX, mul_pow]
  field_simp

/-- **base-generic re-expansion input** (the five fields of Transfer/Inputs.lean's Reexpansion with the base
point Λ₀(T) and the frozen coefficients c(T) as parameters): ξ′ is Λ₀ = LT, c = xiCoeffFamily.c (Reexpansion.toAt);
Z′ is Λ₀ = ½l, c = wCoeffFamily.c (Transfer/W.lean). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantde47b847db19c7583723972dcf00d69544684fae416140720f1b0f4f5dcd384b.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32f7cd6b3dc8a50c4b6b28aeeb1d157a104180bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
