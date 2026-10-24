# actual_joint_finite_accuracy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c04ab5a6-692d-746a-ce2c-417b0aea1358",
  "kind": "theorem",
  "lexical_name": "actual_joint_finite_accuracy",
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
  "slug": "actual-joint-finite-accuracy--83fd46767dda7fdb28c175bc",
  "source": {
    "blob": "901d784e7f3ebd49043e423106c9ddce76fd65fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualFiniteCurvatureControl/Variant3d02d805e5bf6b393676340a51b35cc0f2784a2deb3e94e9ef030c13114b60cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83fd46767dda7fdb28c175bc78f9a02ffe6837d2dff0195bae22c94e8e6e38c2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualFiniteCurvatureControl/Variant3d02d805e5bf6b393676340a51b35cc0f2784a2deb3e94e9ef030c13114b60cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c04ab5a6-692d-746a-ce2c-417b0aea1358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_joint_finite_accuracy {A η : ℝ} {n : ℕ} (hA : 1 ≤ A) (hη : 0 < η)
    (hn : curvatureResolutionCount A η ≤ n) :
    |finiteCurvatureReadout A n - criticalRemovedPairedWork A| ≤ η := by
  rw [← sampled_grid_eq_finite hA ((curvatureResolutionCount_pos A η).trans_le hn)]
  exact actual_joint_grid_work_accuracy hA hη hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualFiniteCurvatureControl/Variant3d02d805e5bf6b393676340a51b35cc0f2784a2deb3e94e9ef030c13114b60cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualFiniteCurvatureControl/Variant3d02d805e5bf6b393676340a51b35cc0f2784a2deb3e94e9ef030c13114b60cc.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `901d784e7f3ebd49043e423106c9ddce76fd65fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
