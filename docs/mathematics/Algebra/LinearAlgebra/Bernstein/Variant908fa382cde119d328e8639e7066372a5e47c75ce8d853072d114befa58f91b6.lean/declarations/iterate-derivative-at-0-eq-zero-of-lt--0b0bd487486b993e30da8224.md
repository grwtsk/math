# iterate_derivative_at_0_eq_zero_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29b4f785-1565-220b-8cd3-b2139be53139",
  "kind": "theorem",
  "lexical_name": "iterate_derivative_at_0_eq_zero_of_lt",
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
  "slug": "iterate-derivative-at-0-eq-zero-of-lt--0b0bd487486b993e30da8224",
  "source": {
    "blob": "9bf60f19df319be9ab1972347245dee3da113d6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 154,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bernstein/Variant908fa382cde119d328e8639e7066372a5e47c75ce8d853072d114befa58f91b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b0bd487486b993e30da82247f9487d4358909052d526ecd6d74f4ef989b4b6b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bernstein/Variant908fa382cde119d328e8639e7066372a5e47c75ce8d853072d114befa58f91b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29b4f785-1565-220b-8cd3-b2139be53139`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_derivative_at_0_eq_zero_of_lt (n : ℕ) {ν k : ℕ} :
    k < ν → (Polynomial.derivative^[k] (bernsteinPolynomial R n ν)).eval 0 = 0 := by
  cases' ν with ν
  · rintro ⟨⟩
  · rw [Nat.lt_succ_iff]
    induction' k with k ih generalizing n ν
    · simp [eval_at_0]
    · simp only [derivative_succ, Int.coe_nat_eq_zero, mul_eq_zero, Function.comp_apply,
        Function.iterate_succ, Polynomial.iterate_derivative_sub,
        Polynomial.iterate_derivative_nat_cast_mul, Polynomial.eval_mul, Polynomial.eval_nat_cast,
        Polynomial.eval_sub]
      intro h
      apply mul_eq_zero_of_right
      rw [ih _ _ (Nat.le_of_succ_le h), sub_zero]
      convert ih _ _ (Nat.pred_le_pred h)
      exact (Nat.succ_pred_eq_of_pos (k.succ_pos.trans_le h)).symm
#align bernstein_polynomial.iterate_derivative_at_0_eq_zero_of_lt bernsteinPolynomial.iterate_derivative_at_0_eq_zero_of_lt

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bernstein/Variant908fa382cde119d328e8639e7066372a5e47c75ce8d853072d114befa58f91b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bernstein/Variant908fa382cde119d328e8639e7066372a5e47c75ce8d853072d114befa58f91b6.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf60f19df319be9ab1972347245dee3da113d6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
