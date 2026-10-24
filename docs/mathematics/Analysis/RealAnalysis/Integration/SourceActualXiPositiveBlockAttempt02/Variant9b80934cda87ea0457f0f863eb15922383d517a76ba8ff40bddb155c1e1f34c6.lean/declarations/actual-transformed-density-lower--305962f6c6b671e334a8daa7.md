# actual_transformed_density_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe08b6f5-b5a6-77bd-816b-255b6c3c1084",
  "kind": "theorem",
  "lexical_name": "actual_transformed_density_lower",
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
  "slug": "actual-transformed-density-lower--305962f6c6b671e334a8daa7",
  "source": {
    "blob": "1a24d8406f8860416376c48539b38fbde9702e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant9b80934cda87ea0457f0f863eb15922383d517a76ba8ff40bddb155c1e1f34c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:305962f6c6b671e334a8daa76b5cf0dcdfe2729121b08bbf5cf31ed762563503",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant9b80934cda87ea0457f0f863eb15922383d517a76ba8ff40bddb155c1e1f34c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe08b6f5-b5a6-77bd-816b-255b6c3c1084`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_transformed_density_lower {A y : ℝ} (hA : 40 ≤ A)
    (hy : (13 / 2 : ℝ) ≤ y) (hy7 : y < 7) :
    (1 / 24 : ℝ) / y ^ (3 / 2 : ℝ) ≤ actualTransformedXiBlockDensity A y := by
  have hn := shiftedActualChebyshev_negative_on_block y hy hy7
  have hk := actual_transformed_kernel_negative hA hy hy7.le
  have hp : 0 < y := by linarith
  have hprod : (1 / 24 : ℝ) ≤ shiftedActualChebyshev y *
      (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) := by
    have hm := mul_le_mul_of_nonneg_left (show (1 / 4 : ℝ) ≤
      -(deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) by linarith)
      (show 0 ≤ -shiftedActualChebyshev y by linarith)
    nlinarith
  exact div_le_div_of_nonneg_right hprod (Real.rpow_pos_of_pos hp _).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant9b80934cda87ea0457f0f863eb15922383d517a76ba8ff40bddb155c1e1f34c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant9b80934cda87ea0457f0f863eb15922383d517a76ba8ff40bddb155c1e1f34c6.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a24d8406f8860416376c48539b38fbde9702e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
