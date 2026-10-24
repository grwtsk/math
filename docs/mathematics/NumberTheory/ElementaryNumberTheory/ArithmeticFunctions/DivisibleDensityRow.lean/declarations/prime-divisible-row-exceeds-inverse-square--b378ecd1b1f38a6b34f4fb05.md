# prime_divisible_row_exceeds_inverse_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dbdbbaf-6d6e-15a7-36a4-7df3c981103b",
  "kind": "theorem",
  "lexical_name": "prime_divisible_row_exceeds_inverse_square",
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
  "slug": "prime-divisible-row-exceeds-inverse-square--b378ecd1b1f38a6b34f4fb05",
  "source": {
    "blob": "2f96a7548f124836a2a6feec12478914fbb8e549",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 44,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b378ecd1b1f38a6b34f4fb056f2b9b4d11200a62977a326facd62535c6024ae6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dbdbbaf-6d6e-15a7-36a4-7df3c981103b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_divisible_row_exceeds_inverse_square (C : ℝ) (hC : 0 ≤ C) (B : ℕ) :
    ∃ p : ℕ, B ≤ p ∧ p.Prime ∧
      C / (p : ℝ)^2 <
        |∑ n ∈ Finset.Icc 1 p, if p ∣ n then densityMobiusCoefficient n / (n : ℝ) else 0| := by
  obtain ⟨N, hN⟩ := exists_nat_gt (2 * C + 1)
  obtain ⟨p, hNp, hp⟩ := Nat.exists_infinite_primes (max N B)
  have hlarge : 2 * C + 1 < (p : ℝ) := hN.trans_le (by exact_mod_cast (le_max_left N B).trans hNp)
  have hp0 : (0 : ℝ) < p := by exact_mod_cast hp.pos
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  have hden : 0 < (p : ℝ) + 1 := by positivity
  have hCsmall : C ≤ (p : ℝ) / 2 := by linarith
  have hprod := mul_le_mul_of_nonneg_right hCsmall hden.le
  have hstrict : (p : ℝ) / 2 * ((p : ℝ) + 1) < (p : ℝ)^2 := by nlinarith
  refine ⟨p, (le_max_right N B).trans hNp, hp, ?_⟩
  rw [prime_divisible_density_row_at_cutoff hp, abs_neg, abs_of_pos (one_div_pos.mpr hden)]
  apply (div_lt_div_iff₀ (sq_pos_of_pos hp0) hden).mpr
  simpa only [one_mul] using hprod.trans_lt hstrict

end GRWTSK.NumberTheory.ArithmeticFunctions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/DivisibleDensityRow.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f96a7548f124836a2a6feec12478914fbb8e549` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
