# complex_ratio_eq_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c538cb27-e798-7ba0-f1ff-c08bad5e9b8f",
  "kind": "theorem",
  "lexical_name": "complex_ratio_eq_polynomial",
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
  "slug": "complex-ratio-eq-polynomial--828ede6e0a5723500258833c",
  "source": {
    "blob": "b0fb0112f43dfe779ef7f3bab3efbc722a1a21d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 104,
    "path": "GRWTSK/Analysis/Complex/IntegerTaylorPolynomial.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:828ede6e0a5723500258833c39643a86a5ef1725cf95506a67d6c760b97e2b53",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c538cb27-e798-7ba0-f1ff-c08bad5e9b8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_ratio_eq_polynomial (D : ℤ) (hD : 0 < D)
    (w : Gaussian) (j : ℕ) :
    embedZ (numeratorZ D w j) / (denominatorZ D j : ℂ) =
      expPolynomial (embedZ w / (D : ℂ)) (j + 1) := by
  have hDc : (D : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hD)
  induction j with
  | zero => simp [numeratorZ, denominatorZ, embedZ, expPolynomial]
  | succ j ih =>
      have hf : (j.factorial : ℂ) ≠ 0 := by
        exact_mod_cast Nat.factorial_ne_zero j
      have hj : ((j : ℂ) + 1) ≠ 0 := by
        exact_mod_cast Nat.succ_ne_zero j
      have hnext : expPolynomial (embedZ w / (D : ℂ)) (j + 1 + 1) =
          expPolynomial (embedZ w / (D : ℂ)) (j + 1) +
            (embedZ w / (D : ℂ)) ^ (j + 1) / ((j + 1).factorial : ℂ) := by
        simp only [expPolynomial, Finset.sum_range_succ]
      rw [hnext, ← ih]
      simp only [numeratorZ, embedZ_add, embedZ_scale, embedZ_power,
        denominatorZ, Nat.factorial_succ, Int.cast_mul, Int.cast_add,
        Int.cast_one, Int.cast_pow, Int.cast_natCast, Nat.cast_mul,
        Nat.cast_add, Nat.cast_one, div_pow, pow_succ]
      field_simp [hDc, hf, hj] <;> ring

/-- Exact equality with the SAME rational polynomial used by the power seed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntegerTaylorPolynomial.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntegerTaylorPolynomial.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0fb0112f43dfe779ef7f3bab3efbc722a1a21d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
