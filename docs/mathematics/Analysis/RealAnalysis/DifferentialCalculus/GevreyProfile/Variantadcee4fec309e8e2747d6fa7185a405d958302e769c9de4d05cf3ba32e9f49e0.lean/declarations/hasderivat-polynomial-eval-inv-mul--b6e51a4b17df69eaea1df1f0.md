# hasDerivAt_polynomial_eval_inv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3c162e8f3bc1a1b89ca7bd0935c06f2c6793187",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/adcee4fec309e8e2747d6fa7185a405d958302e769c9de4d05cf3ba32e9f49e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a4dd762-b4a5-9e3c-8d32-856f9eee4c88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97813326-b3c0-e3fa-c60b-25b6d0c22cc0",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_polynomial_eval_inv_mul",
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
  "slug": "hasderivat-polynomial-eval-inv-mul--b6e51a4b17df69eaea1df1f0",
  "source": {
    "blob": "e3c162e8f3bc1a1b89ca7bd0935c06f2c6793187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variantadcee4fec309e8e2747d6fa7185a405d958302e769c9de4d05cf3ba32e9f49e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6e51a4b17df69eaea1df1f0af3ba6b1c1468ee070cb2e7606cd33f313437e7c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variantadcee4fec309e8e2747d6fa7185a405d958302e769c9de4d05cf3ba32e9f49e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97813326-b3c0-e3fa-c60b-25b6d0c22cc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_polynomial_eval_inv_mul (p : ℝ[X]) (x : ℝ) :
    HasDerivAt (fun x ↦ p.eval x⁻¹ * squaredExpNegInvGlue x)
      ((2 * X ^ 3 * p - X ^ 2 * derivative p).eval x⁻¹ * squaredExpNegInvGlue x) x := by
  rcases lt_trichotomy x 0 with hx | rfl | hx
  · rw [squaredExpNegInvGlue_zero_of_nonpos hx.le, mul_zero]
    refine (hasDerivAt_const _ 0).congr_of_eventuallyEq ?_
    filter_upwards [gt_mem_nhds hx] with y hy
    rw [squaredExpNegInvGlue_zero_of_nonpos hy.le, mul_zero]
  · rw [squaredExpNegInvGlue_zero, mul_zero, hasDerivAt_iff_tendsto_slope]
    refine ((tendsto_polynomial_inv_mul_zero (p * X)).mono_left inf_le_left).congr fun x ↦ ?_
    simp [slope_def_field, div_eq_mul_inv, mul_right_comm]
  · have hd := ((p.hasDerivAt x⁻¹).mul
      (((hasDerivAt_id x⁻¹).pow 2).neg.exp)).comp x (hasDerivAt_inv hx.ne')
    convert! hd.congr_of_eventuallyEq _ using 1
    · simp [squaredExpNegInvGlue, hx.not_ge]
      ring
    · filter_upwards [lt_mem_nhds hx] with y hy
      simp [squaredExpNegInvGlue, hy.not_ge]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variantadcee4fec309e8e2747d6fa7185a405d958302e769c9de4d05cf3ba32e9f49e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GevreyProfile/Variantadcee4fec309e8e2747d6fa7185a405d958302e769c9de4d05cf3ba32e9f49e0.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3c162e8f3bc1a1b89ca7bd0935c06f2c6793187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
