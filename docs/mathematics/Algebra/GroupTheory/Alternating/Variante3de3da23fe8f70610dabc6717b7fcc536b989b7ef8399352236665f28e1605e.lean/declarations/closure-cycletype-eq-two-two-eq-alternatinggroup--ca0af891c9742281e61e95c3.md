# closure_cycleType_eq_two_two_eq_alternatingGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a7e8faf-b699-308d-d9f0-4d88eb4c1be5",
  "kind": "theorem",
  "lexical_name": "closure_cycleType_eq_two_two_eq_alternatingGroup",
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
  "slug": "closure-cycletype-eq-two-two-eq-alternatinggroup--ca0af891c9742281e61e95c3",
  "source": {
    "blob": "6e3216d0813d5379f769dc177fcf5d83d9e1837f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 245,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca0af891c9742281e61e95c3895065390baf093b7ba4724d781f094f1fd8a80f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a7e8faf-b699-308d-d9f0-4d88eb4c1be5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_cycleType_eq_two_two_eq_alternatingGroup (h5 : 5 ≤ Nat.card α) :
    Subgroup.closure {g : Perm α | g.cycleType = {2, 2}} = alternatingGroup α := by
  apply le_antisymm
  · rw [Subgroup.closure_le]
    intro g hg
    simp only [Set.mem_ofPred_eq] at hg
    simp [mem_alternatingGroup, sign_of_cycleType, hg, ← Units.val_inj]
  · rw [← Equiv.Perm.closure_three_cycles_eq_alternating, Subgroup.closure_le]
    intro g hg3
    obtain ⟨a, ha⟩ := hg3.isCycle.nonempty_support
    have h_support := hg3.support_eq_iff_mem_support.mpr ha
    have h_nodup := hg3.nodup_iff_mem_support.mpr ha
    have : 1 < g.supportᶜ.card := by grind [Finset.card_compl, Nat.card_eq_fintype_card]
    obtain ⟨b, c, hb, hc, hbc⟩ := Finset.one_lt_card_iff.mp this
    have H : g = (swap a (g a) * (swap b c)) * (swap b c * (swap (g a) (g (g a)))) := by
      simp [mul_assoc, ← hg3.eq_swap_mul_swap_iff_mem_support.mpr ha]
    rw [H]
    apply mul_mem <;>
    · apply Subgroup.subset_closure
      exact cycleType_swap_mul_swap_of_nodup (by grind [Finset.mem_compl])

@[deprecated (since := "2026-03-10")]
alias closure_cycleType_eq_2_2_eq_alternatingGroup :=
  closure_cycleType_eq_two_two_eq_alternatingGroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variante3de3da23fe8f70610dabc6717b7fcc536b989b7ef8399352236665f28e1605e.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e3216d0813d5379f769dc177fcf5d83d9e1837f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
