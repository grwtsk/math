# signed_sampling_correction_abs_le_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45e70606-56ce-4257-1688-8d5261b57a34",
  "kind": "theorem",
  "lexical_name": "signed_sampling_correction_abs_le_at_radius",
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
  "slug": "signed-sampling-correction-abs-le-at-radius--84fa4e70cca4b0e8564035ac",
  "source": {
    "blob": "ec37f7040d4dd3ba00ed5e0554df01f252e106a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant27ed9369f46231258d27a3714269cd97670770590c588a5c21bad590f72e4a61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84fa4e70cca4b0e8564035ac7a1f1456482d561cf9817358ffabf391c08e87d4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant27ed9369f46231258d27a3714269cd97670770590c588a5c21bad590f72e4a61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45e70606-56ce-4257-1688-8d5261b57a34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_sampling_correction_abs_le_at_radius (A R : ℝ) (hR : 1 ≤ R)
    (hA : R ≤ A) : |signedShortSamplingCorrection A| ≤ radiusSamplingBudget R := by
  have hA1 : 1 ≤ A := hR.trans hA
  have hl := actual_shortLog_error A hA1
  have hp := actual_shortPlain_tight_uniform_error A hA1
  have hd := div_le_div_of_nonneg_left
    (mul_nonneg (by norm_num : (0 : ℝ) ≤ 2) samplingInventoryError_nonneg)
    (by linarith : 0 < R) hA
  unfold signedShortSamplingCorrection shortLogSamplingError radiusSamplingBudget
  exact (abs_sub _ _).trans (add_le_add (hl.trans hd) hp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant27ed9369f46231258d27a3714269cd97670770590c588a5c21bad590f72e4a61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceCompleteDivisorRadiusTailReturn/Variant27ed9369f46231258d27a3714269cd97670770590c588a5c21bad590f72e4a61.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec37f7040d4dd3ba00ed5e0554df01f252e106a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
