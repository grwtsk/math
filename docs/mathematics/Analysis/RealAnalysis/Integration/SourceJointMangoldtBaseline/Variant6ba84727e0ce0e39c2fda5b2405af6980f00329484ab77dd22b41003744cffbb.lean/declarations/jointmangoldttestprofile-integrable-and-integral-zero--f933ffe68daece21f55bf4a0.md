# jointMangoldtTestProfile_integrable_and_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8496871c4d5be9278745ef2a298e20642bd24d15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6ba84727e0ce0e39c2fda5b2405af6980f00329484ab77dd22b41003744cffbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:368957fb-6c73-28f3-4149-35e02135ae93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65ba2730-efce-f758-47f2-46a20fe367ad",
  "kind": "theorem",
  "lexical_name": "jointMangoldtTestProfile_integrable_and_integral_zero",
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
  "slug": "jointmangoldttestprofile-integrable-and-integral-zero--f933ffe68daece21f55bf4a0",
  "source": {
    "blob": "8496871c4d5be9278745ef2a298e20642bd24d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant6ba84727e0ce0e39c2fda5b2405af6980f00329484ab77dd22b41003744cffbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f933ffe68daece21f55bf4a0454587953f4f71dcf5a352dd9111d06e172a7cb9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant6ba84727e0ce0e39c2fda5b2405af6980f00329484ab77dd22b41003744cffbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65ba2730-efce-f758-47f2-46a20fe367ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointMangoldtTestProfile_integrable_and_integral_zero (A : ℝ) (hA : 1 ≤ A) :
    Integrable (jointMangoldtTestProfile A) ∧
      (∫ t : ℝ, jointMangoldtTestProfile A t) = 0 := by
  classical
  change Integrable (fun t => ∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)),
      originalPrefix A k * (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) ∧
    (∫ t : ℝ, ∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
      (sourceKernelCutoff A / (vaughanCutoff A + 1)),
      originalPrefix A k * (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) = 0
  have hi (k : ℕ) : Integrable (fun t => originalPrefix A k *
      (shiftedColumnTest A k t - shiftedColumnTest A (k + 1) t)) :=
    ((shiftedColumnTest_integrable A (by linarith) k).sub
      (shiftedColumnTest_integrable A (by linarith) (k + 1))).const_mul _
  refine ⟨integrable_finsetSum _ (fun k _ => hi k), ?_⟩
  rw [integral_finsetSum _ (fun k _ => hi k)]
  apply Finset.sum_eq_zero
  intro k _
  rw [integral_const_mul,
    integral_sub (shiftedColumnTest_integrable A (by linarith) k)
      (shiftedColumnTest_integrable A (by linarith) (k + 1)),
    shiftedColumnTest_integral_zero A hA k,
    shiftedColumnTest_integral_zero A hA (k + 1), sub_self, mul_zero]

/-- Support annihilates every point of the upper tail, including its closed endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant6ba84727e0ce0e39c2fda5b2405af6980f00329484ab77dd22b41003744cffbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant6ba84727e0ce0e39c2fda5b2405af6980f00329484ab77dd22b41003744cffbb.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8496871c4d5be9278745ef2a298e20642bd24d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
