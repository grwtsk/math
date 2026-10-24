# active_width_le_complete_inventory_width

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd2eac2d-a2d9-88df-27e0-44647c2fa7dd",
  "kind": "theorem",
  "lexical_name": "active_width_le_complete_inventory_width",
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
  "slug": "active-width-le-complete-inventory-width--ab94b04c5b9c8fa1fdac02b3",
  "source": {
    "blob": "3009f6a548bc89233ad2e0146d7943cd76999a58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variantef59c806ddeb19e8f0b9f6ca0eeaf53bea3993bb15c24606e32b6ed8624ad9b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab94b04c5b9c8fa1fdac02b368ebe3883bb8f7bc91ba0d60c7d17b542d0bed7b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variantef59c806ddeb19e8f0b9f6ca0eeaf53bea3993bb15c24606e32b6ed8624ad9b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd2eac2d-a2d9-88df-27e0-44647c2fa7dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem active_width_le_complete_inventory_width (j : ℕ) :
    activeWidth j ≤ width (linearSize j) := by
  have hM : 2 ≤ linearSize j := by unfold linearSize; omega
  have hstart : (0 : ℝ) < ((linearSize j) ^ 2 : ℕ) := by
    exact_mod_cast (show 0 < (linearSize j) ^ 2 by nlinarith)
  have hleftOrder : (((linearSize j) ^ 2 : ℕ) : ℝ) ≤
      ((linearSize j) ^ 2 + 1 : ℕ) := by exact_mod_cast
    (show (linearSize j) ^ 2 ≤ (linearSize j) ^ 2 + 1 by omega)
  have hleft := one_div_le_one_div_of_le (Real.sqrt_pos.mpr hstart)
    (Real.sqrt_le_sqrt hleftOrder)
  have hend : (0 : ℝ) < ((linearSize j) ^ 2 + 2 * linearSize j : ℕ) := by positivity
  have hrightOrder : (((linearSize j) ^ 2 + 2 * linearSize j : ℕ) : ℝ) ≤
      ((linearSize j) ^ 2 + 2 * linearSize j + 1 : ℕ) := by exact_mod_cast
    (show (linearSize j) ^ 2 + 2 * linearSize j ≤
      (linearSize j) ^ 2 + 2 * linearSize j + 1 by omega)
  have hright := one_div_le_one_div_of_le (Real.sqrt_pos.mpr hend)
    (Real.sqrt_le_sqrt hrightOrder)
  rw [complete_native_width_is_exact_real_width]
  unfold activeWidth
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variantef59c806ddeb19e8f0b9f6ca0eeaf53bea3993bb15c24606e32b6ed8624ad9b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularActiveCycleConsumer/Variantef59c806ddeb19e8f0b9f6ca0eeaf53bea3993bb15c24606e32b6ed8624ad9b0.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3009f6a548bc89233ad2e0146d7943cd76999a58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
