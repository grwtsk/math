# nearest_linear_form_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:540bac83-0a2c-5931-482c-fb88b00bb7cc",
  "kind": "theorem",
  "lexical_name": "nearest_linear_form_upper",
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
  "slug": "nearest-linear-form-upper--be783d888cad29cdf28b65c5",
  "source": {
    "blob": "60c0dad4b528c5b7d891471eaf3a9165f758695d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be783d888cad29cdf28b65c504cdb44dabbd95edfe96cc8e7d8b36e73d8b4767",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:540bac83-0a2c-5931-482c-fb88b00bb7cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nearest_linear_form_upper (δ : ℝ) :
    |(nearest (δ * Real.log 3) : ℝ) * Real.log 2 -
      (nearest (δ * Real.log 2) : ℝ) * Real.log 3| ≤ logLength / 4 * phaseDistance δ 0 := by
  have h2 := residual_paid_by_chord (nearest_residual (δ * Real.log 2))
  have h3 := residual_paid_by_chord (nearest_residual (δ * Real.log 3))
  rw [residual_chord] at h2 h3
  have hs2 := pow_le_pow_left₀ (abs_nonneg _) h2 2
  have hs3 := pow_le_pow_left₀ (abs_nonneg _) h3 2
  rw [sq_abs] at hs2 hs3
  apply residual_linear_form_bound (a := Real.log 2) (b := Real.log 3)
    (x := PrimePhaseChord.residual (δ * Real.log 2))
    (y := PrimePhaseChord.residual (δ * Real.log 3))
    logLength_positive.le (norm_nonneg _) logLength_square
  · unfold PrimePhaseChord.residual
    ring
  · change PrimePhaseChord.residual (δ * Real.log 2) ^ 2 +
      PrimePhaseChord.residual (δ * Real.log 3) ^ 2 ≤ Real.pi ^ 2 / 4 * phaseDistance δ 0 ^ 2
    rw [phase_distance_sq_chords]
    nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60c0dad4b528c5b7d891471eaf3a9165f758695d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
