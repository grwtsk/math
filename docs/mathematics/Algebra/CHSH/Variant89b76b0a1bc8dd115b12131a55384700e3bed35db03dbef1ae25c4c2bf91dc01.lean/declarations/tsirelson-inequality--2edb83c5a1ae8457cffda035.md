# tsirelson_inequality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4e5bbac-86fd-36e3-bd72-9cfaa4b22ee1",
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
  "slug": "tsirelson-inequality--2edb83c5a1ae8457cffda035",
  "source": {
    "blob": "3309e6f78fe2511496b7cdaada15394d32a514ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 203,
    "path": "GRWTSK/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2edb83c5a1ae8457cffda0353261e17f02f61e4c184f5af45236a9a824cd5ae2",
  "verification": {
    "reference": "docs/verification/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4e5bbac-86fd-36e3-bd72-9cfaa4b22ee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–258.

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

[Verification target and public status](../../../../../verification/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CHSH/Variant89b76b0a1bc8dd115b12131a55384700e3bed35db03dbef1ae25c4c2bf91dc01.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3309e6f78fe2511496b7cdaada15394d32a514ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
