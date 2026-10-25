# unitsSMul_one_group_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "caf84a812ad79352b5951af0d067db389bb80433",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 456,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e65293cc-9557-5d4a-07bc-c725df868428",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3a6bb63-13d6-cbeb-d749-4ed2aed608c4",
  "kind": "theorem",
  "lexical_name": "unitsSMul_one_group_smul",
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
  "slug": "unitssmul-one-group-smul--0bd447d8672f75e1e62a4d05",
  "source": {
    "blob": "caf84a812ad79352b5951af0d067db389bb80433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 456,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bd447d8672f75e1e62a4d05554e911e9c50702b5fb560282da52537869eae97",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3a6bb63-13d6-cbeb-d749-4ed2aed608c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitsSMul_one_group_smul (g : A) (w : NormalWord d) :
    unitsSMul φ 1 ((g : G) • w) = (φ g : G) • (unitsSMul φ 1 w) := by
  unfold unitsSMul
  have : Cancels 1 ((g : G) • w) ↔ Cancels 1 w := by
    simp [Cancels, Subgroup.mul_mem_cancel_left]
  by_cases hcan : Cancels 1 w
  · simp only [unitsSMulWithCancel, toSubgroup_one, id_eq, toSubgroup_neg_one, toSubgroupEquiv_one,
      group_smul_head, mul_inv_rev, dif_pos (this.2 hcan), dif_pos hcan]
    cases w using consRecOn
    · simp [Cancels] at hcan
    · simp only [smul_cons, consRecOn_cons, mul_smul]
      rw [← mul_smul, ← Subgroup.coe_mul, ← map_mul φ]
      rfl
  · rw [dif_neg (mt this.1 hcan), dif_neg hcan]
    -- Before https://github.com/leanprover/lean4/pull/2644, all this was just
    -- `simp [← mul_smul, mul_assoc, unitsSMulGroup]`
    simp only [toSubgroup_neg_one, unitsSMulGroup, toSubgroup_one, toSubgroupEquiv_one,
      SetLike.coe_sort_coe, group_smul_head, mul_inv_rev, ← mul_smul, mul_assoc, inv_mul_cancel,
      mul_one, smul_cons]
    -- This used to be the end of the proof before https://github.com/leanprover/lean4/pull/2644
    dsimp
    congr 1
    · conv_lhs => erw [IsComplement.equiv_mul_left]
      simp_rw [toSubgroup_one]
      simp only [SetLike.coe_sort_coe, map_mul, Subgroup.coe_mul]
    conv_lhs => erw [IsComplement.equiv_mul_left]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caf84a812ad79352b5951af0d067db389bb80433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
