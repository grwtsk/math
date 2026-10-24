# tsirelson_inequality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c43e8fc13e4da57d058b917156bd5bdeb6dbf60",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47d9840512321f22866139721a9c97f36d78461d52010a54753956fac220a845.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:212866d8-40ce-db91-406c-b25b5d8dc808",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a26e52b5-bb80-ae63-2f54-fb84cf241c87",
  "kind": "theorem",
  "lexical_name": "tsirelson_inequality",
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
  "slug": "tsirelson-inequality--7f1b63588818a29f12e2049a",
  "source": {
    "blob": "6c43e8fc13e4da57d058b917156bd5bdeb6dbf60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 195,
    "path": "GRWTSK/Algebra/CHSH/Variant47d9840512321f22866139721a9c97f36d78461d52010a54753956fac220a845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f1b63588818a29f12e2049ad1503ec759dd27afc53608c6b5c2bf9f6346a2a0",
  "verification": {
    "reference": "docs/verification/Algebra/CHSH/Variant47d9840512321f22866139721a9c97f36d78461d52010a54753956fac220a845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a26e52b5-bb80-ae63-2f54-fb84cf241c87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsirelson_inequality [OrderedRing R] [StarOrderedRing R] [Algebra ℝ R] [OrderedSMul ℝ R]
    [StarModule ℝ R] (A₀ A₁ B₀ B₁ : R) (T : IsCHSHTuple A₀ A₁ B₀ B₁) :
    A₀ * B₀ + A₀ * B₁ + A₁ * B₀ - A₁ * B₁ ≤ √2 ^ 3 • (1 : R) := by
  -- abel will create `ℤ` multiplication. We will `simp` them away to `ℝ` multiplication.
  have M : ∀ (m : ℤ) (a : ℝ) (x : R), m • a • x = ((m : ℝ) * a) • x := fun m a x => by
    rw [zsmul_eq_smul_cast ℝ, ← mul_smul]
  let P := √2⁻¹ • (A₁ + A₀) - B₀
  let Q := √2⁻¹ • (A₁ - A₀) + B₁
  have w : √2 ^ 3 • (1 : R) - A₀ * B₀ - A₀ * B₁ - A₁ * B₀ + A₁ * B₁ = √2⁻¹ • (P ^ 2 + Q ^ 2) := by
    dsimp
    -- distribute out all the powers and products appearing on the RHS
    simp only [sq, sub_mul, mul_sub, add_mul, mul_add, smul_add, smul_sub]
    -- pull all coefficients out to the front, and combine `√2`s where possible
    simp only [Algebra.mul_smul_comm, Algebra.smul_mul_assoc, ← mul_smul, sqrt_two_inv_mul_self]
    -- replace Aᵢ * Aᵢ = 1 and Bᵢ * Bᵢ = 1
    simp only [← sq, T.A₀_inv, T.A₁_inv, T.B₀_inv, T.B₁_inv]
    -- move Aᵢ to the left of Bᵢ
    simp only [← T.A₀B₀_commutes, ← T.A₀B₁_commutes, ← T.A₁B₀_commutes, ← T.A₁B₁_commutes]
    -- collect terms, simplify coefficients, and collect terms again:
    abel_nf
    -- all terms coincide, but the last one. Simplify all other terms
    simp only [M]
    simp only [neg_mul, one_mul, mul_inv_cancel_of_invertible, Int.cast_one, add_assoc, add_comm,
      add_left_comm, one_smul, Int.cast_neg, neg_smul, Int.int_cast_ofNat]
    simp only [← add_assoc, ← add_smul]
    -- just look at the coefficients now:
    congr
    exact mul_left_cancel₀ (by norm_num) tsirelson_inequality_aux
  have pos : 0 ≤ √2⁻¹ • (P ^ 2 + Q ^ 2) := by
    have P_sa : star P = P := by
      simp only [star_smul, star_add, star_sub, star_id_of_comm, T.A₀_sa, T.A₁_sa, T.B₀_sa, T.B₁_sa]
    have Q_sa : star Q = Q := by
      simp only [star_smul, star_add, star_sub, star_id_of_comm, T.A₀_sa, T.A₁_sa, T.B₀_sa, T.B₁_sa]
    have P2_nonneg : 0 ≤ P ^ 2 := by
      rw [sq]
      conv =>
        congr
        skip
        congr
        rw [← P_sa]
      convert (star_mul_self_nonneg P)
    have Q2_nonneg : 0 ≤ Q ^ 2 := by
      rw [sq]
      conv =>
        congr
        skip
        congr
        rw [← Q_sa]
      convert (star_mul_self_nonneg Q)
    convert smul_le_smul_of_nonneg (add_nonneg P2_nonneg Q2_nonneg)
        (le_of_lt (show 0 < √2⁻¹ by norm_num))
    -- `norm_num` can't directly show `0 ≤ √2⁻¹`
    simp
  apply le_of_sub_nonneg
  simpa only [sub_add_eq_sub_sub, ← sub_add, w, Nat.cast_zero] using pos
#align tsirelson_inequality tsirelson_inequality
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CHSH/Variant47d9840512321f22866139721a9c97f36d78461d52010a54753956fac220a845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CHSH/Variant47d9840512321f22866139721a9c97f36d78461d52010a54753956fac220a845.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c43e8fc13e4da57d058b917156bd5bdeb6dbf60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
