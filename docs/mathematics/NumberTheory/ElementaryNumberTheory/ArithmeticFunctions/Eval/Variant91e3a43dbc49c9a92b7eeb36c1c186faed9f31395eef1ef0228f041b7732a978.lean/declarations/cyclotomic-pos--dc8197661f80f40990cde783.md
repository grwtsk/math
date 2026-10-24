# cyclotomic_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13505da3e5de3e183a738cb712039a59e61e0e84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdfde4c6-a7ce-3143-669c-6bbc6689b6c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0177f611-4cfb-621b-f5e5-bcd9740a0475",
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
  "slug": "cyclotomic-pos--dc8197661f80f40990cde783",
  "source": {
    "blob": "13505da3e5de3e183a738cb712039a59e61e0e84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 72,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc8197661f80f40990cde78326c91b4c8af2df92bb4d0d3d550bae5b36fc643c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0177f611-4cfb-621b-f5e5-bcd9740a0475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_pos {n : ℕ} (hn : 2 < n) {R} [LinearOrderedCommRing R] (x : R) :
    0 < eval x (cyclotomic n R) := by
  induction' n using Nat.strong_induction_on with n ih
  have hn' : 0 < n := pos_of_gt hn
  have hn'' : 1 < n := one_lt_two.trans hn
  have := prod_cyclotomic_eq_geom_sum hn' R
  apply_fun eval x at this
  rw [← cons_self_properDivisors hn'.ne', Finset.erase_cons_of_ne _ hn''.ne', Finset.prod_cons,
    eval_mul, eval_geom_sum] at this
  rcases lt_trichotomy 0 (∑ i in Finset.range n, x ^ i) with (h | h | h)
  · apply pos_of_mul_pos_left
    · rwa [this]
    rw [eval_prod]
    refine' Finset.prod_nonneg fun i hi => _
    simp only [Finset.mem_erase, mem_properDivisors] at hi
    rw [geom_sum_pos_iff hn'.ne'] at h
    cases' h with hk hx
    · refine' (ih _ hi.2.2 (Nat.two_lt_of_ne _ hi.1 _)).le <;> rintro rfl
      · exact hn'.ne' (zero_dvd_iff.mp hi.2.1)
      · exact even_iff_not_odd.mp (even_iff_two_dvd.mpr hi.2.1) hk
    · rcases eq_or_ne i 2 with (rfl | hk)
      · simpa only [eval_X, eval_one, cyclotomic_two, eval_add] using hx.le
      refine' (ih _ hi.2.2 (Nat.two_lt_of_ne _ hi.1 hk)).le
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
    · refine' Finset.prod_nonneg fun i hi => le_of_lt _
      simp only [Finset.mem_erase, mem_properDivisors] at hi
      refine' ih _ hi.2.2.2 (Nat.two_lt_of_ne _ hi.2.1 hi.1)
      rintro rfl
      rw [zero_dvd_iff] at hi
      exact hn'.ne' hi.2.2.1
    · simpa only [eval_X, eval_one, cyclotomic_two, eval_add] using h.right.le
#align polynomial.cyclotomic_pos Polynomial.cyclotomic_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13505da3e5de3e183a738cb712039a59e61e0e84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
