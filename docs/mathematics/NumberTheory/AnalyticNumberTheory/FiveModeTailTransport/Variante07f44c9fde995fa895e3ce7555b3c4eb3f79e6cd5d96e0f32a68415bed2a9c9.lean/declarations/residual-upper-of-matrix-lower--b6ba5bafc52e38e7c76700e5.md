# residual_upper_of_matrix_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f9d8be9-c6a0-622e-b107-ff1577397c88",
  "kind": "theorem",
  "lexical_name": "residual_upper_of_matrix_lower",
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
  "slug": "residual-upper-of-matrix-lower--b6ba5bafc52e38e7c76700e5",
  "source": {
    "blob": "2e2542de0bf91fcf4b07a8e39af27e63ab1fd97f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/FiveModeTailTransport/Variante07f44c9fde995fa895e3ce7555b3c4eb3f79e6cd5d96e0f32a68415bed2a9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6ba5bafc52e38e7c76700e561740caf121a412058a7154e0ca9e0564336e938",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/FiveModeTailTransport/Variante07f44c9fde995fa895e3ce7555b3c4eb3f79e6cd5d96e0f32a68415bed2a9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f9d8be9-c6a0-622e-b107-ff1577397c88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_of_matrix_lower (A D a0 : ℝ) (hA : 1 ≤ A)
    (hg : GammaEntryIntegrability A)
    (hbound : -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)))
    (hgamma : archimedeanValue explicitSecondDerivative A ≤ a0 + 390/A^2)
    (ha0 : a0 ≤ 0) :
    EstimateMertensResidual.mertensResidual A ≤ 195 + D/2 := by
  have hq := hbound
  rw [matrix_dot_eq_contraction, geometric_matrix_dictionary A hA hg,
    sourceQuadraticValue] at hq
  have hres : EstimateMertensResidual.mertensResidual A =
      primePowerContribution explicitSecondDerivative A := by
    rw [EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment A hA]
    exact (EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA).symm
  rw [hres]
  have hA2 : (1 : ℝ) ≤ A^2 := by nlinarith [sq_nonneg (A-1)]
  have hApos : 0 < A^2 := by linarith
  have hquot : 390/A^2 ≤ (390 : ℝ) := by
    rw [div_le_iff₀ hApos]
    nlinarith
  linarith

end CommonMeanScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/FiveModeTailTransport/Variante07f44c9fde995fa895e3ce7555b3c4eb3f79e6cd5d96e0f32a68415bed2a9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/FiveModeTailTransport/Variante07f44c9fde995fa895e3ce7555b3c4eb3f79e6cd5d96e0f32a68415bed2a9c9.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2542de0bf91fcf4b07a8e39af27e63ab1fd97f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
