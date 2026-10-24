# dampedDivisorCoefficient_prefix_first_order

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f68ddf44-b836-c180-8048-58740556dafc",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_prefix_first_order",
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
  "slug": "dampeddivisorcoefficient-prefix-first-order--78e2e6c99a8ab0b642053cff",
  "source": {
    "blob": "9725180b7b095218f1b503b2d6248d53fa50ee57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 67,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78e2e6c99a8ab0b642053cfffe6d97f448cf50ab4bd0ac9bee04926c9dbe6c4d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f68ddf44-b836-c180-8048-58740556dafc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_prefix_first_order (ε : ℝ) (hε : 0 ≤ ε)
    (N : ℕ) (hN : 1 ≤ N) :
    |(∑ n ∈ Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 N, ArithmeticFunction.vonMangoldt n| ≤
        ε ^ 2 * (N : ℝ) * Real.log (N : ℝ) ^ 2 := by
  have he : (∑ n ∈ Icc 1 N, dampedDivisorCoefficient ε n) - 1 -
      ε * ∑ n ∈ Icc 1 N, ArithmeticFunction.vonMangoldt n =
      ∑ n ∈ Icc 1 N, (dampedDivisorCoefficient ε n - (if n = 1 then 1 else 0) -
        ε * ArithmeticFunction.vonMangoldt n) := by
    simp [sum_sub_distrib, ← mul_sum, hN]
  rw [he]
  calc
    _ ≤ ∑ n ∈ Icc 1 N, |dampedDivisorCoefficient ε n - (if n = 1 then 1 else 0) -
        ε * ArithmeticFunction.vonMangoldt n| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Icc 1 N, ε ^ 2 * Real.log (n : ℝ) ^ 2 := by
      apply sum_le_sum
      intro n hn
      exact dampedDivisorCoefficient_first_order ε hε n (mem_Icc.mp hn).1
    _ ≤ ∑ _n ∈ Icc 1 N, ε ^ 2 * Real.log (N : ℝ) ^ 2 := by
      apply sum_le_sum
      intro n hn
      have h0 : 0 ≤ Real.log (n : ℝ) :=
        Real.log_nonneg (by exact_mod_cast (mem_Icc.mp hn).1)
      have hl : Real.log (n : ℝ) ≤ Real.log (N : ℝ) := Real.log_le_log
        (by exact_mod_cast (show 0 < n by have := (mem_Icc.mp hn).1; omega))
        (by exact_mod_cast (mem_Icc.mp hn).2)
      exact mul_le_mul_of_nonneg_left (by nlinarith) (sq_nonneg ε)
    _ = _ := by simp; ring

/-- The actual real cutoff retains all prime powers in the uniform finite-prefix remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9725180b7b095218f1b503b2d6248d53fa50ee57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
