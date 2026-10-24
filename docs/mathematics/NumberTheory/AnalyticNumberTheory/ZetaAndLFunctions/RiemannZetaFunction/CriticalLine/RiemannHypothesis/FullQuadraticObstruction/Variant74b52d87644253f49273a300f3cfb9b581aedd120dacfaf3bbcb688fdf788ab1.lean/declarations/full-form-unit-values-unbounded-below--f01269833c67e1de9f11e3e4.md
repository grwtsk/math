# full_form_unit_values_unbounded_below

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36018f03848dedab38ef57a3563230130bff9cbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8640dac1-a27f-708d-ca1c-2d717a87de20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0ac9f63-4193-8468-2d0e-7d8fcdc4a7cd",
  "kind": "theorem",
  "lexical_name": "full_form_unit_values_unbounded_below",
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
  "slug": "full-form-unit-values-unbounded-below--f01269833c67e1de9f11e3e4",
  "source": {
    "blob": "36018f03848dedab38ef57a3563230130bff9cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 209,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f01269833c67e1de9f11e3e472a4375eb7e7c42b7deffb5e872f72918c99f7c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0ac9f63-4193-8468-2d0e-7d8fcdc4a7cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_form_unit_values_unbounded_below (M : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧ ∃ v : FullQuadraticOperator.Hilbert,
      ‖v‖ = 1 ∧ FullQuadraticOperator.GammaFormDomain v ∧
      FullQuadraticOperator.fullQuadraticForm A v < M := by
  obtain ⟨A, hA, f, hf, _, hnorm, hGamma, _, hvalue⟩ :=
    normalized_negative_frequency_window M
  have hg : MemLp (fun ξ ↦ (f ξ : ℂ)) 2 volume :=
    hf.continuousLinearMap_comp Complex.ofRealCLM
  let v : FullQuadraticOperator.Hilbert := hg.toLp (fun ξ ↦ (f ξ : ℂ))
  have hae : v =ᵐ[volume] (fun ξ ↦ (f ξ : ℂ)) := MemLp.coeFn_toLp _
  have hvnorm : ‖v‖ ^ 2 = 1 := by
    rw [← inner_self_eq_norm_sq (𝕜 := ℂ), L2.inner_def]
    have he : (∫ ξ, inner ℂ (v ξ) (v ξ)) = ((∫ ξ, f ξ ^ 2 : ℝ) : ℂ) := by
      calc
        _ = ∫ ξ, ((f ξ ^ 2 : ℝ) : ℂ) := by
          apply integral_congr_ae
          filter_upwards [hae] with ξ hξ
          rw [hξ]
          simp only [RCLike.inner_apply, Complex.mul_conj, Complex.normSq_ofReal,
            pow_two, Complex.ofReal_mul]
        _ = _ := integral_ofReal
    have hh := congrArg Complex.re he
    simp only [Complex.ofReal_re] at hh
    simpa [hnorm] using hh
  refine ⟨A, hA, v, by nlinarith [norm_nonneg v], ?_, ?_⟩
  · apply hGamma.norm.congr
    filter_upwards [hae] with ξ hξ
    rw [hξ]
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (sq_nonneg (f ξ)),
      Complex.normSq_ofReal, pow_two]
  · have he : FullQuadraticOperator.fullQuadraticForm A v =
        ∫ ξ, spectralMultiplier A ξ * f ξ ^ 2 := by
      apply integral_congr_ae
      filter_upwards [hae] with ξ hξ
      rw [hξ]
      simp only [Complex.normSq_ofReal, pow_two]
    exact he ▸ hvalue

/-- The complete ambient frequency form has no radius-uniform lower bound on its unit domain.
This does not assert failure of the required lower bound on the actual source vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36018f03848dedab38ef57a3563230130bff9cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
