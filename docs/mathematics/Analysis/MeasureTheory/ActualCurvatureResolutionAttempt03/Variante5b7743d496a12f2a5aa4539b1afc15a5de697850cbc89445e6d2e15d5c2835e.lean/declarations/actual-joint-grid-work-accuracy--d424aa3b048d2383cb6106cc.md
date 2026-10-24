# actual_joint_grid_work_accuracy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b167d403-26f2-7826-050a-058a6a730aea",
  "kind": "theorem",
  "lexical_name": "actual_joint_grid_work_accuracy",
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
  "slug": "actual-joint-grid-work-accuracy--d424aa3b048d2383cb6106cc",
  "source": {
    "blob": "4e1fdcc7a7d68a130c8a8f7fe2a524ea70b6023b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 125,
    "path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d424aa3b048d2383cb6106cc35a5a0ab5f1e10721d5e6337cb0d08d381dbb0a2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b167d403-26f2-7826-050a-058a6a730aea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_joint_grid_work_accuracy {A η : ℝ} {n : ℕ} (hA : 1≤A) (hη : 0<η)
    (hn : curvatureResolutionCount A η≤n) :
    |sampledCurvatureWork A (leftGridSample A n)-criticalRemovedPairedWork A|≤η := by
  have hp : 0<n := (curvatureResolutionCount_pos A η).trans_le hn
  have hnr : (0:ℝ)<n := by exact_mod_cast hp
  have hc : (⌈((2200:ℝ)*A^2*Real.exp A)/η⌉₊:ℝ)≤n := by
    exact_mod_cast (by unfold curvatureResolutionCount at hn;omega :
      ⌈((2200:ℝ)*A^2*Real.exp A)/η⌉₊≤n)
  have hb := (Nat.le_ceil (((2200:ℝ)*A^2*Real.exp A)/η)).trans hc
  have hb2 := (div_le_iff₀ hη).mp hb
  apply (actual_grid_work_error hA hp).trans
  apply (div_le_iff₀ hnr).mpr
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variante5b7743d496a12f2a5aa4539b1afc15a5de697850cbc89445e6d2e15d5c2835e.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1fdcc7a7d68a130c8a8f7fe2a524ea70b6023b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
