# strictColumnInterior_eq_actual_joint_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fd59ee4-b510-a91a-3d4a-aa4f91dd5e7f",
  "kind": "theorem",
  "lexical_name": "strictColumnInterior_eq_actual_joint_work",
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
  "slug": "strictcolumninterior-eq-actual-joint-work--9dc777baa51716de535d6ab9",
  "source": {
    "blob": "2550ae973f60e84a90581258d54841866dc9d5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 208,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variante504d6c4b2c51be1aa6201dae63c940455d03b0854e4e966a158d82ceeb3e4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dc777baa51716de535d6ab9dce33fb4578d32d8950e6aabb4232377b0f0ba24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variante504d6c4b2c51be1aa6201dae63c940455d03b0854e4e966a158d82ceeb3e4f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fd59ee4-b510-a91a-3d4a-aa4f91dd5e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictColumnInterior_eq_actual_joint_work (A : ℝ) (hA : 1 ≤ A) :
    strictColumnInterior A =
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        actualJointMangoldtTest A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        actualJointMangoldtTest A (Real.log (vaughanCutoff A : ℝ)) -
      actualJointMangoldtWork A - centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A := by
  classical
  rcases log_cutoff_bounds A hA with ⟨hl, hlb⟩
  have hw := mangoldtLogWindow_sub_integral _ _ hl hlb
    (actualJointMangoldtTest A) (jointTest_contDiff A (by linarith))
  rw [jointTest_at_upper_zero A hA, zero_mul] at hw
  have hi : strictColumnInterior A =
      mangoldtLogWindow (Real.log (vaughanCutoff A : ℝ))
        (Real.log (sourceKernelCutoff A : ℝ)) (actualJointMangoldtTest A) -
      centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A := by
    rw [jointWindow_eq_strict_column_sum A hA]
    rfl
  rw [hi]
  dsimp only [actualJointMangoldtWork]
  linarith

end
end FormalResearch.RiemannHypothesis.SourceJointMangoldtWork
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variante504d6c4b2c51be1aa6201dae63c940455d03b0854e4e966a158d82ceeb3e4f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variante504d6c4b2c51be1aa6201dae63c940455d03b0854e4e966a158d82ceeb3e4f2.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2550ae973f60e84a90581258d54841866dc9d5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
