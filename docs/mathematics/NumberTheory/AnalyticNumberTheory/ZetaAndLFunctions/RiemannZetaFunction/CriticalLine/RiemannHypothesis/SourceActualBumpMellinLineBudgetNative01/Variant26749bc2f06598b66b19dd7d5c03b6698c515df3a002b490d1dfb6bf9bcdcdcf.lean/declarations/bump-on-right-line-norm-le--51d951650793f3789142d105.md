# bump_on_right_line_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5ae493e-fc9d-9870-9a6f-b6cba5a08e1e",
  "kind": "theorem",
  "lexical_name": "bump_on_right_line_norm_le",
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
  "slug": "bump-on-right-line-norm-le--51d951650793f3789142d105",
  "source": {
    "blob": "e32fa1e32b1e6b1f6a71d904ff5db421a9adefb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudgetNative01/Variant26749bc2f06598b66b19dd7d5c03b6698c515df3a002b490d1dfb6bf9bcdcdcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51d951650793f3789142d105938ca9e34a281748797cb0cfb461c0586139caa5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudgetNative01/Variant26749bc2f06598b66b19dd7d5c03b6698c515df3a002b490d1dfb6bf9bcdcdcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5ae493e-fc9d-9870-9a6f-b6cba5a08e1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bump_on_right_line_norm_le (A c t : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (ht : 1 ≤ |t|) :
    ‖bumpLaplace ((A : ℂ) * ((c : ℂ) + (t : ℂ) * Complex.I - 1 / 2))‖ ≤
      204288 * Real.exp (A * (c - 1 / 2)) / (A ^ 5 * |t| ^ 5) := by
  let z : ℂ := (A : ℂ) * ((c : ℂ) + (t : ℂ) * Complex.I - 1 / 2)
  have hzre : z.re = A * (c - 1 / 2) := by simp [z, Complex.mul_re]
  have hzim : z.im = A * t := by simp [z, Complex.mul_im]
  have hlower : A * |t| ≤ ‖z‖ := by
    have h := Complex.abs_im_le_norm z
    simpa only [hzim, abs_mul, abs_of_nonneg (show 0 ≤ A by linarith)] using h
  have hn : 1 ≤ ‖z‖ := by nlinarith
  have hre : 0 ≤ z.re := by rw [hzre]; positivity
  have hb := actual_bump_vertical_norm_le z hre hn
  have hp : A ^ 5 * |t| ^ 5 ≤ ‖z‖ ^ 5 := by
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity) hlower 5
  calc
    _ ≤ 204288 * Real.exp z.re / ‖z‖ ^ 5 := hb
    _ ≤ 204288 * Real.exp z.re / (A ^ 5 * |t| ^ 5) :=
      div_le_div_of_nonneg_left (by positivity) (by positivity) hp
    _ = _ := by rw [hzre]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudgetNative01/Variant26749bc2f06598b66b19dd7d5c03b6698c515df3a002b490d1dfb6bf9bcdcdcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudgetNative01/Variant26749bc2f06598b66b19dd7d5c03b6698c515df3a002b490d1dfb6bf9bcdcdcf.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e32fa1e32b1e6b1f6a71d904ff5db421a9adefb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
