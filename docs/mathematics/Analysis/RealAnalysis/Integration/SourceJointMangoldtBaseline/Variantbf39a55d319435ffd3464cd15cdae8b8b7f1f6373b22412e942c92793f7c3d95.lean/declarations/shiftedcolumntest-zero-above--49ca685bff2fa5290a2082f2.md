# shiftedColumnTest_zero_above

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16801a50ce57f05b75cf9953ce70d9decddd2ca9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15f257e6-48bf-4239-58b7-7f749d8a3379",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e007b92c-f8eb-ad85-f772-cd6f0b92c06a",
  "kind": "theorem",
  "lexical_name": "shiftedColumnTest_zero_above",
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
  "slug": "shiftedcolumntest-zero-above--49ca685bff2fa5290a2082f2",
  "source": {
    "blob": "16801a50ce57f05b75cf9953ce70d9decddd2ca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49ca685bff2fa5290a2082f2887e1297fa71899783a71eebb7f329375b959a3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e007b92c-f8eb-ad85-f772-cd6f0b92c06a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem shiftedColumnTest_zero_above (A : ℝ) (hA : 1 ≤ A)
    (k : ℕ) (hk : 2 ≤ k) {t : ℝ}
    (ht : Real.log (sourceKernelCutoff A : ℝ) ≤ t) :
    shiftedColumnTest A k t = 0 := by
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : 1 ≤ sourceKernelCutoff A := hU.trans hUN
  have hNr : (1 : ℝ) ≤ sourceKernelCutoff A := by exact_mod_cast hN
  have hkr : (2 : ℝ) ≤ k := by exact_mod_cast hk
  have hN0 : 0 < (sourceKernelCutoff A : ℝ) := by positivity
  have hk0 : 0 < (k : ℝ) := by positivity
  have hfloor : Real.exp (2 * A) < (sourceKernelCutoff A : ℝ) + 1 := by
    simpa only [sourceKernelCutoff, sourceUpper] using Nat.lt_floor_add_one (Real.exp (2 * A))
  have hproduct : Real.exp (2 * A) < (sourceKernelCutoff A : ℝ) * (k : ℝ) := by
    nlinarith
  have hl := Real.log_le_log (Real.exp_pos (2 * A)) hproduct.le
  rw [Real.log_exp, Real.log_mul hN0.ne' hk0.ne'] at hl
  have hs : 2 * A ≤ |t + Real.log (k : ℝ)| :=
    (by linarith : 2 * A ≤ t + Real.log (k : ℝ)).trans (le_abs_self _)
  unfold shiftedColumnTest
  rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A _ (by linarith) hs, mul_zero]

/-- The literal finite test is integrable and has the whole-line signed source moment zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variantbf39a55d319435ffd3464cd15cdae8b8b7f1f6373b22412e942c92793f7c3d95.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16801a50ce57f05b75cf9953ce70d9decddd2ca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
