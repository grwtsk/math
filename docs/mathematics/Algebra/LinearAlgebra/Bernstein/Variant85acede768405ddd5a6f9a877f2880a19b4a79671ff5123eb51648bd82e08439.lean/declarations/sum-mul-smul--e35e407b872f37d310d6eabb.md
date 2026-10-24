# sum_mul_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce0f73c912f27a356d0f28d0c06b1a2e6a46f503",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0223e3cb-86b7-d772-a792-7cac74bcf444",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bc32ec0-b149-28dc-f4d0-1cf6419028e5",
  "kind": "theorem",
  "lexical_name": "sum_mul_smul",
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
  "slug": "sum-mul-smul--e35e407b872f37d310d6eabb",
  "source": {
    "blob": "ce0f73c912f27a356d0f28d0c06b1a2e6a46f503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 339,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e35e407b872f37d310d6eabbfe813c7d11ec3091e904d8f1d7dbd7ef1208eebc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bc32ec0-b149-28dc-f4d0-1cf6419028e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mul_smul (n : ℕ) :
    (∑ ν in Finset.range (n + 1), (ν * (ν - 1)) • bernsteinPolynomial R n ν) =
      (n * (n - 1)) • X ^ 2 := by
  -- We calculate the second `x`-derivative of `(x+y)^n`, evaluated at `y=(1-x)`,
  -- either directly or by using the binomial theorem.
  -- We'll work in `MvPolynomial Bool R`.
  let x : MvPolynomial Bool R := MvPolynomial.X true
  let y : MvPolynomial Bool R := MvPolynomial.X false
  have pderiv_true_x : pderiv true x = 1 := by rw [pderiv_X]; rfl
  have pderiv_true_y : pderiv true y = 0 := by rw [pderiv_X]; rfl
  let e : Bool → R[X] := fun i => cond i X (1 - X)
  -- Start with `(x+y)^n = (x+y)^n`,
  -- take the second `x`-derivative, evaluate at `x=X, y=1-X`, and multiply by `X`:
  trans MvPolynomial.aeval e (pderiv true (pderiv true ((x + y) ^ n))) * X ^ 2
  -- On the left hand side we'll use the binomial theorem, then simplify.
  · -- We first prepare a tedious rewrite:
    have w : ∀ k : ℕ, (k * (k - 1)) • bernsteinPolynomial R n k =
        (n.choose k : R[X]) * ((1 - Polynomial.X) ^ (n - k) *
          ((k : R[X]) * ((↑(k - 1) : R[X]) * Polynomial.X ^ (k - 1 - 1)))) * Polynomial.X ^ 2 := by
      rintro (_ | _ | k)
      · simp
      · simp
      · rw [bernsteinPolynomial]
        simp only [← nat_cast_mul, Nat.succ_eq_add_one, Nat.add_succ_sub_one, add_zero, pow_succ]
        push_cast
        ring
    rw [add_pow, (pderiv true).map_sum, (pderiv true).map_sum, (MvPolynomial.aeval e).map_sum,
      Finset.sum_mul]
    -- Step inside the sum:
    refine' Finset.sum_congr rfl fun k _ => (w k).trans _
    simp only [pderiv_true_x, pderiv_true_y, Algebra.id.smul_eq_mul, nsmul_eq_mul, Bool.cond_true,
      Bool.cond_false, add_zero, zero_add, mul_zero, smul_zero, mul_one,
      MvPolynomial.aeval_X, MvPolynomial.pderiv_X_self, MvPolynomial.pderiv_X_of_ne,
      Derivation.leibniz_pow, Derivation.leibniz, Derivation.map_coe_nat, map_natCast, map_pow,
      map_mul, map_add]
  -- On the right hand side, we'll just simplify.
  · simp only [pderiv_one, pderiv_mul, (pderiv _).leibniz_pow, (pderiv _).map_coe_nat,
      (pderiv true).map_add, pderiv_true_x, pderiv_true_y, Algebra.id.smul_eq_mul, add_zero,
      mul_one, Derivation.map_smul_of_tower, map_nsmul, map_pow, map_add, Bool.cond_true,
      Bool.cond_false, MvPolynomial.aeval_X, add_sub_cancel'_right, one_pow, smul_smul,
      smul_one_mul]
#align bernstein_polynomial.sum_mul_smul bernsteinPolynomial.sum_mul_smul

/-- A certain linear combination of the previous three identities,
which we'll want later.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bernstein/Variant85acede768405ddd5a6f9a877f2880a19b4a79671ff5123eb51648bd82e08439.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce0f73c912f27a356d0f28d0c06b1a2e6a46f503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
