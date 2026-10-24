# native_fold_joint_c1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4120d2da-3627-3dad-f755-f84a36b3a72c",
  "kind": "theorem",
  "lexical_name": "native_fold_joint_c1",
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
  "slug": "native-fold-joint-c1--7caa72f1f9fac7f2e05563b7",
  "source": {
    "blob": "3a4ef905e13a9e901ad23c60ccc684633a16bc4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/Analysis/MeasureTheory/MovingNativeChamber/Variant5013e4f26f0a78429438d0cb952e47671216cf226e6ab1ca906c23c742615022.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7caa72f1f9fac7f2e05563b7d8165876604157eba845163cf153c50df4f5aca4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MovingNativeChamber/Variant5013e4f26f0a78429438d0cb952e47671216cf226e6ab1ca906c23c742615022.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4120d2da-3627-3dad-f755-f84a36b3a72c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_fold_joint_c1 {a b : ℝ → ℝ} {l₀ x₀ : ℝ}
    (ha : ContDiffAt ℝ 1 a l₀) (hb : ContDiffAt ℝ 1 b l₀)
    (hab : a l₀ < b l₀) :
    ContDiffAt ℝ 1 (fun u : ℝ × ℝ => fold (a u.1) (b u.1) u.2) (l₀,x₀) := by
  have hf : ContDiffAt ℝ 1 (fun u : ℝ × ℝ =>
      AffineAccordionWeld.fold (cumulative (a u.1)) (cumulative (b u.1)) u.2)
      (l₀,cumulative x₀) :=
    moving_fold_joint_c1 ((cumulative_smooth 1).contDiffAt.comp l₀ ha)
      ((cumulative_smooth 1).contDiffAt.comp l₀ hb) (cumulative_strictMono hab)
  have hg : ContDiffAt ℝ 1 (fun u : ℝ × ℝ => (u.1,cumulative u.2)) (l₀,x₀) := by
    exact contDiffAt_fst.prodMk ((cumulative_smooth 1).contDiffAt.comp (l₀,x₀) contDiffAt_snd)
  simpa only [fold,Function.comp_apply] using! hf.comp (l₀,x₀) hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MovingNativeChamber/Variant5013e4f26f0a78429438d0cb952e47671216cf226e6ab1ca906c23c742615022.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MovingNativeChamber/Variant5013e4f26f0a78429438d0cb952e47671216cf226e6ab1ca906c23c742615022.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a4ef905e13a9e901ad23c60ccc684633a16bc4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
