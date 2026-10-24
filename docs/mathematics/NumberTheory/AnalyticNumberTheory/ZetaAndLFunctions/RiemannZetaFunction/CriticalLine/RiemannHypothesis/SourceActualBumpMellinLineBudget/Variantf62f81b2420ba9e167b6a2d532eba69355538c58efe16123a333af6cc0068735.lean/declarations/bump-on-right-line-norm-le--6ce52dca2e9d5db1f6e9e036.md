# bump_on_right_line_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d82845b61ef0f5f2e25aae75565b7fc283ac79c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f62f81b2420ba9e167b6a2d532eba69355538c58efe16123a333af6cc0068735.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85abe2fe-e0dd-1e06-4a41-ba346f6798f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08119919-5d58-4c37-518d-4ed12e0748dd",
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
  "slug": "bump-on-right-line-norm-le--6ce52dca2e9d5db1f6e9e036",
  "source": {
    "blob": "d82845b61ef0f5f2e25aae75565b7fc283ac79c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudget/Variantf62f81b2420ba9e167b6a2d532eba69355538c58efe16123a333af6cc0068735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ce52dca2e9d5db1f6e9e036b80713cd0dae25ac19d7b685165c94ea93c44025",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudget/Variantf62f81b2420ba9e167b6a2d532eba69355538c58efe16123a333af6cc0068735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08119919-5d58-4c37-518d-4ed12e0748dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–44.

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
  have hc0 : 0 ≤ c - 1 / 2 := by linarith
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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudget/Variantf62f81b2420ba9e167b6a2d532eba69355538c58efe16123a333af6cc0068735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMellinLineBudget/Variantf62f81b2420ba9e167b6a2d532eba69355538c58efe16123a333af6cc0068735.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d82845b61ef0f5f2e25aae75565b7fc283ac79c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
