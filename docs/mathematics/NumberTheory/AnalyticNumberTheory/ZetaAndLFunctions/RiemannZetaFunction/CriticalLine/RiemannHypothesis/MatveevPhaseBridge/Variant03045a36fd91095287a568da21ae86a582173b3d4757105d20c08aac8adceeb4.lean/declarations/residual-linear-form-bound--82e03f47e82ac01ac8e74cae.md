# residual_linear_form_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3114a784-be49-77ca-ce58-98bfaa01a092",
  "kind": "theorem",
  "lexical_name": "residual_linear_form_bound",
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
  "slug": "residual-linear-form-bound--82e03f47e82ac01ac8e74cae",
  "source": {
    "blob": "60c0dad4b528c5b7d891471eaf3a9165f758695d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82e03f47e82ac01ac8e74cae5970d867761dbb741cc0702c0609719c29baa574",
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

Occurrence: `result:3114a784-be49-77ca-ce58-98bfaa01a092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_linear_form_bound {a b x y d Λ L : ℝ}
    (hL : 0 ≤ L) (hd : 0 ≤ d) (hs : L ^ 2 = a ^ 2 + b ^ 2)
    (hrel : 2 * Real.pi * Λ = b * x - a * y)
    (henergy : x ^ 2 + y ^ 2 ≤ Real.pi ^ 2 / 4 * d ^ 2) : |Λ| ≤ L / 4 * d := by
  have hcs : (b * x - a * y) ^ 2 ≤ L ^ 2 * (x ^ 2 + y ^ 2) := by
    rw [hs]
    nlinarith [sq_nonneg (a * x + b * y)]
  have he := mul_le_mul_of_nonneg_left henergy (sq_nonneg L)
  rw [← hrel] at hcs
  have hsq : Λ ^ 2 ≤ (L / 4 * d) ^ 2 := by
    apply le_of_mul_le_mul_left (a := (2 * Real.pi) ^ 2) _ (by positivity)
    calc
      _ = (2 * Real.pi * Λ) ^ 2 := by ring
      _ ≤ L ^ 2 * (x ^ 2 + y ^ 2) := hcs
      _ ≤ L ^ 2 * (Real.pi ^ 2 / 4 * d ^ 2) := he
      _ = _ := by ring
  apply (sq_le_sq₀ (abs_nonneg _) (by positivity)).mp
  simpa only [sq_abs] using hsq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60c0dad4b528c5b7d891471eaf3a9165f758695d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
