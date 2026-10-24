# actualCorrelation_third_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5933e65a-a22c-6104-e803-6dcc82003b12",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_third_abs_le",
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
  "slug": "actualcorrelation-third-abs-le--d8a7f85f7bbe62fb3b20abe0",
  "source": {
    "blob": "f7da9ff38c347e360f5c7f0b933314e984a9600f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8a7f85f7bbe62fb3b20abe0d5570d67ec327bf73e840120ac61fe407a66f9d1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5933e65a-a22c-6104-e803-6dcc82003b12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelation_third_abs_le {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| ≤
      67 / A ^ 4 * |t| := by
  have hp : 0 < A := by linarith
  have hc := actual_correlation_contDiff_four A hp
  have hd : Differentiable ℝ
      (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      hc.differentiable_iteratedDeriv 3 (by norm_num)
  have he := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))))
    (fun x _ => hd x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      actual_correlation_fourth_abs_le_sixty_seven A x hA)
    convex_univ (mem_univ (0 : ℝ)) (mem_univ t)
  simpa only [Real.norm_eq_abs, (actualCorrelation_odd_jets_zero hp).2, sub_zero] using he

/-- The genuine first jet grows only linearly from its actual zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7da9ff38c347e360f5c7f0b933314e984a9600f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
