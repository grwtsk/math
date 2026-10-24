# polynomial_exp_integral_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a941fce-b41e-a2de-7021-cece445dae55",
  "kind": "theorem",
  "lexical_name": "polynomial_exp_integral_bound",
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
  "slug": "polynomial-exp-integral-bound--71d91b5358616f859d829569",
  "source": {
    "blob": "b2577d56d032c131a9b09ff4aaed21372f068765",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 111,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71d91b5358616f859d8295692b6b5bc70d53990f7d4aaaf7853f79eba20cc99e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a941fce-b41e-a2de-7021-cece445dae55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem polynomial_exp_integral_bound {M R σ b : ℝ}
    (hM : 0 ≤ M) (hσ : 0 < σ) (hb : 0 ≤ b) :
    (∫ t in 0..b, M * (t ^ 2 / 4 + R ^ 2) * Real.exp (-σ * t)) ≤
      M * (R ^ 2 / σ + 1 / (2 * σ ^ 3)) := by
  let q : ℝ → ℝ := fun t =>
    -M * ((t ^ 2 / 4 + R ^ 2) / σ + t / (2 * σ ^ 2) + 1 / (2 * σ ^ 3)) *
      Real.exp (-σ * t)
  have hi : IntervalIntegrable (fun t : ℝ =>
      M * (t ^ 2 / 4 + R ^ 2) * Real.exp (-σ * t)) volume 0 b :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hd (t : ℝ) : HasDerivAt q (M * (t ^ 2 / 4 + R ^ 2) * Real.exp (-σ * t)) t := by
    have hp := (((((hasDerivAt_id t).pow 2).div_const 4).add_const (R ^ 2)).div_const σ).add
      ((hasDerivAt_id t).div_const (2 * σ ^ 2))
    have hlin := hp.add_const (1 / (2 * σ ^ 3))
    have hexp := ((hasDerivAt_id t).const_mul (-σ)).exp
    convert (hlin.const_mul (-M)).mul hexp using 1 <;> first | rfl | skip
    dsimp
    field_simp
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hi]
  have hq : q b ≤ 0 := by
    have hp : 0 ≤ (b ^ 2 / 4 + R ^ 2) / σ + b / (2 * σ ^ 2) + 1 / (2 * σ ^ 3) := by
      positivity
    dsimp only [q]
    exact mul_nonpos_of_nonpos_of_nonneg
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hM) hp) (Real.exp_pos _).le
  dsimp only [q] at hq ⊢
  norm_num only [zero_pow, zero_div, zero_add, add_zero, mul_zero, neg_zero, Real.exp_zero,
    mul_one]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszQuadraticLaplace/Variant86bab03e7ba19a704da2a661edf4e13d01b7b2fb8bf14402b63c3df17dcf6619.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2577d56d032c131a9b09ff4aaed21372f068765` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
