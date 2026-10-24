# candidate_line_square_integrable_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ba947c446260b6aec236b1eab1cca430bbfdd87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 546,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b021b133-6d79-dac1-a7a8-a55767661ce8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1368f5a8-9873-e482-64ca-1f5fe46277d5",
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
  "slug": "candidate-line-square-integrable-bound--36871477bf6be20131824668",
  "source": {
    "blob": "7ba947c446260b6aec236b1eab1cca430bbfdd87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 546,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36871477bf6be201318246682f483fcad95108d2c7fd3eabe6f6692f6eaac0bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1368f5a8-9873-e482-64ca-1f5fe46277d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–592.

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

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic MobiusPoleNumerator
open CandidateLineBoundsScratch

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBoundsStatements/Variant5464e207b5df4c9c8c939c730c09a6b7c2a5f976821b925055bb5721c1993c8c.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ba947c446260b6aec236b1eab1cca430bbfdd87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
