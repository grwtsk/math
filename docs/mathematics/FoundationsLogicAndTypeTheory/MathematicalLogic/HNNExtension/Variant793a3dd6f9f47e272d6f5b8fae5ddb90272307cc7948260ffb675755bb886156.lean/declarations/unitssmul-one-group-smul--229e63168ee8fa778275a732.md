# unitsSMul_one_group_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8ace868-1ad5-3ad0-5999-b6a530f4b673",
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
  "slug": "unitssmul-one-group-smul--229e63168ee8fa778275a732",
  "source": {
    "blob": "2d27507a32a8fdf470f3ab7ed7f4a9c7e7c3f898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 464,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:229e63168ee8fa778275a732cb390b031a7f13c9b9b69a274d49f4987177fc21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8ace868-1ad5-3ad0-5999-b6a530f4b673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–491.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d27507a32a8fdf470f3ab7ed7f4a9c7e7c3f898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
