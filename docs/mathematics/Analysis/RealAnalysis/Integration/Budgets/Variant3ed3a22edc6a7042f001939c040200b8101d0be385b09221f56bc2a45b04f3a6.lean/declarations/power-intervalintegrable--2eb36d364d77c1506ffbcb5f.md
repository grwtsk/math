# power_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3911840e-6d86-0eec-f3fe-effd3ca83382",
  "kind": "theorem",
  "lexical_name": "power_intervalIntegrable",
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
  "slug": "power-intervalintegrable--2eb36d364d77c1506ffbcb5f",
  "source": {
    "blob": "07aa01938322434936bdd0ebe83041ca3375dd47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 17,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eb36d364d77c1506ffbcb5f86194ba365e7a66f1df179752a7cbe50a3ae3853",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3911840e-6d86-0eec-f3fe-effd3ca83382`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem power_intervalIntegrable {Y : ℝ} (hY : 1 ≤ Y) (r : ℝ) :
    IntervalIntegrable (fun y : ℝ => y ^ r) volume 1 Y := by
  apply ContinuousOn.intervalIntegrable
  apply continuous_id.continuousOn.rpow_const
  rw [uIcc_of_le hY]
  intro y hy
  exact Or.inl (ne_of_gt (lt_of_lt_of_le (by norm_num) hy.1))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07aa01938322434936bdd0ebe83041ca3375dd47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
