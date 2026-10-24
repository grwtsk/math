# sourceCorrelation_ge_three_quarters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b3e218b-196d-892b-a0e8-b230979bf642",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_ge_three_quarters",
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
  "slug": "sourcecorrelation-ge-three-quarters--89eb992f9dff32163bdf293b",
  "source": {
    "blob": "8053f338e70d171d7c67c35ebed4f8b3de629499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstruction/Variant0790265594ffe42f50c364ceee672dddca0a853d572910cf77fff9e596475ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89eb992f9dff32163bdf293b7393424a23a866c211e6b4c4d0e23fb911749bbc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstruction/Variant0790265594ffe42f50c364ceee672dddca0a853d572910cf77fff9e596475ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b3e218b-196d-892b-a0e8-b230979bf642`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_ge_three_quarters {A s : ℝ} (hA : 1 ≤ A)
    (hs : |s| ≤ A / 20) :
    (3 / 4 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A s := by
  have hpos : 0 < A := by linarith
  have hv := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := sourceCorrelation explicitSecondDerivative A)
    (fun x _ => (sourceCorrelation_contDiff A hpos).differentiable (by norm_num) x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      sourceCorrelation_deriv_abs_le_five_div hA x)
    convex_univ (mem_univ 0) (mem_univ s)
  have hv' : |sourceCorrelation explicitSecondDerivative A s - 1| ≤ (5 / A) * |s| := by
    simpa only [Real.norm_eq_abs, sub_zero, sourceCorrelation_zero A hA] using hv
  have he : (5 / A) * |s| ≤ (1 / 4 : ℝ) := by
    have he' := mul_le_mul_of_nonneg_left hs (show 0 ≤ 5 / A by positivity)
    have hm : (5 / A) * (A / 20) = (1 / 4 : ℝ) := by field_simp; ring
    exact hm ▸ he'
  have h := (abs_le.mp (hv'.trans he)).1
  linarith

/-- Exact finite lower bound for the source's 1/sqrt(n) translation-frame test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstruction/Variant0790265594ffe42f50c364ceee672dddca0a853d572910cf77fff9e596475ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstruction/Variant0790265594ffe42f50c364ceee672dddca0a853d572910cf77fff9e596475ca5.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8053f338e70d171d7c67c35ebed4f8b3de629499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
