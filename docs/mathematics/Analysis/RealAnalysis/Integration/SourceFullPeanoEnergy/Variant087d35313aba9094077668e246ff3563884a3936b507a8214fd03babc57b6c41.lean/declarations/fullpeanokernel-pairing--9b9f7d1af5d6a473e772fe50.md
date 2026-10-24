# fullPeanoKernel_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c7c9371-391b-b5af-e91e-df475ed78773",
  "kind": "theorem",
  "lexical_name": "fullPeanoKernel_pairing",
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
  "slug": "fullpeanokernel-pairing--9b9f7d1af5d6a473e772fe50",
  "source": {
    "blob": "fb15d3015bc3973237bc00a8567b42d30ac73c52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 354,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant087d35313aba9094077668e246ff3563884a3936b507a8214fd03babc57b6c41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b9f7d1af5d6a473e772fe50436f2e13abcbc13aa0d9fa300034ba31d9c32d42",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant087d35313aba9094077668e246ff3563884a3936b507a8214fd03babc57b6c41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c7c9371-391b-b5af-e91e-df475ed78773`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullPeanoKernel_pairing (A : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..(2 * A), fullPeanoKernel u *
      deriv (deriv (weightedCorrelation A)) u) = (rationalRemainderContour A).re := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hcc := hd.continuous_deriv (by norm_num)
  have hsm : IntervalIntegrable (fun u : ℝ ↦ dirichletMoment 1 * Real.exp (-u) *
      deriv (deriv (weightedCorrelation A)) u) volume 0 (2 * A) := by
    exact (show Continuous (fun u : ℝ ↦ dirichletMoment 1 * Real.exp (-u) *
      deriv (deriv (weightedCorrelation A)) u) by fun_prop).intervalIntegrable 0 (2 * A)
  simp_rw [fullPeanoKernel, sub_mul]
  rw [intervalIntegral.integral_sub (fullPeanoRaw_pairing_integrable A hA) hsm,
    fullPeanoRaw_pairing A hA]
  have hfac : (∫ u in (0 : ℝ)..(2 * A), dirichletMoment 1 * Real.exp (-u) *
      deriv (deriv (weightedCorrelation A)) u) =
      dirichletMoment 1 * (continuousPoleHalf A - 5 / 2) := by
    simp_rw [mul_assoc, intervalIntegral.integral_const_mul, smoothPeano_pairing A hA]
  rw [hfac]
  have hr := mertensResidual_eq_rational A hA
  unfold rationalBaseline at hr
  linarith

/-- Smooth-block removal keeps the full signed arithmetic Peano pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant087d35313aba9094077668e246ff3563884a3936b507a8214fd03babc57b6c41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant087d35313aba9094077668e246ff3563884a3936b507a8214fd03babc57b6c41.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb15d3015bc3973237bc00a8567b42d30ac73c52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
