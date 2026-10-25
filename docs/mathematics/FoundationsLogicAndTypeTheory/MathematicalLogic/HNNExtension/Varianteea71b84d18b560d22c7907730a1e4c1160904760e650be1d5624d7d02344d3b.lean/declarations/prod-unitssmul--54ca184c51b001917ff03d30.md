# prod_unitsSMul

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
      "line": 516,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:591c4919-2c71-d23f-0ad9-0a197c64f968",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ecd85d8-50d7-d05c-eb04-e54b60e91c47",
  "kind": "theorem",
  "lexical_name": "prod_unitsSMul",
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
  "slug": "prod-unitssmul--54ca184c51b001917ff03d30",
  "source": {
    "blob": "caf84a812ad79352b5951af0d067db389bb80433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 516,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54ca184c51b001917ff03d307c175c9c5b5dc65a8483c91b979504cac5968a6b",
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

Occurrence: `result:5ecd85d8-50d7-d05c-eb04-e54b60e91c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_unitsSMul (u : ℤˣ) (w : NormalWord d) :
    (unitsSMul φ u w).prod φ = (t^(u : ℤ) * w.prod φ : HNNExtension G A B φ) := by
  rw [unitsSMul]
  split_ifs with hcan
  · cases w using consRecOn
    · simp [Cancels] at hcan
    · cases hcan.2
      simp only [unitsSMulWithCancel, id_eq, consRecOn_cons, prod_group_smul, prod_cons, zpow_neg]
      rcases Int.units_eq_one_or u with (rfl | rfl)
      · simp [equiv_eq_conj, mul_assoc]
      · -- Before https://github.com/leanprover/lean4/pull/2644, this proof was just
        -- simp [equiv_symm_eq_conj, mul_assoc].
        simp only [toSubgroup_neg_one, toSubgroupEquiv_neg_one, Units.val_neg, Units.val_one,
          Int.reduceNeg, zpow_neg, zpow_one, inv_inv]
        erw [equiv_symm_eq_conj]
        simp [equiv_symm_eq_conj, mul_assoc]
  · simp only [unitsSMulGroup, SetLike.coe_sort_coe, prod_cons, prod_group_smul, map_mul, map_inv]
    rcases Int.units_eq_one_or u with (rfl | rfl)
    · -- Before https://github.com/leanprover/lean4/pull/2644, this proof was just
      -- simp [equiv_eq_conj, mul_assoc, (d.compl _).equiv_snd_eq_inv_mul].
      simp only [toSubgroup_neg_one, toSubgroup_one, toSubgroupEquiv_one, equiv_eq_conj, mul_assoc,
        Units.val_one, zpow_one, inv_mul_cancel_left, mul_right_inj]
      erw [(d.compl 1).equiv_snd_eq_inv_mul]
      simp [equiv_eq_conj, mul_assoc, (d.compl _).equiv_snd_eq_inv_mul]
    · -- Before https://github.com/leanprover/lean4/pull/2644, this proof was just
      -- simp [equiv_symm_eq_conj, mul_assoc, (d.compl _).equiv_snd_eq_inv_mul]
      simp only [toSubgroup_neg_one, toSubgroupEquiv_neg_one, Units.val_neg, Units.val_one,
        Int.reduceNeg, zpow_neg, zpow_one, mul_assoc]
      erw [equiv_symm_eq_conj, (d.compl (-1)).equiv_snd_eq_inv_mul]
      simp [equiv_symm_eq_conj, mul_assoc, (d.compl _).equiv_snd_eq_inv_mul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Varianteea71b84d18b560d22c7907730a1e4c1160904760e650be1d5624d7d02344d3b.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caf84a812ad79352b5951af0d067db389bb80433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
