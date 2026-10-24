# x_pairwise_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33df0e90-c2dd-3e2b-2acf-d9dfd3c57ca1",
  "kind": "theorem",
  "lexical_name": "x_pairwise_coprime",
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
  "slug": "x-pairwise-coprime--1ef968ae89d078a4d07b1120",
  "source": {
    "blob": "38f66b3447d2c349bebeb8c76a0cd28699e32260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 226,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ef968ae89d078a4d07b1120c6bae0593874bed5f11241f398cb28143692a0f4",
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

Occurrence: `result:33df0e90-c2dd-3e2b-2acf-d9dfd3c57ca1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem x_pairwise_coprime (i j : Fin d) (hij : i ≠ j) :
    Nat.gcd (x i) (x j) = 1 := by
  have hij' : i.val ≠ j.val := by
    simp [Fin.val_inj, hij]
  have hij'' : i.val + 1 ≠ j.val + 1 := by
    omega
  simp_rw [x]
  rw [← Nat.coprime_iff_gcd_eq_one]
  split_ifs with hik hjk
  · simp_all
  · rw [Nat.coprime_mul_iff_left, mul_one]
    refine ⟨hy_cop _ _ hij'', ?_⟩
    rw [Nat.coprime_prod_left_iff]
    simp only [Finset.mem_Ioc, and_imp]
    intro m hdm hmn
    apply Nat.Coprime.pow_left
    apply hy_cop
    omega
  · rw [Nat.coprime_mul_iff_right, mul_one]
    refine ⟨hy_cop _ _ hij'', ?_⟩
    rw [Nat.coprime_prod_right_iff]
    simp only [Finset.mem_Ioc, and_imp]
    intro m hdm hmn
    apply Nat.Coprime.pow_right
    apply hy_cop
    omega
  · simp_rw [mul_one]
    exact hy_cop _ _ hij''

/-- The small residual factor formed from the remainders modulo `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38f66b3447d2c349bebeb8c76a0cd28699e32260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
