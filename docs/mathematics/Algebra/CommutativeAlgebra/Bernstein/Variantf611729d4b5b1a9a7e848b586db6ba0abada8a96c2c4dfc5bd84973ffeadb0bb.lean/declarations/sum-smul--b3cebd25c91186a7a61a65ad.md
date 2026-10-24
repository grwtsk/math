# sum_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7ca61e5-0994-7c9d-2c4c-09c03ea11218",
  "kind": "theorem",
  "lexical_name": "sum_smul",
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
  "slug": "sum-smul--b3cebd25c91186a7a61a65ad",
  "source": {
    "blob": "5d7d4b877c0a378359735d69f42997f43d5b60e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 287,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3cebd25c91186a7a61a65ad48463bd2d49d5f0a5f54898476dee758d2549d8d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7ca61e5-0994-7c9d-2c4c-09c03ea11218`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_smul (n : ℕ) :
    (∑ ν ∈ Finset.range (n + 1), ν • bernsteinPolynomial R n ν) = n • X := by
  -- We calculate the `x`-derivative of `(x+y)^n`, evaluated at `y=(1-x)`,
  -- either directly or by using the binomial theorem.
  -- We'll work in `MvPolynomial Bool R`.
  let x : MvPolynomial Bool R := MvPolynomial.X true
  let y : MvPolynomial Bool R := MvPolynomial.X false
  have pderiv_true_x : pderiv true x = 1 := by rw [pderiv_X]; rfl
  have pderiv_true_y : pderiv true y = 0 := by rw [pderiv_X]; rfl
  let e : Bool → R[X] := fun i => cond i X (1 - X)
  -- Start with `(x+y)^n = (x+y)^n`,
  -- take the `x`-derivative, evaluate at `x=X, y=1-X`, and multiply by `X`:
  trans MvPolynomial.aeval e (pderiv true ((x + y) ^ n)) * X
  -- On the left hand side we'll use the binomial theorem, then simplify.
  · -- We first prepare a tedious rewrite:
    have w : ∀ k : ℕ, k • bernsteinPolynomial R n k =
        (k : R[X]) * Polynomial.X ^ (k - 1) * (1 - Polynomial.X) ^ (n - k) * (n.choose k : R[X]) *
          Polynomial.X := by
      rintro (_ | k)
      · simp
      · rw [bernsteinPolynomial]
        simp only [← natCast_mul, Nat.succ_eq_add_one, Nat.add_succ_sub_one, add_zero, pow_succ]
        push_cast
        ring
    rw [add_pow, map_sum (pderiv true), map_sum (MvPolynomial.aeval e), Finset.sum_mul]
    -- Step inside the sum:
    refine Finset.sum_congr rfl fun k _ => (w k).trans ?_
    simp only [x, y, e, pderiv_true_x, pderiv_true_y, Algebra.id.smul_eq_mul, nsmul_eq_mul,
      Bool.cond_true, Bool.cond_false, add_zero, mul_one, mul_zero, smul_zero, MvPolynomial.aeval_X,
      MvPolynomial.pderiv_mul, Derivation.leibniz_pow, Derivation.map_natCast, map_natCast, map_pow,
      map_mul]
  · rw [(pderiv true).leibniz_pow, (pderiv true).map_add, pderiv_true_x, pderiv_true_y]
    simp only [x, y, e, Algebra.id.smul_eq_mul, nsmul_eq_mul, map_natCast, map_pow, map_add,
      map_mul, Bool.cond_true, Bool.cond_false, MvPolynomial.aeval_X, add_sub_cancel,
      one_pow, add_zero, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Bernstein/Variantf611729d4b5b1a9a7e848b586db6ba0abada8a96c2c4dfc5bd84973ffeadb0bb.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7d4b877c0a378359735d69f42997f43d5b60e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
