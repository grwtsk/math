# halfTest_upper_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3428dd41-68e4-4441-4a01-4793b75c917d",
  "kind": "theorem",
  "lexical_name": "halfTest_upper_zero",
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
  "slug": "halftest-upper-zero--e14b889f944ec4c17e3231d0",
  "source": {
    "blob": "2f00407d0f1594cbd58014c71de82eedbdb19d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantbcc79c7df264ee38db16ccf1cd4f59ac1ebe8ab605aaf3a0c69f4166c7dd22b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e14b889f944ec4c17e3231d0a2d3f301f2bbbe44684fa8e44c83ed8dc15a4cfd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantbcc79c7df264ee38db16ccf1cd4f59ac1ebe8ab605aaf3a0c69f4166c7dd22b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3428dd41-68e4-4441-4a01-4793b75c917d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem halfTest_upper_zero {A : ℝ} (hA : 91 ≤ A) :
    actualHalfConvolutionReturnTest A (2 * A) = 0 := by
  have h2 := actual_correlation_second_edge_abs_le (z := 2 * A) hA
  have h0 := actual_correlation_edge_abs_le (z := 2 * A) hA
  norm_num only [sub_self, zero_pow, mul_zero, zero_div] at h2 h0
  simp [actualHalfConvolutionReturnTest, abs_nonpos_iff.mp h2, abs_nonpos_iff.mp h0]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantbcc79c7df264ee38db16ccf1cd4f59ac1ebe8ab605aaf3a0c69f4166c7dd22b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantbcc79c7df264ee38db16ccf1cd4f59ac1ebe8ab605aaf3a0c69f4166c7dd22b4.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f00407d0f1594cbd58014c71de82eedbdb19d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
