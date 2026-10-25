# mul_inv_cancel_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d709b5d-5f48-a09d-4b60-3242f73a57d1",
  "kind": "theorem",
  "lexical_name": "mul_inv_cancel_aux",
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
  "slug": "mul-inv-cancel-aux--c3563d9c51e85102b0f58509",
  "source": {
    "blob": "533ffd0fea7755c69c198c4f4679425591c40778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 314,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3563d9c51e85102b0f58509a57411014211d482798e62d8fd2140fb162e75c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d709b5d-5f48-a09d-4b60-3242f73a57d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mul_inv_cancel_aux (a : Nimber) :
    (∀ b ∈ invSet a, a * b ≠ 1) ∧ (a ≠ 0 → a * invAux a = 1) := by
  have H₁ : ∀ b ∈ invSet a, a * b ≠ 1 := by
    refine fun b hb ↦ invSet_recOn a ?_ ?_ b hb
    · rw [mul_zero]
      exact zero_ne_one
    · intro a' ha ha' b hb
      rw [ne_eq, mul_comm, ← mul_right_inj' ha', ← mul_assoc, ← mul_assoc,
        (mul_inv_cancel_aux a').2 ha', one_mul, mul_one, add_mul, one_mul, ← add_left_inj a',
        add_self, mul_assoc, mul_comm b, add_assoc, add_comm _ a', ← add_assoc, ← mul_one_add,
        ← ne_eq, mul_ne_zero_iff, add_ne_zero_iff, add_ne_zero_iff]
      exact ⟨ha.ne', hb.symm⟩
  refine ⟨H₁, fun ha₀ => le_antisymm ?_ ?_⟩
  · apply mul_le_of_forall_ne fun a' ha b hb H ↦ ?_
    replace hb := mem_invSet_of_lt_invAux hb
    rw [add_assoc, ← add_mul, ← CharTwo.eq_add_iff_add_eq] at H
    obtain rfl | ha' := eq_or_ne a' 0
    · rw [zero_mul, add_zero, ← add_eq_iff_eq_add, zero_add] at H
      exact H₁ _ hb H
    · rw [← mul_right_inj' (invAux_ne_zero a'), ← mul_assoc, mul_comm _ a',
        (mul_inv_cancel_aux a').2 ha', one_mul] at H
      exact invAux_notMem_invSet a (H ▸ cons_mem_invSet ha' ha hb)
  · rw [one_le_iff_ne_zero, mul_ne_zero_iff]
    exact ⟨ha₀, invAux_ne_zero a⟩
termination_by a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `533ffd0fea7755c69c198c4f4679425591c40778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
