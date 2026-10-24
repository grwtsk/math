# exponential_moment_le_eight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f10eb80-2992-5f7f-e488-4d8259562ef8",
  "kind": "theorem",
  "lexical_name": "exponential_moment_le_eight",
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
  "slug": "exponential-moment-le-eight--0b2d911bf0c036f9e39d2ce9",
  "source": {
    "blob": "6a9a5e7f118c85cb4c47919a0e945f7c475c54ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantd9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b2d911bf0c036f9e39d2ce992e69ec078bfed00e11868dba2eb7db0b19ea57f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantd9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f10eb80-2992-5f7f-e488-4d8259562ef8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_moment_le_eight (T : ℝ) (hT : 0 ≤ T) :
    (∫ s in 0..T, Real.exp (-s / 2) * (s + s ^ 2 / 4)) ≤ 8 := by
  have hd (s : ℝ) : HasDerivAt
      (fun t => -(t ^ 2 / 2 + 4 * t + 8) * Real.exp (-t / 2))
      (Real.exp (-s / 2) * (s + s ^ 2 / 4)) s := by
    have hp := ((((hasDerivAt_id s).pow 2).div_const 2).add
      ((hasDerivAt_id s).const_mul 4)).add_const 8
    have he := (((hasDerivAt_id s).neg.div_const 2).exp)
    exact (hp.neg.mul he).congr_deriv (by dsimp; ring)
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
    ((by fun_prop : Continuous (fun s : ℝ =>
      Real.exp (-s / 2) * (s + s ^ 2 / 4))).intervalIntegrable 0 T)]
  simp only [neg_zero, zero_div, Real.exp_zero, zero_pow (by norm_num : 2 ≠ 0),
    zero_add, mul_one]
  have hp : 0 ≤ (T ^ 2 / 2 + 4 * T + 8) * Real.exp (-T / 2) := by positivity
  linarith

/-- Evenness anchors the derivative at zero without a large-scale curvature premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantd9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantd9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9a5e7f118c85cb4c47919a0e945f7c475c54ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
