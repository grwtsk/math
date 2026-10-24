# eventually_linear_le_half_pi_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51634ea6266d194951610f866a17c80cdfc1c3f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f645d74-eec5-0911-7dbb-40f1e2091126",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0c493b2-6877-3925-d4f8-3d34f20bb57b",
  "kind": "theorem",
  "lexical_name": "eventually_linear_le_half_pi_exp",
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
  "slug": "eventually-linear-le-half-pi-exp--a9b72dc85a5114cc5ae81add",
  "source": {
    "blob": "51634ea6266d194951610f866a17c80cdfc1c3f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9b72dc85a5114cc5ae81add0cf357da5a1fbc0ffc8b497bb315735665f1cc5a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0c493b2-6877-3925-d4f8-3d34f20bb57b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem eventually_linear_le_half_pi_exp (c : ℝ) :
    ∀ᶠ t in atTop,
      c * t ≤ (Real.pi / 2) * Real.exp (4 * t) := by
  filter_upwards [eventually_ge_atTop (max 0 c)] with t ht
  have ht0 : 0 ≤ t := (le_max_left 0 c).trans ht
  have hct : c ≤ t := (le_max_right 0 c).trans ht
  have hmul : c * t ≤ t ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr hct) ht0]
  have he := Real.quadratic_le_exp_of_nonneg
    (show 0 ≤ 4 * t by positivity)
  have hsqexp : t ^ 2 ≤ Real.exp (4 * t) := by
    nlinarith [sq_nonneg t]
  have hpi : 1 ≤ Real.pi / 2 := by
    nlinarith [Real.pi_gt_three]
  exact hmul.trans <|
    hsqexp.trans (by
      nlinarith [mul_nonneg (sub_nonneg.mpr hpi) (Real.exp_pos (4 * t)).le])

/-- `A` beats every prescribed exponential rate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant6d4656c10de3281707953e88e7320321cbdb5dbeb1594a27b016f5c3f8ea3049.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51634ea6266d194951610f866a17c80cdfc1c3f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
