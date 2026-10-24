# coprimeCount_div_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcd2a68f-198b-1b8e-ceb4-aad470bf6f40",
  "kind": "theorem",
  "lexical_name": "coprimeCount_div_error",
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
  "slug": "coprimecount-div-error--9fac23bac4f55e562aff633c",
  "source": {
    "blob": "031d29ed54e358d9392f47bf06066a4dbc3f4e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 207,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fac23bac4f55e562aff633c7698eb25677c31943a0edbe6a228aff277b981d6",
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

Occurrence: `result:dcd2a68f-198b-1b8e-ceb4-aad470bf6f40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprimeCount_div_error (h j a : ℕ) (hh : 1 ≤ h) (ha : 1 ≤ a) :
    |(coprimeCount h (j / a) : ℝ) - coprimeDensity h * (j : ℝ) / (a : ℝ)| ≤
      (h.divisors.card : ℝ) := by
  rw [coprimeCount_eq_moebius_floor h (j / a) hh, coprimeDensity, sum_mul, sum_div,
    ← sum_sub_distrib]
  have hterm (e : ℕ) (he : e ∈ h.divisors) :
      |(ArithmeticFunction.moebius e : ℝ) * (((j / a) / e : ℕ) : ℝ) -
        ((ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (j : ℝ) / (a : ℝ)| ≤ 1 := by
    have he1 : 1 ≤ e := Nat.pos_of_mem_divisors he
    have hae : 1 ≤ a * e := by nlinarith
    have hf := natural_division_error j (a * e) hae
    have hmu : |(ArithmeticFunction.moebius e : ℝ)| ≤ 1 := by
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := e))
    have heq : (ArithmeticFunction.moebius e : ℝ) * (((j / a) / e : ℕ) : ℝ) -
        ((ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (j : ℝ) / (a : ℝ) =
        (ArithmeticFunction.moebius e : ℝ) * (((j / (a * e) : ℕ) : ℝ) -
          (j : ℝ) / ((a * e : ℕ) : ℝ)) := by
      rw [Nat.div_div_eq_div_mul]
      simp only [Nat.cast_mul, div_eq_mul_inv, mul_inv_rev]
      ring
    rw [heq, abs_mul]
    simpa only [one_mul] using mul_le_mul hmu hf (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
  calc
    _ ≤ ∑ e ∈ h.divisors,
        |(ArithmeticFunction.moebius e : ℝ) * (((j / a) / e : ℕ) : ℝ) -
          ((ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (j : ℝ) / (a : ℝ)| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ _e ∈ h.divisors, (1 : ℝ) := sum_le_sum hterm
    _ = _ := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SquarefreeCount/Variant831ee49b9ad55217635e032debdc15dc5a65643c0ebb1b0664a0b9aa72f27ade.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `031d29ed54e358d9392f47bf06066a4dbc3f4e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
