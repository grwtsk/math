# actualDeficit_coarse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6ba0a8c-e55f-bb1e-6547-f4a58072a4d3",
  "kind": "theorem",
  "lexical_name": "actualDeficit_coarse",
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
  "slug": "actualdeficit-coarse--c0060fb8c95762147382d2a7",
  "source": {
    "blob": "0e14d2e740478e61b93c88d5cd42c2cbbff4a20a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 25,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualCommonMeanGammaBudget/Variant95e2ffa8930f7f0ae14f9c10f56296e4b44c1bb80b114cf232328103f67e6ee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0060fb8c95762147382d2a7abb20e96f9869b20d5e24502ac98e0167713de47",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ActualCommonMeanGammaBudget/Variant95e2ffa8930f7f0ae14f9c10f56296e4b44c1bb80b114cf232328103f67e6ee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6ba0a8c-e55f-bb1e-6547-f4a58072a4d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDeficit_coarse {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    0 ≤ 1-sourceCorrelation explicitSecondDerivative A t ∧
      1-sourceCorrelation explicitSecondDerivative A t ≤ (65/(6*A^2))*t^2 := by
  refine ⟨correlation_deficit_nonneg hA t, (correlation_deficit_le_sharp hA t).trans ?_⟩
  have h := mul_le_mul_of_nonneg_right sharpConstant_le_coarse
    (div_nonneg (sq_nonneg t) (by positivity : (0:ℝ) ≤ 2*A^2))
  calc
    (162826/7623:ℝ)*t^2/(2*A^2) = (162826/7623:ℝ)*(t^2/(2*A^2)) := by ring
    _ ≤ (65/3:ℝ)*(t^2/(2*A^2)) := h
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ActualCommonMeanGammaBudget/Variant95e2ffa8930f7f0ae14f9c10f56296e4b44c1bb80b114cf232328103f67e6ee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualCommonMeanGammaBudget/Variant95e2ffa8930f7f0ae14f9c10f56296e4b44c1bb80b114cf232328103f67e6ee6.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e14d2e740478e61b93c88d5cd42c2cbbff4a20a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
