# exists_fixed_anatomic_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68adb7bb-4935-0976-8d9f-7378a8708019",
  "kind": "theorem",
  "lexical_name": "exists_fixed_anatomic_factorization",
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
  "slug": "exists-fixed-anatomic-factorization--87cb58001d1440e50f1ce5bd",
  "source": {
    "blob": "38f66b3447d2c349bebeb8c76a0cd28699e32260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 577,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87cb58001d1440e50f1ce5bd876699539129a7ce1edb07f7f03910944b17c8b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68adb7bb-4935-0976-8d9f-7378a8708019`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_fixed_anatomic_factorization
    {ε : ℝ} (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    {n X : ℕ} (h1n : 1 ≤ n) (hnX : n ≤ X) :
    ∃ (x : Fin d → ℕ), ∃ c : ℕ,
      n = c * ∏ j, x j ^ (j.val + 1) ∧
      c ≤ (X : ℝ) ^ ε ∧
      (∀ i j, i ≠ j → Nat.gcd (x i) (x j) = 1) ∧
      (X : ℝ) ^ (-ε) * ∏ j, x j ≤ (radical n : ℕ) ∧
      (radical n : ℕ) ≤ (X : ℝ) ^ ε * ∏ j, x j ∧
      0 < c ∧ (∀ i, 0 < x i) ∧ (∀ i, x i ≤ X) := by
  let data : QuantitativeAnatomicFactorization.ProofData :=
    ⟨ε, hε_pos, hε, d, hd, n, X, h1n, hnX⟩
  let : QuantitativeAnatomicFactorization.ProofData := data
  change ∃ (x : Fin ProofData.d → ℕ), ∃ c : ℕ,
    ProofData.n = c * ∏ j, x j ^ (j.val + 1) ∧
    c ≤ (ProofData.X : ℝ) ^ ProofData.ε ∧
    (∀ i j, i ≠ j → Nat.gcd (x i) (x j) = 1) ∧
    (ProofData.X : ℝ) ^ (-ProofData.ε) * ∏ j, x j ≤
      (radical ProofData.n : ℕ) ∧
    (radical ProofData.n : ℕ) ≤
      (ProofData.X : ℝ) ^ ProofData.ε * ∏ j, x j ∧
    0 < c ∧ (∀ i, 0 < x i) ∧ (∀ i, x i ≤ ProofData.X)
  obtain ⟨x, c, hn, hc, hcop, hlow, hupp⟩ :=
    QuantitativeAnatomicFactorization.exists_fixed_anatomic_factorization
  have hc_pos : 0 < c := by
    have hn_pos : 0 < ProofData.n :=
      lt_of_lt_of_le Nat.zero_lt_one ProofData.h1n
    apply Nat.pos_of_mul_pos_right (hn ▸ hn_pos)
  have hx_le (i : Fin ProofData.d) : x i ≤ ProofData.X := by
    apply le_trans _ ProofData.hnX
    apply Nat.le_of_dvd
    · exact lt_of_lt_of_le Nat.zero_lt_one ProofData.h1n
    rw [hn]
    apply Dvd.dvd.mul_left
    trans x i ^ (i.val + 1)
    · simp_all
    apply Finset.dvd_prod_of_mem
    exact Finset.mem_univ i
  have hx_pos (i : Fin ProofData.d) : 0 < x i := by
    apply Nat.pos_of_ne_zero
    intro hzero
    have hprod : (∏ j : Fin ProofData.d, x j ^ (j.val + 1)) = 0 := by
      apply Finset.prod_eq_zero (Finset.mem_univ i)
      simp [hzero]
    have hn_zero : ProofData.n = 0 := by
      rw [hn, hprod, mul_zero]
    exact (Nat.ne_of_gt (lt_of_lt_of_le Nat.zero_lt_one ProofData.h1n)) hn_zero
  exact ⟨x, c, hn, hc, hcop, hlow, hupp, hc_pos, hx_pos, hx_le⟩

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38f66b3447d2c349bebeb8c76a0cd28699e32260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
