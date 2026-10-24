# prime_phase_compensation_tail_iff_mertens_residual_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eceac8df-432e-9ae4-960e-8e2df1bc2ee2",
  "kind": "theorem",
  "lexical_name": "prime_phase_compensation_tail_iff_mertens_residual_tail",
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
  "slug": "prime-phase-compensation-tail-iff-mertens-residual-tail--7df7f5ae90709248bf6a9ee3",
  "source": {
    "blob": "00e4d7c5ef6b94e032853449a541f34ed4ccfc81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant485190dfbbc32a35a840c28586f23843f3d998fdc1054278dc2b7e30acfe0b39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7df7f5ae90709248bf6a9ee375ea99073bd4b6a53bba79bf89711d073767a05d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant485190dfbbc32a35a840c28586f23843f3d998fdc1054278dc2b7e30acfe0b39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eceac8df-432e-9ae4-960e-8e2df1bc2ee2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_phase_compensation_tail_iff_mertens_residual_tail :
    PrimePhaseCompensationTail ↔ EstimateMertensResidual.MertensResidualTailUpperBound := by
  rw [prime_phase_compensation_tail_iff_prime_contribution_tail]
  have heq (A : ℝ) (hA : 1 ≤ A) :
      EstimateMertensResidual.mertensResidual A =
        primePowerContribution Realization.explicitSecondDerivative A := by
    rw [EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment A hA,
      EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA]
  constructor
  · rintro ⟨C, hC, R, hR, htail⟩
    refine ⟨C / 2, by positivity, R, hR, ?_⟩
    intro A hRA
    rw [heq A (hR.trans hRA)]
    exact htail A hRA
  · rintro ⟨D, hD, R, hR, htail⟩
    refine ⟨2 * D, by positivity, R, hR, ?_⟩
    intro A hRA
    have h := htail A hRA
    rw [heq A (hR.trans hRA)] at h
    linarith

/-- The only premise is the named open arithmetic tail bound. The Gamma
contribution already has a source-faithful uniform lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant485190dfbbc32a35a840c28586f23843f3d998fdc1054278dc2b7e30acfe0b39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant485190dfbbc32a35a840c28586f23843f3d998fdc1054278dc2b7e30acfe0b39.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00e4d7c5ef6b94e032853449a541f34ed4ccfc81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
