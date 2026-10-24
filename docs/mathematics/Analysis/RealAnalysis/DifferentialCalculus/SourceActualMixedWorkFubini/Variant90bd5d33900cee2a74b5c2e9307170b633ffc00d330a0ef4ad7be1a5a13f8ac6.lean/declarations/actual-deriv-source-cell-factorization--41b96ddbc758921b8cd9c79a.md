# actual_deriv_source_cell_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:147ef3c6-bb08-7139-43b7-289a19a4b998",
  "kind": "theorem",
  "lexical_name": "actual_deriv_source_cell_factorization",
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
  "slug": "actual-deriv-source-cell-factorization--41b96ddbc758921b8cd9c79a",
  "source": {
    "blob": "ebc8c60906478c317f9588c3d5d03e2870f3276f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 190,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualMixedWorkFubini/Variant90bd5d33900cee2a74b5c2e9307170b633ffc00d330a0ef4ad7be1a5a13f8ac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41b96ddbc758921b8cd9c79ae3dcbf552a7f34b0e0ce2ab8d4faf6d6d67ac121",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualMixedWorkFubini/Variant90bd5d33900cee2a74b5c2e9307170b633ffc00d330a0ef4ad7be1a5a13f8ac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:147ef3c6-bb08-7139-43b7-289a19a4b998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_deriv_source_cell_factorization
    {A : ℝ} (hA : 0 < A) (l b k : ℝ) (hlb : l ≤ b) (hk : 0 < k) :
    (∫ t in l..b, ∫ u in k..(k + 1), ∫ v : ℝ,
      errorExp t * deriv (normalizedTest explicitSecondDerivative A) (v - t) *
        (deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u) /
          (u * Real.sqrt u))) =
      ∫ v : ℝ,
        (∫ t in l..b, errorExp t * deriv (normalizedTest explicitSecondDerivative A) (v - t)) *
          (∫ u in k..(k + 1),
            deriv (normalizedTest explicitSecondDerivative A) (v + Real.log u) /
              (u * Real.sqrt u)) :=
  cell_fubini_factorization _ ((normalizedTest_contDiff A hA).continuous_deriv (by norm_num))
    hlb hk (deriv_source_tsupport_subset hA)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualMixedWorkFubini/Variant90bd5d33900cee2a74b5c2e9307170b633ffc00d330a0ef4ad7be1a5a13f8ac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualMixedWorkFubini/Variant90bd5d33900cee2a74b5c2e9307170b633ffc00d330a0ef4ad7be1a5a13f8ac6.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebc8c60906478c317f9588c3d5d03e2870f3276f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
