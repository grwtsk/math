# cyclotomic_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75860ba8-652a-ac01-e7cb-0aff424e0a35",
  "kind": "theorem",
  "lexical_name": "cyclotomic_pos",
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
  "slug": "cyclotomic-pos--4fdb9ff7f5aba458343413a2",
  "source": {
    "blob": "1a228be8e757d1f3d4c9f6603d6f30bb0b084b3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 71,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fdb9ff7f5aba458343413a29c566f0d6afaee74d159690f87584f8228751778",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75860ba8-652a-ac01-e7cb-0aff424e0a35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_pos {n : ℕ} (hn : 2 < n) {R}
    [CommRing R] [LinearOrder R] [IsStrictOrderedRing R] (x : R) :
    0 < eval x (cyclotomic n R) := by
  induction' n using Nat.strong_induction_on with n ih
  have hn' : 0 < n := pos_of_gt hn
  have hn'' : 1 < n := one_lt_two.trans hn
  have := prod_cyclotomic_eq_geom_sum hn' R
  apply_fun eval x at this
  rw [← cons_self_properDivisors hn'.ne', Finset.erase_cons_of_ne _ hn''.ne', Finset.prod_cons,
    eval_mul, eval_geom_sum] at this
  rcases lt_trichotomy 0 (∑ i ∈ Finset.range n, x ^ i) with (h | h | h)
  · apply pos_of_mul_pos_left
    · rwa [this]
    rw [eval_prod]
    refine Finset.prod_nonneg fun i hi => ?_
    simp only [Finset.mem_erase, mem_properDivisors] at hi
    rw [geom_sum_pos_iff hn'.ne'] at h
    rcases h with hk | hx
    · refine (ih _ hi.2.2 (Nat.two_lt_of_ne ?_ hi.1 ?_)).le <;> rintro rfl
      · exact hn'.ne' (zero_dvd_iff.mp hi.2.1)
      · exact not_odd_iff_even.2 (even_iff_two_dvd.mpr hi.2.1) hk
    · rcases eq_or_ne i 2 with (rfl | hk)
      · simpa only [eval_X, eval_one, cyclotomic_two, eval_add] using hx.le
      refine (ih _ hi.2.2 (Nat.two_lt_of_ne ?_ hi.1 hk)).le
      rintro rfl
      exact hn'.ne' <| zero_dvd_iff.mp hi.2.1
  · rw [eq_comm, geom_sum_eq_zero_iff_neg_one hn'.ne'] at h
    exact h.1.symm ▸ cyclotomic_neg_one_pos hn
  · apply pos_of_mul_neg_left
    · rwa [this]
    rw [geom_sum_neg_iff hn'.ne'] at h
    have h2 : 2 ∈ n.properDivisors.erase 1 := by
      rw [Finset.mem_erase, mem_properDivisors]
      exact ⟨by decide, even_iff_two_dvd.mp h.1, hn⟩
    rw [eval_prod, ← Finset.prod_erase_mul _ _ h2]
    apply mul_nonpos_of_nonneg_of_nonpos
    · refine Finset.prod_nonneg fun i hi => le_of_lt ?_
      simp only [Finset.mem_erase, mem_properDivisors] at hi
      refine ih _ hi.2.2.2 (Nat.two_lt_of_ne ?_ hi.2.1 hi.1)
      rintro rfl
      rw [zero_dvd_iff] at hi
      exact hn'.ne' hi.2.2.1
    · simpa only [eval_X, eval_one, cyclotomic_two, eval_add] using h.right.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant99f38d657c7c56af0392645f2e7f92712845f9298c93c14ece4c6ad30d86bf88.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a228be8e757d1f3d4c9f6603d6f30bb0b084b3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
