# continuousOn_tan_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34233bc6a0c1ff7258bd575be27fe803b854a64b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82f33d14-6efc-0a1e-1ce2-14263fa4604f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0570aee-35d1-7464-27a7-88e51a2eb721",
  "kind": "theorem",
  "lexical_name": "continuousOn_tan_Ioo",
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
  "slug": "continuouson-tan-ioo--5fe6635a940b61a96290a1f0",
  "source": {
    "blob": "34233bc6a0c1ff7258bd575be27fe803b854a64b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fe6635a940b61a96290a1f035577484a02b25f4f5e1214b550160f7a7b5f3d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0570aee-35d1-7464-27a7-88e51a2eb721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_tan_Ioo : ContinuousOn tan (Ioo (-(π / 2)) (π / 2)) := by
  refine' ContinuousOn.mono continuousOn_tan fun x => _
  simp only [and_imp, mem_Ioo, mem_setOf_eq, Ne.def]
  rw [cos_eq_zero_iff]
  rintro hx_gt hx_lt ⟨r, hxr_eq⟩
  cases' le_or_lt 0 r with h h
  · rw [lt_iff_not_ge] at hx_lt
    refine' hx_lt _
    rw [hxr_eq, ← one_mul (π / 2), mul_div_assoc, ge_iff_le, mul_le_mul_right (half_pos pi_pos)]
    simp [h]
  · rw [lt_iff_not_ge] at hx_gt
    refine' hx_gt _
    rw [hxr_eq, ← one_mul (π / 2), mul_div_assoc, ge_iff_le, neg_mul_eq_neg_mul,
      mul_le_mul_right (half_pos pi_pos)]
    have hr_le : r ≤ -1 := by rwa [Int.lt_iff_add_one_le, ← le_neg_iff_add_nonpos_right] at h
    rw [← le_sub_iff_add_le, mul_comm, ← le_div_iff]
    · norm_num; rw [← Int.cast_one, ← Int.cast_neg]; norm_cast
    · exact zero_lt_two
#align real.continuous_on_tan_Ioo Real.continuousOn_tan_Ioo

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Arctan/Variant5162b1f233511703703a7af0d101a785f1ded8871492af06730d1d4b89845afd.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34233bc6a0c1ff7258bd575be27fe803b854a64b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
