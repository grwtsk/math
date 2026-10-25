# realize_liftAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3fcb3b9-3665-0e87-7ca3-6264b76c25de",
  "kind": "theorem",
  "lexical_name": "realize_liftAt",
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
  "slug": "realize-liftat--1bbdfaea810b65c38fbcbd50",
  "source": {
    "blob": "7ca54a72b29ad319f57ef27c53b9230a4de25f66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 412,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bbdfaea810b65c38fbcbd50fa70d5ab2b37dbf842c856afbc5f1bb975ccfca5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3fcb3b9-3665-0e87-7ca3-6264b76c25de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realize_liftAt {n n' m : ℕ} {φ : L.BoundedFormula α n} {v : α → M} {xs : Fin (n + n') → M}
    (hmn : m + n' ≤ n + 1) :
    (φ.liftAt n' m).Realize v xs ↔
      φ.Realize v (xs ∘ fun i => if ↑i < m then Fin.castAdd n' i else Fin.addNat i n') := by
  rw [liftAt]
  induction' φ with _ _ _ _ _ _ _ _ _ _ _ ih1 ih2 k _ ih3
  · simp [mapTermRel, Realize]
  · simp [mapTermRel, Realize, realize_rel, realize_liftAt, Sum.elim_comp_map]
  · simp [mapTermRel, Realize, realize_rel, realize_liftAt, Sum.elim_comp_map]
  · simp only [mapTermRel, Realize, ih1 hmn, ih2 hmn]
  · have h : k + 1 + n' = k + n' + 1 := by rw [add_assoc, add_comm 1 n', ← add_assoc]
    simp only [mapTermRel, Realize, realize_castLE_of_eq h, ih3 (hmn.trans k.succ.le_succ)]
    refine' forall_congr' fun x => iff_eq_eq.mpr (congr rfl (funext (Fin.lastCases _ fun i => _)))
    · simp only [Function.comp_apply, val_last, snoc_last]
      by_cases h : k < m
      · rw [if_pos h]
        refine' (congr rfl (ext _)).trans (snoc_last _ _)
        simp only [coe_orderIso_apply, coe_castAdd, val_last, self_eq_add_right]
        refine'
          le_antisymm (le_of_add_le_add_left ((hmn.trans (Nat.succ_le_of_lt h)).trans _)) n'.zero_le
        rw [add_zero]
      · rw [if_neg h]
        refine' (congr rfl (ext _)).trans (snoc_last _ _)
        simp
    · simp only [Function.comp_apply, Fin.snoc_castSucc]
      refine' (congr rfl (ext _)).trans (snoc_castSucc _ _ _)
      simp only [coe_castSucc, coe_orderIso_apply]
      split_ifs <;> simp
#align first_order.language.bounded_formula.realize_lift_at FirstOrder.Language.BoundedFormula.realize_liftAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ca54a72b29ad319f57ef27c53b9230a4de25f66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
