# weightedCorrelation_second_deriv_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c830b546-0520-caa7-bdc9-f3132083b28f",
  "kind": "theorem",
  "lexical_name": "weightedCorrelation_second_deriv_formula",
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
  "slug": "weightedcorrelation-second-deriv-formula--82546d571be6c30ed0db92ec",
  "source": {
    "blob": "f290f104974431128e4ab7a18baadd554d8f9a9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoPositiveWindow/Variantaaacafbd4bfe99075ecfacea1400c752cc6d131029889c267c8be8237f659350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82546d571be6c30ed0db92ec5fa5740c203ffda84eb3599db391c01d1b06e98a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoPositiveWindow/Variantaaacafbd4bfe99075ecfacea1400c752cc6d131029889c267c8be8237f659350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c830b546-0520-caa7-bdc9-f3132083b28f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedCorrelation_second_deriv_formula (A u : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (weightedCorrelation A)) u =
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u +
        3 * deriv (sourceCorrelation explicitSecondDerivative A) u +
        (9 / 4) * sourceCorrelation explicitSecondDerivative A u) * Real.exp (3 * u / 2) := by
  have hc := SourceCorrelationCurvature.sourceCorrelation_contDiff_two
    (show 0 < A by linarith)
  have hd := (hc.differentiable (by norm_num) u).hasDerivAt
  have hdc : ContDiff ℝ 1 (deriv (sourceCorrelation explicitSecondDerivative A)) := hc.deriv'
  have hdd := (hdc.differentiable (by norm_num) u).hasDerivAt
  have he : HasDerivAt (fun x : ℝ ↦ Real.exp (3 * x / 2))
      (Real.exp (3 * u / 2) * (3 / 2)) u := by
    convert (((hasDerivAt_id u).const_mul 3).div_const 2).exp using 1 <;> simp
  have hsum := hdd.add (hd.const_mul (3 / 2))
  change HasDerivAt (fun x : ℝ ↦
    deriv (sourceCorrelation explicitSecondDerivative A) x +
      (3 / 2) * sourceCorrelation explicitSecondDerivative A x)
    (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u +
      (3 / 2) * deriv (sourceCorrelation explicitSecondDerivative A) u) u at hsum
  have hm := hsum.mul he
  change HasDerivAt (fun x : ℝ ↦
    (deriv (sourceCorrelation explicitSecondDerivative A) x +
      (3 / 2) * sourceCorrelation explicitSecondDerivative A x) * Real.exp (3 * x / 2))
    ((deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u +
      (3 / 2) * deriv (sourceCorrelation explicitSecondDerivative A) u) * Real.exp (3 * u / 2) +
      (Real.exp (3 * u / 2) * (3 / 2)) *
      (deriv (sourceCorrelation explicitSecondDerivative A) u +
        (3 / 2) * sourceCorrelation explicitSecondDerivative A u)) u at hm
  have heq : deriv (weightedCorrelation A) = fun x : ℝ ↦
      (deriv (sourceCorrelation explicitSecondDerivative A) x +
        (3 / 2) * sourceCorrelation explicitSecondDerivative A x) * Real.exp (3 * x / 2) :=
    funext fun x ↦ weightedCorrelation_deriv_formula A x hA
  rw [heq, hm.deriv]
  ring

/-- A fixed fractional window has strictly positive curvature in the actual exponential weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoPositiveWindow/Variantaaacafbd4bfe99075ecfacea1400c752cc6d131029889c267c8be8237f659350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoPositiveWindow/Variantaaacafbd4bfe99075ecfacea1400c752cc6d131029889c267c8be8237f659350.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f290f104974431128e4ab7a18baadd554d8f9a9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
