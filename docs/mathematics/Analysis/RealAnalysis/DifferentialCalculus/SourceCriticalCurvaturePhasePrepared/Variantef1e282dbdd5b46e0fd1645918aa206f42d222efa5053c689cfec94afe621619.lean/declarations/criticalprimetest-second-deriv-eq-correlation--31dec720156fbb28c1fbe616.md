# criticalPrimeTest_second_deriv_eq_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81d2846c-edb0-7477-3202-63d3d491f7b9",
  "kind": "theorem",
  "lexical_name": "criticalPrimeTest_second_deriv_eq_correlation",
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
  "slug": "criticalprimetest-second-deriv-eq-correlation--31dec720156fbb28c1fbe616",
  "source": {
    "blob": "638613f13f247f17be6a9b1a02fc2ee7d852c7d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalCurvaturePhasePrepared/Variantef1e282dbdd5b46e0fd1645918aa206f42d222efa5053c689cfec94afe621619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31dec720156fbb28c1fbe616cbbc6def8c54fcf824c91a04953e9080dae5fa1a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalCurvaturePhasePrepared/Variantef1e282dbdd5b46e0fd1645918aa206f42d222efa5053c689cfec94afe621619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81d2846c-edb0-7477-3202-63d3d491f7b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeTest_second_deriv_eq_correlation
    {A u : ℝ} (hA : 0 < A) :
    deriv (deriv (criticalPrimeTest A)) u =
      Real.exp (u / 2) *
        (SourcePairing.sourceCorrelation explicitSecondDerivative A u / 4 +
          deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A) u +
          deriv (deriv (SourcePairing.sourceCorrelation explicitSecondDerivative A)) u) := by
  let C : ℝ → ℝ := SourcePairing.sourceCorrelation explicitSecondDerivative A
  have hC : HasDerivAt C (deriv C u) u :=
    ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1 u).hasDerivAt
  have hCp : HasDerivAt (deriv C) (deriv (deriv C) u) u :=
    ((contDiff_one_iff_deriv.mp (sourceCorrelation_deriv_contDiff hA)).1 u).hasDerivAt
  have he := ((hasDerivAt_id u).div_const 2).exp
  have hg : deriv (criticalPrimeTest A) =
      (fun v => Real.exp (v / 2) * (C v / 2 + deriv C v)) :=
    funext fun v => criticalPrimeTest_deriv A v hA
  have hd : HasDerivAt
      (fun v : ℝ => Real.exp (v / 2) * (C v / 2 + deriv C v))
      (Real.exp (u / 2) * (C u / 4 + deriv C u + deriv (deriv C) u)) u :=
    (he.mul ((hC.div_const 2).add hCp)).congr_deriv (by dsimp only [id_eq]; ring)
  change deriv (deriv (criticalPrimeTest A)) u =
    Real.exp (u / 2) * (C u / 4 + deriv C u + deriv (deriv C) u)
  rw [hg]
  exact hd.deriv

end FormalResearch.RiemannHypothesis.SourceCriticalCurvaturePhase
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalCurvaturePhasePrepared/Variantef1e282dbdd5b46e0fd1645918aa206f42d222efa5053c689cfec94afe621619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalCurvaturePhasePrepared/Variantef1e282dbdd5b46e0fd1645918aa206f42d222efa5053c689cfec94afe621619.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638613f13f247f17be6a9b1a02fc2ee7d852c7d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
