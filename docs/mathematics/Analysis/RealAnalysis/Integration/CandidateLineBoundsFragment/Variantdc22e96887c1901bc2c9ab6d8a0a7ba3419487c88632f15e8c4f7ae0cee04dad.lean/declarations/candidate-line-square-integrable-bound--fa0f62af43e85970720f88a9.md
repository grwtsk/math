# candidate_line_square_integrable_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2b02aed-886e-5718-1414-86b92f0b800a",
  "kind": "theorem",
  "lexical_name": "candidate_line_square_integrable_bound",
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
  "slug": "candidate-line-square-integrable-bound--fa0f62af43e85970720f88a9",
  "source": {
    "blob": "e71cc5f6408738e8de995da246872998fe158573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsFragment/Variantdc22e96887c1901bc2c9ab6d8a0a7ba3419487c88632f15e8c4f7ae0cee04dad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa0f62af43e85970720f88a9d21cddf146019ea073f22bbedd8b3a1cfb7c008c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsFragment/Variantdc22e96887c1901bc2c9ab6d8a0a7ba3419487c88632f15e8c4f7ae0cee04dad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2b02aed-886e-5718-1414-86b92f0b800a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_line_square_integrable_bound (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ (X : ℕ), 1 ≤ X → ∀ h : ℝ, 0 < h → h ≤ 1 →
      ∀ σ : ℝ, 0 ≤ σ →
        Integrable (fun t : ℝ =>
          ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2) ∧
        (∫ t : ℝ, ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2) ≤
          C * (X : ℝ) * (1+Real.log (X : ℝ))^2 * h⁻¹^7 := by
  obtain ⟨D, hD, hd⟩ := candidate_vertical_decay ε hε
  refine ⟨Real.pi*D^2, by positivity, ?_⟩
  intro X hX h hh hh1 σ hσ
  let K : ℝ := D * Real.sqrt (X : ℝ) * (1+Real.log (X : ℝ)) * h⁻¹^3
  have hdec : ∀ t : ℝ, ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖ ≤
      K/(1+h*|t|)^3 := hd X hX h hh hh1 σ hσ
  have hmajor := candidate_square_majorant X ε h σ K hh hdec
  have hc : Continuous (fun t : ℝ => candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)) := by
    apply continuous_iff_continuousAt.mpr
    intro t
    exact (candidate_differentiableAt X ε h hε hh.le _ (by simpa using hσ)).continuousAt.comp
      (by fun_prop)
  have hi := (scaled_cauchy_integrable_integral h hh).1.const_mul (K^2)
  have hfi : Integrable (fun t : ℝ =>
      ‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2) := by
    apply hi.mono' (hc.norm.pow 2).aestronglyMeasurable
    filter_upwards with t
    change |‖candidate X ε h ((σ : ℂ)+(t : ℂ)*Complex.I)‖^2| ≤ _
    rw [abs_of_nonneg (sq_nonneg _)]
    exact hmajor t
  refine ⟨hfi, ?_⟩
  calc
    _ ≤ ∫ t : ℝ, K^2 * (1+(h*t)^2)⁻¹ :=
      integral_mono hfi hi hmajor
    _ = K^2 * (Real.pi/h) := by
      rw [integral_const_mul, (scaled_cauchy_integrable_integral h hh).2]
    _ = _ := by
      dsimp [K]
      have hs : (Real.sqrt (X : ℝ))^2 = (X : ℝ) := Real.sq_sqrt (Nat.cast_nonneg _)
      simp only [mul_pow, hs, div_eq_mul_inv]
      ring

end
end CandidateLineBoundsScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsFragment/Variantdc22e96887c1901bc2c9ab6d8a0a7ba3419487c88632f15e8c4f7ae0cee04dad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsFragment/Variantdc22e96887c1901bc2c9ab6d8a0a7ba3419487c88632f15e8c4f7ae0cee04dad.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e71cc5f6408738e8de995da246872998fe158573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
