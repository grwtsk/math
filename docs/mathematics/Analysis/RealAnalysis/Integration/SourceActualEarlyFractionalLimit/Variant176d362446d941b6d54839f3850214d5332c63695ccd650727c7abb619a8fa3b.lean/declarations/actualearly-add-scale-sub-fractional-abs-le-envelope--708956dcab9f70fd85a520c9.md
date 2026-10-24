# actualEarly_add_scale_sub_fractional_abs_le_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73bb26ae-9322-cfa7-6bc3-2ff9988b85ad",
  "kind": "theorem",
  "lexical_name": "actualEarly_add_scale_sub_fractional_abs_le_envelope",
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
  "slug": "actualearly-add-scale-sub-fractional-abs-le-envelope--708956dcab9f70fd85a520c9",
  "source": {
    "blob": "b2872b504e1c6d3aee22280299ca8f5d48b319dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 378,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:708956dcab9f70fd85a520c9aa8f515622891c99c28c9cc6887c51a87d92f6eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73bb26ae-9322-cfa7-6bc3-2ff9988b85ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEarly_add_scale_sub_fractional_abs_le_envelope {A : ℝ} (hA : 91 ≤ A) :
    |complementaryEarlyBaseline A + A - earlyFractionalConstant| ≤
      actualHeadFractionalEnvelope A := by
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have ht0 : 0 ≤ Real.log (vaughanCutoff A : ℝ) :=
    Real.log_nonneg (actual_cutoff_order A hA1).1
  have hl0 : 0 ≤ Real.log A := Real.log_nonneg hA1
  have ht : Real.log (vaughanCutoff A : ℝ) ≤ 2 * Real.log A := by
    have hf := Real.log_le_log (by linarith [(actual_cutoff_order A hA1).1] :
      0 < (vaughanCutoff A : ℝ)) (Nat.floor_le (sq_nonneg A))
    simpa only [Real.log_pow, Nat.cast_ofNat] using hf
  have ht2 : (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ 4 * (Real.log A) ^ 2 := by nlinarith
  apply (actualEarly_add_scale_sub_fractional_abs_le hA).trans
  unfold actualHeadUnitErrorBudget actualHeadFractionalEnvelope
  calc
    _ ≤ (80 * Real.log A + 40 * (Real.log A) ^ 2) / A + 2 / A := by
      apply add_le_add _ le_rfl
      apply div_le_div_of_nonneg_right _ hp.le
      nlinarith
    _ = _ := by ring

/-- The genuine head-error envelope vanishes along all real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2872b504e1c6d3aee22280299ca8f5d48b319dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
