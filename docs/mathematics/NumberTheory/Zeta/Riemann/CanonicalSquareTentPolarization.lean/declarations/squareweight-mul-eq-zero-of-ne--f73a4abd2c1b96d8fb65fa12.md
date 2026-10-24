# squareWeight_mul_eq_zero_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06e5cea1-18d1-7f2b-7751-d12bf83412d3",
  "kind": "theorem",
  "lexical_name": "squareWeight_mul_eq_zero_of_ne",
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
  "slug": "squareweight-mul-eq-zero-of-ne--f73a4abd2c1b96d8fb65fa12",
  "source": {
    "blob": "0fced6fc958031623daec748c60b17295d92b552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f73a4abd2c1b96d8fb65fa12796cac545c66a526ac900cad5842758719d94bec",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06e5cea1-18d1-7f2b-7751-d12bf83412d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareWeight_mul_eq_zero_of_ne
    (i j m : ℕ) (hij : i ≠ j) :
    squareWeight (i + 2) m * squareWeight (j + 2) m = 0 := by
  rcases lt_or_gt_of_ne hij with hijlt | hjilt
  · by_cases hi : (i + 2) ^ 2 < m ∧ m < (i + 3) ^ 2
    · have hbase : i + 3 ≤ j + 2 := by omega
      have hsq : (i + 3) ^ 2 ≤ (j + 2) ^ 2 :=
        Nat.pow_le_pow_left hbase 2
      have hjout : ¬ ((j + 2) ^ 2 < m ∧ m < (j + 3) ^ 2) := by
        intro hj
        omega
      rw [squareWeight_eq_zero_of_outside (j + 2) m hjout, mul_zero]
    · rw [squareWeight_eq_zero_of_outside (i + 2) m hi, zero_mul]
  · by_cases hj : (j + 2) ^ 2 < m ∧ m < (j + 3) ^ 2
    · have hbase : j + 3 ≤ i + 2 := by omega
      have hsq : (j + 3) ^ 2 ≤ (i + 2) ^ 2 :=
        Nat.pow_le_pow_left hbase 2
      have hiout : ¬ ((i + 2) ^ 2 < m ∧ m < (i + 3) ^ 2) := by
        intro hi
        omega
      rw [squareWeight_eq_zero_of_outside (i + 2) m hiout, zero_mul]
    · rw [squareWeight_eq_zero_of_outside (j + 2) m hj, mul_zero]

/-- The square-root amplitudes used by the finite prime-power Gram are likewise
pointwise orthogonal at every natural arithmetic argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fced6fc958031623daec748c60b17295d92b552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
