# isConj_swap_mul_swap_of_cycleType_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3afbce6-beca-4082-56f5-9fb114ee3e85",
  "kind": "theorem",
  "lexical_name": "isConj_swap_mul_swap_of_cycleType_two",
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
  "slug": "isconj-swap-mul-swap-of-cycletype-two--e244c2623323a0b98b229e81",
  "source": {
    "blob": "0fec68f0f822f0bf9b60b946d0046cdc6f807a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 285,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e244c2623323a0b98b229e813abfa394ee930174af43f05fde3248bc79d20829",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3afbce6-beca-4082-56f5-9fb114ee3e85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isConj_swap_mul_swap_of_cycleType_two {g : Perm (Fin 5)} (ha : g ∈ alternatingGroup (Fin 5))
    (h1 : g ≠ 1) (h2 : ∀ n, n ∈ cycleType (g : Perm (Fin 5)) → n = 2) :
    IsConj (swap 0 4 * swap 1 3) g := by
  have h := g.support.card_le_univ
  rw [← Multiset.eq_replicate_card] at h2
  rw [← sum_cycleType, h2, Multiset.sum_replicate, smul_eq_mul] at h
  have h : Multiset.card g.cycleType ≤ 3 :=
    le_of_mul_le_mul_right (le_trans h (by simp only [card_fin]; ring_nf)) (by simp)
  rw [mem_alternatingGroup, sign_of_cycleType, h2] at ha
  norm_num at ha
  rw [pow_add, pow_mul, Int.units_pow_two, one_mul, Units.ext_iff, Units.val_one,
    Units.val_pow_eq_pow_val, Units.coe_neg_one, neg_one_pow_eq_one_iff_even _] at ha
  swap; · decide
  rw [isConj_iff_cycleType_eq, h2]
  interval_cases h_1 : Multiset.card g.cycleType
  · exact (h1 (card_cycleType_eq_zero.1 h_1)).elim
  · contrapose! ha
    simp [h_1]
  · have h04 : (0 : Fin 5) ≠ 4 := by decide
    have h13 : (1 : Fin 5) ≠ 3 := by decide
    rw [Disjoint.cycleType, (isCycle_swap h04).cycleType, (isCycle_swap h13).cycleType,
      card_support_swap h04, card_support_swap h13]
    · rfl
    · rw [disjoint_iff_disjoint_support, support_swap h04, support_swap h13]
      decide
  · contrapose! ha
    simp [h_1]
#align alternating_group.is_conj_swap_mul_swap_of_cycle_type_two alternatingGroup.isConj_swap_mul_swap_of_cycleType_two

/-- Shows that $A_5$ is simple by taking an arbitrary non-identity element and showing by casework
  on its cycle type that its normal closure is all of $A_5$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fec68f0f822f0bf9b60b946d0046cdc6f807a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
