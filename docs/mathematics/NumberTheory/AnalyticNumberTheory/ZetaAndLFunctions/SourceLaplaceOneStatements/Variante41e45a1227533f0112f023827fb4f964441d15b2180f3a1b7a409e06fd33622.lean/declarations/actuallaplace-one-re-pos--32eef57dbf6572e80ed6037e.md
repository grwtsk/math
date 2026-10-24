# actualLaplace_one_re_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39c9b016-e493-0f2a-3485-62eaddd4113c",
  "kind": "theorem",
  "lexical_name": "actualLaplace_one_re_pos",
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
  "slug": "actuallaplace-one-re-pos--32eef57dbf6572e80ed6037e",
  "source": {
    "blob": "4a7618f49dba53b21291079eeca83e75ef91d157",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneStatements/Variante41e45a1227533f0112f023827fb4f964441d15b2180f3a1b7a409e06fd33622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32eef57dbf6572e80ed6037efc78707573f05343bcff4dc193c6d33d2fd983f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneStatements/Variante41e45a1227533f0112f023827fb4f964441d15b2180f3a1b7a409e06fd33622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39c9b016-e493-0f2a-3485-62eaddd4113c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLaplace_one_re_pos : 0 < (actualLaplace 1).re := by
  rw [actualLaplace, fixedKernel_laplace_eq_transferProduct 1 (by norm_num), V_one_eq]
  have he : Complex.exp (-1) = (Real.exp (-1) : ℂ) := by
    simp
  rw [he]
  have hz : 0 < (riemannZeta (1 / 2 + 1 : ℂ)).re := by
    convert riemannZeta_re_pos_of_one_lt (by norm_num : (1 : ℝ) < 3 / 2) using 1
    norm_num
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    zero_mul, sub_zero, mul_zero]
  exact mul_pos (mul_pos (Real.exp_pos _) hz)
    (div_pos (mul_pos (by norm_num) source_exponential_difference_pos)
      (Real.sqrt_pos.mpr (by norm_num)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneStatements/Variante41e45a1227533f0112f023827fb4f964441d15b2180f3a1b7a409e06fd33622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceLaplaceOneStatements/Variante41e45a1227533f0112f023827fb4f964441d15b2180f3a1b7a409e06fd33622.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a7618f49dba53b21291079eeca83e75ef91d157` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
