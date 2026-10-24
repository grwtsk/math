# fixedDensity_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8267aebd-b2a3-7746-cd95-f56244ff9d8c",
  "kind": "theorem",
  "lexical_name": "fixedDensity_error_le",
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
  "slug": "fixeddensity-error-le--aa9b9f12b157715aecb5b6e8",
  "source": {
    "blob": "031d29ed54e358d9392f47bf06066a4dbc3f4e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 313,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa9b9f12b157715aecb5b6e8697388666ee9f72d8d88ca612a9a94214f08108f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8267aebd-b2a3-7746-cd95-f56244ff9d8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedDensity_error_le (h j G : ℕ) (hh : 1 ≤ h) (hj : 1 ≤ j) (hjG : j ≤ G) :
    |squarefreeCoprimeCount h j -
      finiteSquarefreeDensity h (Nat.sqrt G) * (j : ℝ)| ≤
      ((h.divisors.card : ℝ) + 2) * Real.sqrt (j : ℝ) := by
  have hlocal := squarefreeCoprimeCount_error_le h j hh
  have htail := finiteSquarefreeDensity_difference_le h (Nat.sqrt j) (Nat.sqrt G) hh
    (Nat.sqrt_le_sqrt hjG)
  have hweight : |(j : ℝ) * finiteSquarefreeDensity h (Nat.sqrt j) -
      finiteSquarefreeDensity h (Nat.sqrt G) * (j : ℝ)| ≤ 2 * Real.sqrt (j : ℝ) := by
    calc
      _ = (j : ℝ) * |finiteSquarefreeDensity h (Nat.sqrt G) -
          finiteSquarefreeDensity h (Nat.sqrt j)| := by
        rw [mul_comm (finiteSquarefreeDensity h (Nat.sqrt G)) (j : ℝ), ← mul_sub,
          abs_mul, abs_of_nonneg (Nat.cast_nonneg j), abs_sub_comm]
      _ ≤ (j : ℝ) * ∑ d ∈ Ioc (Nat.sqrt j) (Nat.sqrt G), 1 / (d : ℝ)^2 :=
        mul_le_mul_of_nonneg_left htail (Nat.cast_nonneg j)
      _ ≤ _ := ReciprocalSquareTailScratch.sqrt_cutoff_tail_le j G hj hjG
  calc
    _ ≤ |squarefreeCoprimeCount h j - (j : ℝ) * finiteSquarefreeDensity h (Nat.sqrt j)| +
        |(j : ℝ) * finiteSquarefreeDensity h (Nat.sqrt j) -
          finiteSquarefreeDensity h (Nat.sqrt G) * (j : ℝ)| := abs_sub_le _ _ _
    _ ≤ (h.divisors.card : ℝ) * (Nat.sqrt j : ℝ) + 2 * Real.sqrt (j : ℝ) :=
      add_le_add hlocal hweight
    _ ≤ (h.divisors.card : ℝ) * Real.sqrt (j : ℝ) + 2 * Real.sqrt (j : ℝ) :=
      add_le_add (mul_le_mul_of_nonneg_left (Real.nat_sqrt_le_real_sqrt (a := j))
        (Nat.cast_nonneg h.divisors.card)) le_rfl
    _ = _ := by ring

end
end SquarefreeCountScratch

#print axioms SquarefreeCountScratch.halfFactorization
#print axioms SquarefreeCountScratch.squareDivisorRoot
#print axioms SquarefreeCountScratch.halfFactorization_le
#print axioms SquarefreeCountScratch.squareDivisorRoot_ne_zero
#print axioms SquarefreeCountScratch.squareDivisorRoot_factorization
#print axioms SquarefreeCountScratch.square_dvd_iff_dvd_root
#print axioms SquarefreeCountScratch.root_eq_one_iff_squarefree
#print axioms SquarefreeCountScratch.squareDivisors_eq_root_divisors
#print axioms SquarefreeCountScratch.sum_moebius_divisors
#print axioms SquarefreeCountScratch.moebius_square_eq_sum_squareDivisors
#print axioms SquarefreeCountScratch.squareDivisors_eq_Icc
#print axioms SquarefreeCountScratch.moebius_square_eq_sum_Icc
#print axioms SquarefreeCountScratch.coprime_multiples_card
#print axioms SquarefreeCountScratch.squarefreeCoprimeCount
#print axioms SquarefreeCountScratch.coprime_multiples_sum
#print axioms SquarefreeCountScratch.squarefreeCoprimeCount_eq
#print axioms SquarefreeCountScratch.coprimeCount_div_error
#print axioms SquarefreeCountScratch.finiteSquarefreeDensity
#print axioms SquarefreeCountScratch.squarefreeCoprimeCount_error_le
#print axioms SquarefreeCountScratch.finiteSquarefreeDensity_difference_le
#print axioms SquarefreeCountScratch.fixedDensity_error_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `031d29ed54e358d9392f47bf06066a4dbc3f4e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
