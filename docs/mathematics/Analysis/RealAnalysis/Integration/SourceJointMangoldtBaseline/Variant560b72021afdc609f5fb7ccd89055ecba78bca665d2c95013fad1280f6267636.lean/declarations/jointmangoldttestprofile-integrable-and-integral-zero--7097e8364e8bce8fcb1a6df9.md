# jointMangoldtTestProfile_integrable_and_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f67cefce-baaa-8bfa-5781-a5b23c4997b7",
  "kind": "theorem",
  "lexical_name": "jointMangoldtTestProfile_integrable_and_integral_zero",
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
  "slug": "jointmangoldttestprofile-integrable-and-integral-zero--7097e8364e8bce8fcb1a6df9",
  "source": {
    "blob": "5450afbfd847ed0d108763d39ea7ba16f987efac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 104,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant560b72021afdc609f5fb7ccd89055ecba78bca665d2c95013fad1280f6267636.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7097e8364e8bce8fcb1a6df998318331256558b67724ed038fbe0b0a394e2a8e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant560b72021afdc609f5fb7ccd89055ecba78bca665d2c95013fad1280f6267636.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f67cefce-baaa-8bfa-5781-a5b23c4997b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtTestProfile_integrable_and_integral_zero (A : ℝ) (hA : 1 ≤ A) :
    Integrable (jointMangoldtTestProfile A) ∧
      (∫ t : ℝ, jointMangoldtTestProfile A t) = 0 := by
  classical
  change Integrable (fun t => ∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)),
      originalPrefix A k * (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) ∧
    (∫ t : ℝ, ∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)),
      originalPrefix A k * (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) = 0
  have hi (k : ℕ) : Integrable (fun t => originalPrefix A k *
      (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) :=
    ((shiftedColumnTest_integrable A (by linarith) k).sub
      (shiftedColumnTest_integrable A (by linarith) (k + 1))).const_mul _
  refine ⟨integrable_finsetSum _ (fun k _ => hi k), ?_⟩
  rw [integral_finsetSum _ (fun k _ => hi k)]
  apply Finset.sum_eq_zero
  intro k _
  rw [integral_const_mul,
    integral_sub (shiftedColumnTest_integrable A (by linarith) k)
      (shiftedColumnTest_integrable A (by linarith) (k + 1)),
    shiftedColumnTest_integral_zero A hA k,
    shiftedColumnTest_integral_zero A hA (k + 1), sub_self, mul_zero]

/-- Support annihilates every point of the upper tail, including its closed endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant560b72021afdc609f5fb7ccd89055ecba78bca665d2c95013fad1280f6267636.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant560b72021afdc609f5fb7ccd89055ecba78bca665d2c95013fad1280f6267636.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5450afbfd847ed0d108763d39ea7ba16f987efac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
