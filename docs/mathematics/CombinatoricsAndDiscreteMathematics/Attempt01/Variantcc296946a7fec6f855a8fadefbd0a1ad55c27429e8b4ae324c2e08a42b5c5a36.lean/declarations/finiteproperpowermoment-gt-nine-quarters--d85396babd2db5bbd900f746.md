# finiteProperPowerMoment_gt_nine_quarters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b465c334-69a1-98cc-8598-203e9da3c479",
  "kind": "theorem",
  "lexical_name": "finiteProperPowerMoment_gt_nine_quarters",
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
  "slug": "finiteproperpowermoment-gt-nine-quarters--d85396babd2db5bbd900f746",
  "source": {
    "blob": "f38c34d8cd256def0499403d52835fd3cff341c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 407,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d85396babd2db5bbd900f7468601fb4db07b2db01669f2eb1f62fb0e28ba36c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b465c334-69a1-98cc-8598-203e9da3c479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteProperPowerMoment_gt_nine_quarters : (9:ℝ)/4 < finiteProperPowerMoment := by
  have hsum : (∑ p ∈ primeInventory, (certifiedLogLower p)^2*powerCoefficient p)
      ≤ finiteProperPowerMoment := by
    unfold finiteProperPowerMoment
    apply Finset.sum_le_sum
    intro p hp
    have hl := inventory_log_lower p hp
    have hc : 0 ≤ powerCoefficient p := by
      unfold powerCoefficient
      apply Finset.sum_nonneg
      intro k hk
      positivity
    exact mul_le_mul_of_nonneg_right (pow_le_pow_left₀ hl.1 hl.2 2) hc
  have hr : (9:ℝ)/4 < ∑ p ∈ primeInventory,
      (certifiedLogLower p)^2*powerCoefficient p := by
    norm_num [primeInventory, certifiedLogLower, powerCoefficient, Finset.sum_range_succ]
  exact lt_of_lt_of_le hr hsum

/-- The precise finite atom list, with real positive logarithms and multiplicities k. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt01/Variantcc296946a7fec6f855a8fadefbd0a1ad55c27429e8b4ae324c2e08a42b5c5a36.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f38c34d8cd256def0499403d52835fd3cff341c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
