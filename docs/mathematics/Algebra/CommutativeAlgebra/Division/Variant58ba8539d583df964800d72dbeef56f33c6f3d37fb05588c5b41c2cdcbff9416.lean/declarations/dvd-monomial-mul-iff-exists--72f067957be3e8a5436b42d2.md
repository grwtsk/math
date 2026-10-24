# dvd_monomial_mul_iff_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d0d8804e-0b42-57be-d06f-93233088041b",
  "kind": "theorem",
  "lexical_name": "dvd_monomial_mul_iff_exists",
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
  "slug": "dvd-monomial-mul-iff-exists--72f067957be3e8a5436b42d2",
  "source": {
    "blob": "38688ca6e2144ab3f4b45754706d594a03e089ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 342,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72f067957be3e8a5436b42d2741427ebe5ecdaba9d9c842a15799904221576ac",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0d8804e-0b42-57be-d06f-93233088041b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_monomial_mul_iff_exists [IsCancelMulZero R] {n : σ →₀ ℕ} :
    p ∣ monomial n 1 * q ↔ ∃ m r, m ≤ n ∧ r ∣ q ∧ p = monomial m 1 * r := by
  rcases subsingleton_or_nontrivial R with hR | hR
  · simp only [Subsingleton.elim _ p, dvd_refl, and_self, and_true, exists_const, true_iff]
    refine ⟨n, le_refl n⟩
  suffices ∀ (d) (n : σ →₀ ℕ) (hd : n.degree = d) (p q : MvPolynomial σ R),
    p ∣ monomial n 1 * q ↔ ∃ m r, m ≤ n ∧ r ∣ q ∧ p = monomial m 1 * r from this n.degree n rfl p q
  intro d
  induction d with
  | zero =>
    intro n hn p
    rw [Finsupp.degree_eq_zero_iff] at hn
    simp only [hn, monomial_zero', C_1, one_mul, nonpos_iff_eq_zero, exists_and_left,
      exists_eq_left, exists_eq_right', implies_true]
  | succ d hd =>
    intro n hn p q
    refine ⟨fun hp ↦ ?_, fun ⟨m, r, hmn, hrq, hp⟩ ↦ ?_⟩
    · obtain ⟨i, hi⟩ : n.support.Nonempty := by
        rw [Finsupp.support_nonempty_iff]
        intro hn'
        simp [hn'] at hn
      let n' := n - Finsupp.single i 1
      have hn' : n' + Finsupp.single i 1 = n := by
        apply Finsupp.sub_add_single_one_cancel
        rwa [← Finsupp.mem_support_iff]
      have hnn' : n' ≤ n := by simp [← hn']
      have hd' : n'.degree = d := by
        rw [← add_left_inj, ← hn, ← hn']
        simp
      rw [← hn', monomial_add_single, pow_one, mul_comm _ (X i), mul_assoc, dvd_X_mul_iff] at hp
      rcases hp with hp | hp
      · obtain ⟨m, r, hm, hr, hp⟩ := (hd n' hd' p q).mp hp
        exact ⟨m, r, le_trans hm hnn', hr, hp⟩
      · obtain ⟨p', rfl⟩ := hp.1
        obtain ⟨m, r, hm, hr, hp⟩ := (hd n' hd' _ _).mp hp.2
        use m + Finsupp.single i 1, r, ?_, hr
        · simp [monomial_add_single, pow_one, mul_comm _ (X i), mul_assoc, ← hp]
        · simpa [← hn'] using hm
    · rw [hp, ← add_tsub_cancel_of_le hmn, ← mul_one 1, ← monomial_mul_monomial, mul_one, mul_assoc]
      apply mul_dvd_mul dvd_rfl
      apply dvd_mul_of_dvd_right hrq

end CommRing

end MvPolynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Division/Variant58ba8539d583df964800d72dbeef56f33c6f3d37fb05588c5b41c2cdcbff9416.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38688ca6e2144ab3f4b45754706d594a03e089ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
