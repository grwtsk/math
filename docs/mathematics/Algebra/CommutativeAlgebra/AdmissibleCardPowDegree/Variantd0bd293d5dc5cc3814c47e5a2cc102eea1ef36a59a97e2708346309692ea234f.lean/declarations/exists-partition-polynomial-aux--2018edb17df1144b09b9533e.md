# exists_partition_polynomial_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a3a98c9-69f8-e3a3-61b5-7123d1d7a70d",
  "kind": "theorem",
  "lexical_name": "exists_partition_polynomial_aux",
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
  "slug": "exists-partition-polynomial-aux--2018edb17df1144b09b9533e",
  "source": {
    "blob": "ca4914d6408e75179c907e311346d9290ccb12ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 186,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2018edb17df1144b09b9533eb3d5a6fa990c4775a5d199eb745ead76e2b4c968",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a3a98c9-69f8-e3a3-61b5-7123d1d7a70d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_partition_polynomial_aux (n : ℕ) {ε : ℝ} (hε : 0 < ε) {b : Fq[X]} (hb : b ≠ 0)
    (A : Fin n → Fq[X]) : ∃ t : Fin n → Fin (Fintype.card Fq ^ ⌈-log ε / log (Fintype.card Fq)⌉₊),
      ∀ i₀ i₁ : Fin n, t i₀ = t i₁ ↔
        (cardPowDegree (A i₁ % b - A i₀ % b) : ℝ) < cardPowDegree b • ε := by
  have hbε : 0 < cardPowDegree b • ε := by
    rw [Algebra.smul_def, eq_intCast]
    exact mul_pos (Int.cast_pos.mpr (AbsoluteValue.pos _ hb)) hε
  -- We go by induction on the size `A`.
  induction' n with n ih
  · refine' ⟨finZeroElim, finZeroElim⟩
  -- Show `anti_archimedean` also holds for real distances.
  have anti_archim' : ∀ {i j k} {ε : ℝ},
    (cardPowDegree (A i % b - A j % b) : ℝ) < ε →
      (cardPowDegree (A j % b - A k % b) : ℝ) < ε →
        (cardPowDegree (A i % b - A k % b) : ℝ) < ε := by
    intro i j k ε
    simp_rw [← Int.lt_ceil]
    exact cardPowDegree_anti_archimedean
  obtain ⟨t', ht'⟩ := ih (Fin.tail A)
  -- We got rid of `A 0`, so determine the index `j` of the partition we'll re-add it to.
  rsuffices ⟨j, hj⟩ :
    ∃ j, ∀ i, t' i = j ↔ (cardPowDegree (A 0 % b - A i.succ % b) : ℝ) < cardPowDegree b • ε
  · refine' ⟨Fin.cons j t', fun i₀ i₁ => _⟩
    refine' Fin.cases _ (fun i₀ => _) i₀ <;> refine' Fin.cases _ (fun i₁ => _) i₁
    · simpa using hbε
    · rw [Fin.cons_succ, Fin.cons_zero, eq_comm, AbsoluteValue.map_sub]
      exact hj i₁
    · rw [Fin.cons_succ, Fin.cons_zero]
      exact hj i₀
    · rw [Fin.cons_succ, Fin.cons_succ]
      exact ht' i₀ i₁
  -- `exists_approx_polynomial` guarantees that we can insert `A 0` into some partition `j`,
  -- but not that `j` is uniquely defined (which is needed to keep the induction going).
  obtain ⟨j, hj⟩ : ∃ j, ∀ i : Fin n,
      t' i = j → (cardPowDegree (A 0 % b - A i.succ % b) : ℝ) < cardPowDegree b • ε := by
    by_contra hg
    push_neg at hg
    obtain ⟨j₀, j₁, j_ne, approx⟩ := exists_approx_polynomial hb hε
      (Fin.cons (A 0) fun j => A (Fin.succ (Classical.choose (hg j))))
    revert j_ne approx
    refine' Fin.cases _ (fun j₀ => _) j₀ <;>
      refine' Fin.cases (fun j_ne approx => _) (fun j₁ j_ne approx => _) j₁
    · exact absurd rfl j_ne
    · rw [Fin.cons_succ, Fin.cons_zero, ← not_le, AbsoluteValue.map_sub] at approx
      have := (Classical.choose_spec (hg j₁)).2
      contradiction
    · rw [Fin.cons_succ, Fin.cons_zero, ← not_le] at approx
      have := (Classical.choose_spec (hg j₀)).2
      contradiction
    · rw [Fin.cons_succ, Fin.cons_succ] at approx
      rw [Ne.def, Fin.succ_inj] at j_ne
      have : j₀ = j₁ := (Classical.choose_spec (hg j₀)).1.symm.trans
        (((ht' (Classical.choose (hg j₀)) (Classical.choose (hg j₁))).mpr approx).trans
          (Classical.choose_spec (hg j₁)).1)
      contradiction
  -- However, if one of those partitions `j` is inhabited by some `i`, then this `j` works.
  by_cases exists_nonempty_j : ∃ j, (∃ i, t' i = j) ∧
      ∀ i, t' i = j → (cardPowDegree (A 0 % b - A i.succ % b) : ℝ) < cardPowDegree b • ε
  · obtain ⟨j, ⟨i, hi⟩, hj⟩ := exists_nonempty_j
    refine' ⟨j, fun i' => ⟨hj i', fun hi' => _root_.trans ((ht' _ _).mpr _) hi⟩⟩
    apply anti_archim' _ hi'
    rw [AbsoluteValue.map_sub]
    exact hj _ hi
  -- And otherwise, we can just take any `j`, since those are empty.
  refine' ⟨j, fun i => ⟨hj i, fun hi => _⟩⟩
  have := exists_nonempty_j ⟨t' i, ⟨i, rfl⟩, fun i' hi' => anti_archim' hi ((ht' _ _).mp hi')⟩
  contradiction
#align polynomial.exists_partition_polynomial_aux Polynomial.exists_partition_polynomial_aux

/-- For all `ε > 0`, we can partition the remainders of any family of polynomials `A`
into classes, where all remainders in a class are close together. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variantd0bd293d5dc5cc3814c47e5a2cc102eea1ef36a59a97e2708346309692ea234f.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca4914d6408e75179c907e311346d9290ccb12ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
