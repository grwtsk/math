# diagonal_deriv_linear_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64aea28a-2b4d-13e1-6ac7-5e791193064b",
  "kind": "theorem",
  "lexical_name": "diagonal_deriv_linear_bound",
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
  "slug": "diagonal-deriv-linear-bound--f8657f4170968d38d19ecdaa",
  "source": {
    "blob": "6fe671147bc94f3d8692130c65aa7f5efa0749a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SquareCompensation/Variant1e21533c2405f6b0078326bf32b7b061cae8d774494c04a2e5e73bd16a0b95ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8657f4170968d38d19ecdaa3d2068b0c064a969c9c4887a13c1be8c555fd5dd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SquareCompensation/Variant1e21533c2405f6b0078326bf32b7b061cae8d774494c04a2e5e73bd16a0b95ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64aea28a-2b4d-13e1-6ac7-5e791193064b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_deriv_linear_bound {A t : ℝ} (hA : 1 ≤ A) (ht : 0 ≤ t) :
    |deriv (diagonalCorrelation A) t| ≤ squareCurvatureCoefficient / A ^ 2 * t := by
  have h := sourceCorrelation_deriv_increment_bound hA 0 (2 * t)
  rw [zero_add, correlation_deriv_zero hA, sub_zero,
    abs_of_nonneg (by positivity : 0 ≤ 2 * t)] at h
  rw [diagonalCorrelation_deriv A t (by linarith), abs_mul]
  rw [abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  refine (mul_le_mul_of_nonneg_left h (by norm_num)).trans_eq ?_
  unfold squareCurvatureCoefficient
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SquareCompensation/Variant1e21533c2405f6b0078326bf32b7b061cae8d774494c04a2e5e73bd16a0b95ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SquareCompensation/Variant1e21533c2405f6b0078326bf32b7b061cae8d774494c04a2e5e73bd16a0b95ca.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fe671147bc94f3d8692130c65aa7f5efa0749a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
