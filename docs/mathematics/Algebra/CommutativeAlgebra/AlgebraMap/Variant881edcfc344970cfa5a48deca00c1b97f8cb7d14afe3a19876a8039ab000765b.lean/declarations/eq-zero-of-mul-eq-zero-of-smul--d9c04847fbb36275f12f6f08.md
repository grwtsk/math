# eq_zero_of_mul_eq_zero_of_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3037089c-cc3d-ad88-5cfe-3268a959292f",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_mul_eq_zero_of_smul",
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
  "slug": "eq-zero-of-mul-eq-zero-of-smul--d9c04847fbb36275f12f6f08",
  "source": {
    "blob": "4934707286a47faddbe785643ffa3e9b4748e1bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 769,
    "line": 737,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variant881edcfc344970cfa5a48deca00c1b97f8cb7d14afe3a19876a8039ab000765b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9c04847fbb36275f12f6f084d90c85c8a134b293a7e279687f09a9e624c22de",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AlgebraMap/Variant881edcfc344970cfa5a48deca00c1b97f8cb7d14afe3a19876a8039ab000765b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3037089c-cc3d-ad88-5cfe-3268a959292f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–769.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_mul_eq_zero_of_smul (P : R[X]) (h : ∀ r : R, r • P = 0 → r = 0) (Q : R[X])
    (hQ : P * Q = 0) : Q = 0 := by
  suffices ∀ i, P.coeff i • Q = 0 by
    rw [← leadingCoeff_eq_zero]
    apply h
    simpa [ext_iff, mul_comm Q.leadingCoeff] using fun i ↦ congr_arg (·.coeff Q.natDegree) (this i)
  apply Nat.strong_decreasing_induction
  · use P.natDegree
    intro i hi
    rw [coeff_eq_zero_of_natDegree_lt hi, zero_smul]
  intro l IH
  obtain _ | hl := (natDegree_smul_le (P.coeff l) Q).lt_or_eq
  · apply eq_zero_of_mul_eq_zero_of_smul _ h (P.coeff l • Q)
    rw [smul_eq_C_mul, mul_left_comm, hQ, mul_zero]
  suffices P.coeff l * Q.leadingCoeff = 0 by
    rwa [← leadingCoeff_eq_zero, ← coeff_natDegree, coeff_smul, hl, coeff_natDegree, smul_eq_mul]
  let m := Q.natDegree
  suffices (P * Q).coeff (l + m) = P.coeff l * Q.leadingCoeff by rw [← this, hQ, coeff_zero]
  rw [coeff_mul]
  apply Finset.sum_eq_single (l, m) _ (by simp)
  simp only [Finset.mem_antidiagonal, ne_eq, Prod.forall, Prod.mk.injEq, not_and]
  intro i j hij H
  obtain hi | rfl | hi := lt_trichotomy i l
  · have hj : m < j := by lia
    rw [coeff_eq_zero_of_natDegree_lt hj, mul_zero]
  · lia
  · rw [← coeff_C_mul, ← smul_eq_C_mul, IH _ hi, coeff_zero]
termination_by Q.natDegree

open nonZeroDivisors

/-- *McCoy theorem*: a polynomial `P : R[X]` is a zerodivisor if and only if there is `a : R`
such that `a ≠ 0` and `a • P = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AlgebraMap/Variant881edcfc344970cfa5a48deca00c1b97f8cb7d14afe3a19876a8039ab000765b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variant881edcfc344970cfa5a48deca00c1b97f8cb7d14afe3a19876a8039ab000765b.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4934707286a47faddbe785643ffa3e9b4748e1bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
