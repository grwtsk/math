# card_norm_le_eq_card_norm_le_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31fe37dc-a3d2-f6c1-e102-794c592cb0c4",
  "kind": "theorem",
  "lexical_name": "card_norm_le_eq_card_norm_le_add_one",
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
  "slug": "card-norm-le-eq-card-norm-le-add-one--0576581b4a73a5039de00da4",
  "source": {
    "blob": "3cf86c846e82d6163a654a3f42d383163d0372b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 383,
    "path": "GRWTSK/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0576581b4a73a5039de00da4cc32ac180b1af704a0fe45b0bdbd4b38e4a4d8d6",
  "verification": {
    "reference": "docs/verification/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31fe37dc-a3d2-f6c1-e102-794c592cb0c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_norm_le_eq_card_norm_le_add_one (n : ℕ) [CharZero S] :
    Nat.card {I : Ideal S // absNorm I ≤ n} =
      Nat.card {I : (Ideal S)⁰ // absNorm (I : Ideal S) ≤ n} + 1 := by
  classical
  have : Finite {I : Ideal S // I ∈ (Ideal S)⁰ ∧ absNorm I ≤ n} :=
    (finite_setOf_absNorm_le n).subset fun _ ⟨_, h⟩ ↦ h
  have : Finite {I : Ideal S // I ∉ (Ideal S)⁰ ∧ absNorm I ≤ n} :=
    (finite_setOf_absNorm_le n).subset fun _ ⟨_, h⟩ ↦ h
  rw [Nat.card_congr (Equiv.subtypeSubtypeEquivSubtypeInter (fun I ↦ I ∈ (Ideal S)⁰)
    (fun I ↦ absNorm I ≤ n))]
  let e : {I : Ideal S // absNorm I ≤ n} ≃ {I : Ideal S // I ∈ (Ideal S)⁰ ∧ absNorm I ≤ n} ⊕
      {I : Ideal S // I ∉ (Ideal S)⁰ ∧ absNorm I ≤ n} := by
    refine (Equiv.subtypeEquivRight ?_).trans (subtypeOrEquiv _ _ ?_)
    · intro _
      simp_rw [← or_and_right, em, true_and]
    · exact Pi.disjoint_iff.mpr fun I ↦ Prop.disjoint_iff.mpr (by tauto)
  simp_rw [Nat.card_congr e, Nat.card_sum, add_right_inj]
  conv_lhs =>
    enter [1, 1, I]
    rw [← absNorm_ne_zero_iff_mem_nonZeroDivisors, ne_eq, not_not, and_iff_left_iff_imp.mpr
      (fun h ↦ by rw [h]; exact Nat.zero_le n), absNorm_eq_zero_iff]
  rw [Nat.card_unique]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AbsNorm/Variant7542e55d89e4f1ee1dcd7c65b58f428efe9e88dca260687f19545f628462eec2.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cf86c846e82d6163a654a3f42d383163d0372b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
