# actual_whole_error_le_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aac46ddf-3292-01e4-c49a-1301ac25b5e3",
  "kind": "theorem",
  "lexical_name": "actual_whole_error_le_majorant",
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
  "slug": "actual-whole-error-le-majorant--70fc408a8bcbbb7a563b92e8",
  "source": {
    "blob": "521fe18234c7b0fa00ae03ac408ff11f826231ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variantab676cf6313d15717c96d309dc744e34f1eae16d30826493a828f6000cd7b0e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70fc408a8bcbbb7a563b92e86a680b706b9af75e636393f811bd188e8049b18e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variantab676cf6313d15717c96d309dc744e34f1eae16d30826493a828f6000cd7b0e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aac46ddf-3292-01e4-c49a-1301ac25b5e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_whole_error_le_majorant {A k u : ℝ} (hA : 91 ≤ A)
    (hk : 0 < k) (hu : 0 < u) :
    |Int.fract u * (deriv (logProfile A k) u - cubicLogModelDerivative A k u)| ≤
      wholeCubicMajorant A k u := by
  rw [abs_mul, abs_of_nonneg (Int.fract_nonneg u)]
  have hb := mul_le_mul_of_nonneg_left (cubic_log_error_all_positive hA hk hu)
    (Int.fract_nonneg u)
  calc
    _ ≤ Int.fract u * (67 / (A ^ 4 * Real.sqrt k) * u ^ (-3 / 2 : ℝ) *
        ((5 / 24 : ℝ) * |Real.log u| ^ 4 + |Real.log u| ^ 5 / 48)) := hb
    _ = _ := by
      unfold wholeCubicMajorant absoluteCoefficientWeight
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variantab676cf6313d15717c96d309dc744e34f1eae16d30826493a828f6000cd7b0e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceWholeCubicSampling/Variantab676cf6313d15717c96d309dc744e34f1eae16d30826493a828f6000cd7b0e0.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `521fe18234c7b0fa00ae03ac408ff11f826231ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
