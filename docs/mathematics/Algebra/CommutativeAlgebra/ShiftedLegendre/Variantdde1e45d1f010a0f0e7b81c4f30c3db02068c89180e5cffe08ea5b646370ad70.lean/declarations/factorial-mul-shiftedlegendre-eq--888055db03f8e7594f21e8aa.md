# factorial_mul_shiftedLegendre_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3208005a-2813-1c94-634d-bd4a69a7454f",
  "kind": "theorem",
  "lexical_name": "factorial_mul_shiftedLegendre_eq",
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
  "slug": "factorial-mul-shiftedlegendre-eq--888055db03f8e7594f21e8aa",
  "source": {
    "blob": "9e346ba1338f4168d2a70e8f8d0c5949ca822989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 54,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:888055db03f8e7594f21e8aa6e10cf6c7b3425b2586e5a0cf3e04db3b4448d46",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3208005a-2813-1c94-634d-bd4a69a7454f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_mul_shiftedLegendre_eq (n : ℕ) : (n ! : ℤ[X]) * (shiftedLegendre n) =
    derivative^[n] (X ^ n * (1 - (X : ℤ[X])) ^ n) := by
  symm
  calc
  _ = derivative^[n] (((X : ℤ[X]) - X ^ 2) ^ n) := by
    rw [← mul_pow, mul_one_sub, ← pow_two]
  _ = derivative^[n] (∑ m ∈ range (n + 1), n.choose m • (-1) ^ m * X ^ (n + m)) := by
    congr
    rw [sub_eq_add_neg, add_comm, add_pow]
    congr! 1 with m hm
    rw [neg_pow, pow_two, mul_pow, ← mul_assoc, mul_comm, mul_assoc, pow_mul_pow_sub, mul_assoc,
      ← pow_add, ← mul_assoc, nsmul_eq_mul, add_comm]
    rw [Finset.mem_range] at hm
    linarith
  _ = ∑ x ∈ range (n + 1), ↑((n + x)! / x !) * C (↑(n.choose x) * (-1) ^ x) * X ^ x := by
    rw [iterate_derivative_sum]
    congr! 1 with x _
    rw [show (n.choose x • (-1) ^ x : ℤ[X]) = C (n.choose x • (-1) ^ x) by simp,
      iterate_derivative_C_mul, iterate_derivative_X_pow_eq_smul,
      descFactorial_eq_div (by lia), show n + x - n = x by lia]
    simp only [Int.reduceNeg, nsmul_eq_mul, eq_intCast, Int.cast_mul, Int.cast_natCast,
      Int.cast_pow, Int.cast_neg, Int.cast_one, zsmul_eq_mul]
    ring
  _ = ∑ i ∈ range (n + 1), ↑n ! * C ((-1) ^ i * ↑(n.choose i) * ↑((n + i).choose n)) * X ^ i := by
    congr! 2 with x _
    rw [C_mul (b := ((n + x).choose n : ℤ)), mul_comm, mul_comm (n ! : ℤ[X]), mul_comm _ ((-1) ^ x),
      mul_assoc]
    congr 1
    rw [add_comm, add_choose]
    simp only [Int.natCast_ediv, cast_mul, eq_intCast]
    norm_cast
    rw [mul_comm, ← Nat.mul_div_assoc]
    · rw [mul_comm, Nat.mul_div_mul_right _ _ (by positivity)]
    · simp only [factorial_mul_factorial_dvd_factorial_add]
  _ = (n ! : ℤ[X]) * (shiftedLegendre n) := by simp [← mul_assoc, shiftedLegendre, mul_sum]

/-- The coefficient of the shifted Legendre polynomial at `k` is
`(-1) ^ k * (n.choose k) * (n + k).choose n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e346ba1338f4168d2a70e8f8d0c5949ca822989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
