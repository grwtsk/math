# pochhammer_nat_eq_descFactorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a796b813-cc2e-8bbc-173a-313224b09bc6",
  "kind": "theorem",
  "lexical_name": "pochhammer_nat_eq_descFactorial",
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
  "slug": "pochhammer-nat-eq-descfactorial--fa6c0c7125d30ca0e4f01825",
  "source": {
    "blob": "a86b3fb9816f5087d50b2e7e5e1386f7b446f02e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 159,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa6c0c7125d30ca0e4f01825af93f6b5f60dd37c1852249083045b063ec93526",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a796b813-cc2e-8bbc-173a-313224b09bc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pochhammer_nat_eq_descFactorial (a b : ℕ) :
    (pochhammer ℕ b).eval a = (a + b - 1).descFactorial b := by
  cases' b with b
  · rw [Nat.descFactorial_zero, pochhammer_zero, Polynomial.eval_one]
  rw [Nat.add_succ, Nat.succ_sub_succ, tsub_zero]
  cases a
  · simp only [Nat.zero_eq, ne_eq, Nat.succ_ne_zero, not_false_iff, pochhammer_ne_zero_eval_zero,
    zero_add, Nat.descFactorial_succ, le_refl, tsub_eq_zero_of_le, zero_mul]
  · rw [Nat.succ_add, ← Nat.add_succ, Nat.add_descFactorial_eq_ascFactorial,
      pochhammer_nat_eq_ascFactorial]
#align pochhammer_nat_eq_desc_factorial pochhammer_nat_eq_descFactorial

end Semiring

section StrictOrderedSemiring

variable {S : Type*} [StrictOrderedSemiring S]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a86b3fb9816f5087d50b2e7e5e1386f7b446f02e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
