# actual_critical_absolute_full_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f87b6d4edebf9ad5cfc34b551811d5a304676e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/421e938a31bf5bc7b7cee588a97961f7b7448370aa294e6a8fa4095b740d4c15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c5f731a-99e8-7913-b19b-fa4747fa2dc8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0e6f216-37c2-3338-40b3-4d8558abb8be",
  "kind": "theorem",
  "lexical_name": "actual_critical_absolute_full_tendsto_atTop",
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
  "slug": "actual-critical-absolute-full-tendsto-attop--be3cb917699348c90b428907",
  "source": {
    "blob": "0f87b6d4edebf9ad5cfc34b551811d5a304676e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant421e938a31bf5bc7b7cee588a97961f7b7448370aa294e6a8fa4095b740d4c15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be3cb917699348c90b4289074dff97b70c581c9f2c0e7bcec6f255314ef3fa44",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant421e938a31bf5bc7b7cee588a97961f7b7448370aa294e6a8fa4095b740d4c15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0e6f216-37c2-3338-40b3-4d8558abb8be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_critical_absolute_full_tendsto_atTop :
    Tendsto (fun A : ℝ => ∫ t in Ioi (0 : ℝ),
      Real.exp (t / 2) * |criticalWeight A t|) atTop atTop := by
  have he : (fun A : ℝ => Real.exp (A - 1 / 2) / (30 * A ^ 9)) =
      fun A => ((Real.exp (-1 / 2) / 30) * Real.exp A + 0) / A ^ 9 := by
    funext A
    rw [show A - 1 / 2 = A + (-1 / 2) by ring, Real.exp_add]
    ring
  have ht : Tendsto (fun A : ℝ => Real.exp (A - 1 / 2) / (30 * A ^ 9))
      atTop atTop := by
    rw [he]
    exact Real.tendsto_mul_exp_add_div_pow_atTop _ _ 9 (by positivity)
  apply tendsto_atTop_mono' atTop _ ht
  filter_upwards [eventually_ge_atTop (4 : ℝ)] with A hA
  exact actual_critical_absolute_full_lower A hA

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant421e938a31bf5bc7b7cee588a97961f7b7448370aa294e6a8fa4095b740d4c15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCriticalAbsoluteGrowth/Variant421e938a31bf5bc7b7cee588a97961f7b7448370aa294e6a8fa4095b740d4c15.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f87b6d4edebf9ad5cfc34b551811d5a304676e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
