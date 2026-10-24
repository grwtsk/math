# density_half_prime_square_excess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac403ab4-0f8c-8b02-44f1-ff06480305b6",
  "kind": "theorem",
  "lexical_name": "density_half_prime_square_excess",
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
  "slug": "density-half-prime-square-excess--6018822d24c5e6b7d9a81371",
  "source": {
    "blob": "ad57c732c00161c4f0c0b5e46e0b3a10f8a75c8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 38,
    "path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6018822d24c5e6b7d9a8137197a214a3c5c085c7ce3b38fd4cbbf3a75ea7c132",
  "verification": {
    "reference": "docs/verification/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac403ab4-0f8c-8b02-44f1-ff06480305b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem density_half_prime_square_excess {x : ℝ} (hx : 2 ≤ x) :
    0 ≤ (x / (x + 1 - Real.sqrt x)) ^ 2 - 1 ∧
      (x / (x + 1 - Real.sqrt x)) ^ 2 - 1 ≤ 7 / (3 * Real.sqrt x) := by
  have hb := density_half_prime_factor_bounds hx
  have hd : 0 < x + 1 - Real.sqrt x := by
    have h := density_half_prime_denominator_lower hx
    linarith
  have hs : 0 < Real.sqrt x := Real.sqrt_pos.mpr (by linarith)
  have he : x / (x + 1 - Real.sqrt x) - 1 ≤ 1 / Real.sqrt x := by
    apply (le_div_iff₀ hs).mpr
    have ht : Real.sqrt x * (x / (x + 1 - Real.sqrt x) - 1) =
        (x - Real.sqrt x) / (x + 1 - Real.sqrt x) := by
      have ht := Real.sq_sqrt (show 0 ≤ x by linarith)
      field_simp
      nlinarith
    rw [mul_comm, ht]
    apply (div_le_one hd).mpr
    linarith
  constructor
  · nlinarith
  · have hprod := mul_le_mul_of_nonneg_right he
      (show 0 ≤ x / (x + 1 - Real.sqrt x) + 1 by linarith [hb.1])
    have hprod2 := mul_le_mul_of_nonneg_left
      (show x / (x + 1 - Real.sqrt x) + 1 ≤ (7 : ℝ) / 3 by linarith [hb.2])
      (one_div_nonneg.mpr hs.le)
    have halgebra : (1 / Real.sqrt x) * ((7 : ℝ) / 3) =
        7 / (3 * Real.sqrt x) := by ring
    rw [halgebra] at hprod2
    nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad57c732c00161c4f0c0b5e46e0b3a10f8a75c8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
