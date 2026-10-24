# prime_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffd6a059-0df7-0e56-9955-0a9a724b97a5",
  "kind": "theorem",
  "lexical_name": "prime_card",
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
  "slug": "prime-card--f4a304365ae1dfd103d28998",
  "source": {
    "blob": "ab4df74739cd427e9035d6118afbba657142a311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 524,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4a304365ae1dfd103d28998f23c85dc8aed75335990eab58a9292ad61c1223f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffd6a059-0df7-0e56-9955-0a9a724b97a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 524–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_card [Fintype α] : (Fintype.card α).Prime := by
  have h0 : 0 < Fintype.card α := Fintype.card_pos_iff.2 (by infer_instance)
  obtain ⟨g, hg⟩ := IsCyclic.exists_generator (α := α)
  rw [Nat.prime_def_lt'']
  refine' ⟨Fintype.one_lt_card_iff_nontrivial.2 inferInstance, fun n hn => _⟩
  refine' (IsSimpleOrder.eq_bot_or_eq_top (Subgroup.zpowers (g ^ n))).symm.imp _ _
  · intro h
    have hgo := orderOf_pow (n := n) g
    rw [orderOf_eq_card_of_forall_mem_zpowers hg, Nat.gcd_eq_right_iff_dvd.1 hn,
      orderOf_eq_card_of_forall_mem_zpowers, eq_comm,
      Nat.div_eq_iff_eq_mul_left (Nat.pos_of_dvd_of_pos hn h0) hn] at hgo
    · exact (mul_left_cancel₀ (ne_of_gt h0) ((mul_one (Fintype.card α)).trans hgo)).symm
    · intro x
      rw [h]
      exact Subgroup.mem_top _
  · intro h
    apply le_antisymm (Nat.le_of_dvd h0 hn)
    rw [← orderOf_eq_card_of_forall_mem_zpowers hg]
    apply orderOf_le_of_pow_eq_one (Nat.pos_of_dvd_of_pos hn h0)
    rw [← Subgroup.mem_bot, ← h]
    exact Subgroup.mem_zpowers _
#align is_simple_group.prime_card IsSimpleGroup.prime_card
#align is_simple_add_group.prime_card IsSimpleAddGroup.prime_card

end CommGroup

end IsSimpleGroup

@[to_additive AddCommGroup.is_simple_iff_isAddCyclic_and_prime_card]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variantb21abd1fec2dde723b1d2d9a8e3e7b61caf6969f42f3ef3eaba122a31012b48e.lean#L524).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab4df74739cd427e9035d6118afbba657142a311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
