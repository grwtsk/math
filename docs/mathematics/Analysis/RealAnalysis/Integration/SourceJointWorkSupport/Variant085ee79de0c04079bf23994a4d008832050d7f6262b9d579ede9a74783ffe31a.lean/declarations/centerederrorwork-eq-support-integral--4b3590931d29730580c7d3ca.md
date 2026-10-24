# centeredErrorWork_eq_support_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ddcc7222b6d5c59fe37332df19a8aecae810c18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/085ee79de0c04079bf23994a4d008832050d7f6262b9d579ede9a74783ffe31a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7bca33c5-8511-d05b-69d9-0f966fd4bcb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4402da1-28fe-30b9-353a-076f5769f406",
  "kind": "theorem",
  "lexical_name": "centeredErrorWork_eq_support_integral",
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
  "slug": "centerederrorwork-eq-support-integral--4b3590931d29730580c7d3ca",
  "source": {
    "blob": "3ddcc7222b6d5c59fe37332df19a8aecae810c18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceJointWorkSupport/Variant085ee79de0c04079bf23994a4d008832050d7f6262b9d579ede9a74783ffe31a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b3590931d29730580c7d3ca1b623ef1ea9113b60f4e54196e6a1f04028c809d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceJointWorkSupport/Variant085ee79de0c04079bf23994a4d008832050d7f6262b9d579ede9a74783ffe31a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4402da1-28fe-30b9-353a-076f5769f406`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredErrorWork_eq_support_integral (A offset : ℝ) (hA : 1 ≤ A) :
    centeredErrorWork A offset =
      ∫ t in Real.log (vaughanCutoff A : ℝ)..actualJointSupportUpper A,
        (mangoldtLogError t - offset) * deriv (jointMangoldtTestProfile A) t := by
  let l := Real.log (vaughanCutoff A : ℝ)
  let b := Real.log (sourceKernelCutoff A : ℝ)
  let L := actualJointSupportUpper A
  have hLb : L ≤ b := actualJointSupportUpper_le_log_sourceCutoff A hA
  have hz : (∫ t in L..b, (mangoldtLogError t - offset) *
      deriv (jointMangoldtTestProfile A) t) = 0 := by
    calc
      _ = ∫ _ in L..b, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        have hLt : L ≤ t := by simpa only [uIcc_of_le hLb] using ht.1
        rw [actual_jointTest_deriv_zero_of_support_upper_le A t hA hLt, mul_zero]
      _ = 0 := by simp
  have hi := intervalIntegral.integral_add_adjacent_intervals
    (shiftedWork_intervalIntegrable A offset l L hA)
    (shiftedWork_intervalIntegrable A offset L b hA)
  rw [hz, add_zero] at hi
  exact hi.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceJointWorkSupport/Variant085ee79de0c04079bf23994a4d008832050d7f6262b9d579ede9a74783ffe31a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceJointWorkSupport/Variant085ee79de0c04079bf23994a4d008832050d7f6262b9d579ede9a74783ffe31a.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ddcc7222b6d5c59fe37332df19a8aecae810c18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
