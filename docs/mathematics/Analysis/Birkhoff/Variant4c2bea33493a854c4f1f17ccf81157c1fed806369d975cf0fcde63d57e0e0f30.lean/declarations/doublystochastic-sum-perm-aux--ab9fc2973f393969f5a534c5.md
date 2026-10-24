# doublyStochastic_sum_perm_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "561572bf510695d78f78f2171d2551f3c8a15c37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0239052e-b7f9-ae78-4f50-d4878f476117",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52045af4-ad18-dd57-c372-d92beb84e95e",
  "kind": "lemma",
  "lexical_name": "doublyStochastic_sum_perm_aux",
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
  "slug": "doublystochastic-sum-perm-aux--ab9fc2973f393969f5a534c5",
  "source": {
    "blob": "561572bf510695d78f78f2171d2551f3c8a15c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 85,
    "path": "GRWTSK/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab9fc2973f393969f5a534c5994ae8c509374b04ae330c3a1d0f93e03a44af3c",
  "verification": {
    "reference": "docs/verification/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52045af4-ad18-dd57-c372-d92beb84e95e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma doublyStochastic_sum_perm_aux (M : Matrix n n R)
    (s : R) (hs : 0 ≤ s)
    (hM : ∃ M' ∈ doublyStochastic R n, M = s • M') :
    ∃ w : Equiv.Perm n → R, (∀ σ, 0 ≤ w σ) ∧ ∑ σ, w σ • σ.permMatrix R = M := by
  rcases isEmpty_or_nonempty n
  case inl => exact ⟨1, by simp, Subsingleton.elim _ _⟩
  set d : ℕ := #{i : n × n | M i.1 i.2 ≠ 0} with ← hd
  clear_value d
  induction d using Nat.strongRecOn generalizing M s
  case ind d ih =>
  rcases eq_or_lt_of_le hs with rfl | hs'
  case inl =>
    use 0
    simp only [zero_smul, exists_and_right] at hM
    simp [hM]
  obtain ⟨σ, hσ⟩ := exists_perm_eq_zero_implies_eq_zero hs' hM
  obtain ⟨i, hi, hi'⟩ := exists_min_image _ (fun i => M i (σ i)) univ_nonempty
  rw [exists_mem_doublyStochastic_eq_smul_iff hs] at hM
  let N : Matrix n n R := M - M i (σ i) • σ.permMatrix R
  have hMi' : 0 < M i (σ i) := (hM.1 _ _).lt_of_ne' fun h => by
    simpa [Equiv.toPEquiv_apply] using hσ _ _ h
  let s' : R := s - M i (σ i)
  have hs' : 0 ≤ s' := by
    simp only [s', sub_nonneg, ← hM.2.1 i]
    exact single_le_sum (fun j _ => hM.1 i j) (by simp)
  have : ∃ M' ∈ doublyStochastic R n, N = s' • M' := by
    rw [exists_mem_doublyStochastic_eq_smul_iff hs']
    simp only [sub_apply, smul_apply, PEquiv.toMatrix_apply, Equiv.toPEquiv_apply, Option.mem_def,
      Option.some.injEq, smul_eq_mul, mul_ite, mul_one, mul_zero, sub_nonneg,
      sum_sub_distrib, sum_ite_eq, mem_univ, ↓reduceIte, N]
    refine ⟨fun i' j => ?_, by simp [s', hM.2.1], by simp [s', ← σ.eq_symm_apply, hM]⟩
    split
    case isTrue h => exact (hi' i' (by simp)).trans_eq (by rw [h])
    case isFalse h => exact hM.1 _ _
  have hd' : #{i : n × n | N i.1 i.2 ≠ 0} < d := by
    rw [← hd]
    refine card_lt_card ?_
    rw [ssubset_iff_of_subset (monotone_filter_right _ _)]
    · simp only [ne_eq, mem_filter, mem_univ, true_and, Decidable.not_not, Prod.exists]
      refine ⟨i, σ i, hMi'.ne', ?_⟩
      simp [N, Equiv.toPEquiv_apply]
    · rintro ⟨i', j'⟩ hN' hM'
      dsimp at hN' hM'
      simp only [sub_apply, hM', smul_apply, PEquiv.toMatrix_apply, Equiv.toPEquiv_apply,
        Option.mem_def, Option.some.injEq, smul_eq_mul, mul_ite, mul_one, mul_zero, zero_sub,
        neg_eq_zero, ite_eq_right_iff, Classical.not_imp, N] at hN'
      obtain ⟨rfl, _⟩ := hN'
      linarith [hi' i' (by simp)]
  obtain ⟨w, hw, hw'⟩ := ih _ hd' _ s' hs' this rfl
  refine ⟨w + fun σ' => if σ' = σ then M i (σ i) else 0, ?_⟩
  simp only [Pi.add_apply, add_smul, sum_add_distrib, hw', ite_smul, zero_smul,
    sum_ite_eq', mem_univ, ↓reduceIte, N, sub_add_cancel, and_true]
  intro σ'
  split <;> simp [add_nonneg, hw, hM.1]

/--
If M is a doubly stochastic matrix, then it is an convex combination of permutation matrices. Note
`doublyStochastic_eq_convexHull_permMatrix` shows `doublyStochastic n` is exactly the convex hull of
the permutation matrices, and this lemma is instead most useful for accessing the coefficients of
each permutation matrices directly.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Birkhoff/Variant4c2bea33493a854c4f1f17ccf81157c1fed806369d975cf0fcde63d57e0e0f30.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `561572bf510695d78f78f2171d2551f3c8a15c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
