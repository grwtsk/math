# tendsto_lpow_mul_X_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 511,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:393b0377-00d3-69c4-3800-02cf4366446e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58980c63-458a-f309-cffe-af0845b3180c",
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
  "slug": "tendsto-lpow-mul-x-div--0f8c44806050e8a9c2aa2d97",
  "source": {
    "blob": "469a31ec055d6db903e9095cdca737f5b904f019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 511,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f8c44806050e8a9c2aa2d9750386e33afca95b02e4461876aba9121d938620f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58980c63-458a-f309-cffe-af0845b3180c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–535.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Transfer/Variantf8a53fe5437bca5baff47bb8b8cc8f4592004b0c8245b98e5475ca56dfe3c67f.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469a31ec055d6db903e9095cdca737f5b904f019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
