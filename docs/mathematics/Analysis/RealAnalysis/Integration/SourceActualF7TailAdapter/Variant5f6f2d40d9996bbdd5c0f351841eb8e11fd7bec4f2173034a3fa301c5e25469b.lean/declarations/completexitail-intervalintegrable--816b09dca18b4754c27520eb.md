# completeXiTail_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7193517-22fd-7608-807e-521904804876",
  "kind": "theorem",
  "lexical_name": "completeXiTail_intervalIntegrable",
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
  "slug": "completexitail-intervalintegrable--816b09dca18b4754c27520eb",
  "source": {
    "blob": "3e7ede784e8237fc6c166a29adb9a07ba5362e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 202,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant5f6f2d40d9996bbdd5c0f351841eb8e11fd7bec4f2173034a3fa301c5e25469b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:816b09dca18b4754c27520eb40ee526e65b12535866e76331a48980b9ee1f629",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant5f6f2d40d9996bbdd5c0f351841eb8e11fd7bec4f2173034a3fa301c5e25469b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7193517-22fd-7608-807e-521904804876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeXiTail_intervalIntegrable (A : ℝ) (hA : 40 ≤ A) :
    IntervalIntegrable (actualTransformedXiBlockDensity A) volume 7 (Real.exp (2 * A)) := by
  have hp : 0 < A := by linarith
  have hT : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hi := (timeXiDensity_intervalIntegrable (2 * A) hT).mul_continuousOn
    (minusCorrelationWeight_contDiff A hp).continuous.continuousOn
  have he := intervalIntegral.integrable_comp_mul_deriv_iff_of_deriv_nonneg
    (a := Real.log 7) (b := 2 * A) (f := Real.exp) (f' := Real.exp)
    (g := actualTransformedXiBlockDensity A) Real.continuous_exp.continuousOn
    (fun s _ => Real.hasDerivAt_exp s) (fun s _ => (Real.exp_pos s).le)
  simp only [Function.comp_apply, actual_transformed_density_exp_mul,
    Real.exp_log (by norm_num : (0 : ℝ) < 7)] at he
  exact he.mp hi

/-- The integrated-by-parts product is also genuinely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant5f6f2d40d9996bbdd5c0f351841eb8e11fd7bec4f2173034a3fa301c5e25469b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualF7TailAdapter/Variant5f6f2d40d9996bbdd5c0f351841eb8e11fd7bec4f2173034a3fa301c5e25469b.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e7ede784e8237fc6c166a29adb9a07ba5362e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
