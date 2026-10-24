# strictColumnInterior_eq_joint_mangoldt_error_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdb7f719-f1f8-2d02-88df-53d1bcc61b5d",
  "kind": "theorem",
  "lexical_name": "strictColumnInterior_eq_joint_mangoldt_error_work",
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
  "slug": "strictcolumninterior-eq-joint-mangoldt-error-work--eefb12a7ea2f1ddde2b1549d",
  "source": {
    "blob": "3d4e2b0260225c3ab16efa8c2cc679e9df63e555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 208,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant9bbe5c9611cbc0f78f54aa29cf15e79bf7054ea52d72e9784e93bf23581a5bf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eefb12a7ea2f1ddde2b1549d15ff5a96f02370f6e0e369956fd83a17077f823d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant9bbe5c9611cbc0f78f54aa29cf15e79bf7054ea52d72e9784e93bf23581a5bf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdb7f719-f1f8-2d02-88df-53d1bcc61b5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictColumnInterior_eq_joint_mangoldt_error_work (A : ℝ) (hA : 1 ≤ A) :
    strictColumnInterior A =
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        jointMangoldtTestProfile A t) -
      mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
      jointMangoldtErrorWork A - centeredDeletedDiagonal A -
      SourceSamplingLedger.independentMainTerm A := by
  classical
  rcases log_cutoff_bounds A hA with ⟨hl, hlb⟩
  have hw := mangoldtLogWindow_sub_integral _ _ hl hlb
    (jointMangoldtTestProfile A) (jointTest_contDiff A (by linarith))
  rw [jointTest_at_upper_zero A hA, zero_mul] at hw
  have hi : strictColumnInterior A =
      mangoldtLogWindow (Real.log (vaughanCutoff A : ℝ))
        (Real.log (sourceKernelCutoff A : ℝ)) (jointMangoldtTestProfile A) -
      centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A := by
    rw [jointWindow_eq_strict_column_sum A hA]
    rfl
  rw [hi]
  dsimp only [jointMangoldtErrorWork]
  linarith

end
end FormalResearch.RiemannHypothesis.SourceJointMangoldtWork
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant9bbe5c9611cbc0f78f54aa29cf15e79bf7054ea52d72e9784e93bf23581a5bf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant9bbe5c9611cbc0f78f54aa29cf15e79bf7054ea52d72e9784e93bf23581a5bf9.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d4e2b0260225c3ab16efa8c2cc679e9df63e555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
