# oneTest_upper_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89088465-e643-9e30-6b1a-550a00f264de",
  "kind": "theorem",
  "lexical_name": "oneTest_upper_zero",
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
  "slug": "onetest-upper-zero--04d0db5207fb16f5ba7a90bc",
  "source": {
    "blob": "a4ef95c26096b50409e363202da30db21e316b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 185,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiErrorCriticalCovariance/Variantcf68ce795606ff23f4e7f5367fd26ae38bc28adefb879d71a1cd8354c7e9ef65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04d0db5207fb16f5ba7a90bcc8ce6245ae44dfb2d440dd516d233bbbcd2365b3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiErrorCriticalCovariance/Variantcf68ce795606ff23f4e7f5367fd26ae38bc28adefb879d71a1cd8354c7e9ef65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89088465-e643-9e30-6b1a-550a00f264de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem oneTest_upper_zero {A : ℝ} (hA : 91 ≤ A) :
    actualOneConvolutionReturnTest A (2 * A) = 0 := by
  have h2 := actual_correlation_second_edge_abs_le (z := 2 * A) hA
  have h1 := actual_correlation_first_edge_abs_le (z := 2 * A) hA le_rfl
  norm_num only [sub_self, zero_pow, mul_zero, zero_div] at h2 h1
  simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h1
  simp [actualOneConvolutionReturnTest, abs_nonpos_iff.mp h2, abs_nonpos_iff.mp h1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiErrorCriticalCovariance/Variantcf68ce795606ff23f4e7f5367fd26ae38bc28adefb879d71a1cd8354c7e9ef65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiErrorCriticalCovariance/Variantcf68ce795606ff23f4e7f5367fd26ae38bc28adefb879d71a1cd8354c7e9ef65.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4ef95c26096b50409e363202da30db21e316b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
