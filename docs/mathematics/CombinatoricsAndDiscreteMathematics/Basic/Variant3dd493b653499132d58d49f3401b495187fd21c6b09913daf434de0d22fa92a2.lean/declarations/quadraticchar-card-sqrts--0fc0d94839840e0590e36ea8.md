# quadraticChar_card_sqrts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bda3727-55c5-57dd-72dc-e5d75ed9bd52",
  "kind": "theorem",
  "lexical_name": "quadraticChar_card_sqrts",
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
  "slug": "quadraticchar-card-sqrts--0fc0d94839840e0590e36ea8",
  "source": {
    "blob": "bfb44db3faab1a143092c2caeb083e2aced57053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 252,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fc0d94839840e0590e36ea8b2d3923bec9ba751f6d591df43dcf20912ebf7e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bda3727-55c5-57dd-72dc-e5d75ed9bd52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticChar_card_sqrts (hF : ringChar F ≠ 2) (a : F) :
    ↑{x : F | x ^ 2 = a}.toFinset.card = quadraticChar F a + 1 := by
  -- we consider the cases `a = 0`, `a` is a nonzero square and `a` is a nonsquare in turn
  by_cases h₀ : a = 0
  · simp only [h₀, pow_eq_zero_iff, Nat.succ_pos', Int.ofNat_succ, Int.ofNat_zero, MulChar.map_zero,
      Set.setOf_eq_eq_singleton, Set.toFinset_card, Set.card_singleton]
  · set s := {x : F | x ^ 2 = a}.toFinset
    by_cases h : IsSquare a
    · rw [(quadraticChar_one_iff_isSquare h₀).mpr h]
      rcases h with ⟨b, h⟩
      rw [h, mul_self_eq_zero] at h₀
      have h₁ : s = [b, -b].toFinset := by
        ext x
        simp only [Finset.mem_filter, Finset.mem_univ, true_and_iff, List.toFinset_cons,
          List.toFinset_nil, insert_emptyc_eq, Finset.mem_insert, Finset.mem_singleton]
        rw [← pow_two] at h
        simp only [h, Set.toFinset_setOf, Finset.mem_univ, Finset.mem_filter, true_and]
        constructor
        · exact eq_or_eq_neg_of_sq_eq_sq _ _
        · rintro (h₂ | h₂) <;> rw [h₂]
          simp only [neg_sq]
      norm_cast
      rw [h₁, List.toFinset_cons, List.toFinset_cons, List.toFinset_nil]
      exact Finset.card_doubleton (Ne.symm (mt (Ring.eq_self_iff_eq_zero_of_char_ne_two hF).mp h₀))
    · rw [quadraticChar_neg_one_iff_not_isSquare.mpr h]
      simp only [Int.coe_nat_eq_zero, Finset.card_eq_zero, Set.toFinset_card, Fintype.card_ofFinset,
        Set.mem_setOf_eq, add_left_neg]
      ext x
      -- Porting note(https://github.com/leanprover-community/mathlib4/issues/5026):
      -- added (Set.mem_toFinset), Set.mem_setOf
      simp only [iff_false_iff, Finset.mem_filter, Finset.mem_univ, true_and_iff,
        Finset.not_mem_empty, (Set.mem_toFinset), Set.mem_setOf]
      rw [isSquare_iff_exists_sq] at h
      exact fun h' => h ⟨_, h'.symm⟩
#align quadratic_char_card_sqrts quadraticChar_card_sqrts

open scoped BigOperators

/-- The sum over the values of the quadratic character is zero when the characteristic is odd. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant3dd493b653499132d58d49f3401b495187fd21c6b09913daf434de0d22fa92a2.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfb44db3faab1a143092c2caeb083e2aced57053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
