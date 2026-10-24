# imo2006_q5'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e81faa60-288c-662e-4719-6f4dff36d6f8",
  "kind": "theorem",
  "lexical_name": "imo2006_q5'",
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
  "slug": "imo2006-q5--313c6c6ccae881bc1eec6fe2",
  "source": {
    "blob": "2594616772decb41301a816d22732a9be3ec70f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 139,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variant38544d381b297c8e8357f2a6d0ee46d38843989a38c1916a584e9c7b774d26a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:313c6c6ccae881bc1eec6fe2d2bf295e496ca9860c97f0e588b04703f48312a0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variant38544d381b297c8e8357f2a6d0ee46d38843989a38c1916a584e9c7b774d26a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e81faa60-288c-662e-4719-6f4dff36d6f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imo2006_q5' {P : Polynomial ℤ} (hP : 1 < P.natDegree) :
    (P.comp P - X).roots.toFinset.card ≤ P.natDegree := by
  -- Auxiliary lemmas on degrees.
  have hPX : (P - X).natDegree = P.natDegree := by
    rw [natDegree_sub_eq_left_of_natDegree_lt]
    simpa using hP
  have hPX' : P - X ≠ 0 := by
    intro h
    rw [h, natDegree_zero] at hPX
    rw [← hPX] at hP
    exact (zero_le_one.not_gt hP).elim
  -- If every root of P(P(t)) - t is also a root of P(t) - t, then we're done.
  by_cases H : (P.comp P - X).roots.toFinset ⊆ (P - X).roots.toFinset
  · exact (Finset.card_le_card H).trans
      ((Multiset.toFinset_card_le _).trans ((card_roots' _).trans_eq hPX))
  -- Otherwise, take a, b with P(a) = b, P(b) = a, a ≠ b.
  · rcases Finset.not_subset.1 H with ⟨a, ha, hab⟩
    replace ha := isRoot_of_mem_roots (Multiset.mem_toFinset.1 ha)
    rw [IsRoot.def, eval_sub, eval_comp, eval_X, sub_eq_zero] at ha
    rw [Multiset.mem_toFinset, mem_roots hPX', IsRoot.def, eval_sub, eval_X, sub_eq_zero]
      at hab
    set b := P.eval a
    -- More auxiliary lemmas on degrees.
    have hPab : (P + (X : ℤ[X]) - a - b).natDegree = P.natDegree := by
      rw [sub_sub, ← Int.cast_add]
      have h₁ : (P + X).natDegree = P.natDegree := by
        rw [natDegree_add_eq_left_of_natDegree_lt]
        simpa using hP
      rwa [natDegree_sub_eq_left_of_natDegree_lt]
      rw [h₁, natDegree_intCast]
      exact zero_lt_one.trans hP
    have hPab' : P + (X : ℤ[X]) - a - b ≠ 0 := by
      intro h
      rw [h, natDegree_zero] at hPab
      rw [← hPab] at hP
      exact (zero_le_one.not_gt hP).elim
    -- We claim that every root of P(P(t)) - t is a root of P(t) + t - a - b. This allows us to
    -- conclude the problem.
    suffices H' : (P.comp P - X).roots.toFinset ⊆ (P + (X : ℤ[X]) - a - b).roots.toFinset from
      (Finset.card_le_card H').trans
        ((Multiset.toFinset_card_le _).trans <| (card_roots' _).trans_eq hPab)
    -- Let t be a root of P(P(t)) - t, define u = P(t).
    intro t ht
    replace ht := isRoot_of_mem_roots (Multiset.mem_toFinset.1 ht)
    rw [IsRoot.def, eval_sub, eval_comp, eval_X, sub_eq_zero] at ht
    simp only [mem_roots hPab', sub_eq_iff_eq_add, Multiset.mem_toFinset, IsRoot.def,
      eval_sub, eval_add, eval_X, eval_intCast, Int.cast_id, zero_add]
    -- An auxiliary lemma proved earlier implies we only need to show |t - a| = |u - b| and
    -- |t - b| = |u - a|. We prove this by establishing that each side of either equation divides
    -- the other.
    apply (Int.add_eq_add_of_natAbs_eq_of_natAbs_eq hab _ _).symm <;>
        apply Int.natAbs_eq_of_dvd_dvd <;> set u := P.eval t
    · rw [← ha, ← ht]; apply sub_dvd_eval_sub
    · apply sub_dvd_eval_sub
    · rw [← ht]; apply sub_dvd_eval_sub
    · rw [← ha]; apply sub_dvd_eval_sub

end Imo2006Q5

open Imo2006Q5

/-- The general problem follows easily from the k = 2 case. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variant38544d381b297c8e8357f2a6d0ee46d38843989a38c1916a584e9c7b774d26a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variant38544d381b297c8e8357f2a6d0ee46d38843989a38c1916a584e9c7b774d26a1.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2594616772decb41301a816d22732a9be3ec70f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
