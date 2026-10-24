# readyForRupAdd_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c79d4298-d20f-0a1f-a076-6999797e20db",
  "kind": "theorem",
  "lexical_name": "readyForRupAdd_insert",
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
  "slug": "readyforrupadd-insert--b08fe20921686b65b0cd1f85",
  "source": {
    "blob": "70e58e5f969a920f53cfdf6fa2cc207c2a42f132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 224,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b08fe20921686b65b0cd1f8545b55840d1056d53311354c99e856d36c8f73b1f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c79d4298-d20f-0a1f-a076-6999797e20db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem readyForRupAdd_insert {n : Nat} (f : DefaultFormula n) (c : DefaultClause n) :
    ReadyForRupAdd f → ReadyForRupAdd (insert f c) := by
  intro f_readyForRupAdd
  simp only [insert]
  split
  · refine ⟨f_readyForRupAdd.1, f_readyForRupAdd.2.1, ?_⟩
    intro i b hb
    have hf := f_readyForRupAdd.2.2 i b hb
    simp only [toList] at hf ⊢
    grind
  next l hc =>
    have hsize : (Array.modify f.assignments l.1 addPosAssignment).size = n := by
      rw [Array.size_modify, f_readyForRupAdd.2.1]
    refine ⟨f_readyForRupAdd.1, hsize, ?_⟩
    intro i b hb
    have hf := f_readyForRupAdd.2.2 i b
    have i_in_bounds : i.1 < f.assignments.size := by rw [f_readyForRupAdd.2.1]; exact i.2.2
    simp only at hb
    by_cases (i, b) = (l, true)
    next ib_eq_c =>
      simp only [toList, Array.toList_push, List.append_assoc, List.mem_append, List.mem_filterMap,
        List.mem_singleton, id_eq, exists_eq_right, Option.some.injEq, List.mem_map, Prod.exists, Bool.exists_bool]
      apply Or.inl ∘ Or.inr
      rw [isUnit_iff, DefaultClause.toList, ← ib_eq_c] at hc
      apply DefaultClause.ext
      simp only [unit, hc]
    next ib_ne_c =>
      have hb' : hasAssignment b f.assignments[i.1] := by
        by_cases l.1 = i.1
        next l_eq_i =>
          have b_eq_false : b = false := by
            by_cases b = true
            next b_eq_true =>
              simp only [b_eq_true, Subtype.ext l_eq_i, not_true] at ib_ne_c
            next b_eq_false => grind
          simp only [hasAssignment, b_eq_false, l_eq_i, Array.getElem_modify_self, ite_false, hasNeg_addPos, reduceCtorEq] at hb
          grind [hasAssignment]
        next l_ne_i => grind
      specialize hf hb'
      simp only [toList] at hf ⊢
      grind
  next l hc =>
    have hsize : (Array.modify f.assignments l.1 addNegAssignment).size = n := by
      rw [Array.size_modify, f_readyForRupAdd.2.1]
    refine ⟨f_readyForRupAdd.1, hsize, ?_⟩
    intro i b hb
    have hf := f_readyForRupAdd.2.2 i b
    have i_in_bounds : i.1 < f.assignments.size := by rw [f_readyForRupAdd.2.1]; exact i.2.2
    simp only at hb
    by_cases (i, b) = (l, false)
    next ib_eq_c =>
      simp only [toList, Array.toList_push, List.append_assoc, List.mem_append, List.mem_filterMap,
        List.mem_singleton, id_eq, exists_eq_right, Option.some.injEq, List.mem_map, Prod.exists, Bool.exists_bool]
      apply Or.inl ∘ Or.inr
      rw [isUnit_iff, DefaultClause.toList, ← ib_eq_c] at hc
      apply DefaultClause.ext
      simp only [unit, hc]
    next ib_ne_c =>
      have hb' : hasAssignment b f.assignments[i.1] := by
        by_cases l.1 = i.1
        next l_eq_i =>
          have b_eq_false : b = true := by
            by_cases b = true
            · assumption
            next b_eq_false =>
              simp only [b_eq_false, Subtype.ext l_eq_i, not_true] at ib_ne_c
          grind [hasAssignment, hasPos_addNeg]
        next l_ne_i => grind
      specialize hf hb'
      simp only [toList] at hf ⊢
      grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant0a03a7c14d9fdca55b021febd7be789a7e483511a20e9d02bfd611d24f259120.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70e58e5f969a920f53cfdf6fa2cc207c2a42f132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
