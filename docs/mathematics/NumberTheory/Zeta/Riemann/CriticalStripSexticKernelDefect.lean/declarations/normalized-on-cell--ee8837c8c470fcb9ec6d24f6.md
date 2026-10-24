# normalized_on_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52a83b8c-44d8-91f9-1973-b59aa8fe7f9b",
  "kind": "theorem",
  "lexical_name": "normalized_on_cell",
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
  "slug": "normalized-on-cell--ee8837c8c470fcb9ec6d24f6",
  "source": {
    "blob": "272826d83468df6ccbf39c6a239ef587b332aea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 71,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee8837c8c470fcb9ec6d24f6baf50ef7a59a6641320c426fea362f48ae3f8544",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52a83b8c-44d8-91f9-1973-b59aa8fe7f9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_on_cell (i : Fin 16) {u : ℝ}
    (hu : (i.val : ℝ) / 16 ≤ u) (hu1 : u ≤ ((i.val : ℝ) + 1) / 16) :
    |normalized u| ≤ cap i := by
  let v : ℝ := 16 * u - (i.val : ℝ)
  have hv : 0 ≤ v := by dsimp [v]; linarith
  have hv1 : v ≤ 1 := by dsimp [v]; linarith
  have hb (j : Fin 7) : 0 ≤ basis j v := by
    unfold basis
    exact mul_nonneg (pow_nonneg hv _) (pow_nonneg (sub_nonneg.mpr hv1) _)
  have hi := polynomial_identity i v
  rw [show ((i.val : ℝ) + v) / 16 = u by dsimp [v]; ring] at hi
  have hupp : (∑ j : Fin 7, (coefficients i j : ℝ) * basis j v) ≤
      ∑ j : Fin 7, (16777216 * cap i) * (binomialWeight j : ℝ) * basis j v := by
    apply Finset.sum_le_sum
    intro j _
    exact mul_le_mul_of_nonneg_right (coefficient_bounds i j).2 (hb j)
  have hlo : (∑ j : Fin 7, -(16777216 * cap i) * (binomialWeight j : ℝ) * basis j v) ≤
      ∑ j : Fin 7, (coefficients i j : ℝ) * basis j v := by
    apply Finset.sum_le_sum
    intro j _
    exact mul_le_mul_of_nonneg_right (coefficient_bounds i j).1 (hb j)
  have su : (∑ j : Fin 7, (16777216 * cap i) * (binomialWeight j : ℝ) * basis j v) =
      16777216 * cap i := by
    simp_rw [mul_assoc]
    rw [← Finset.mul_sum, partition_identity, mul_one]
  have sl : (∑ j : Fin 7, -(16777216 * cap i) * (binomialWeight j : ℝ) * basis j v) =
      -(16777216 * cap i) := by
    simp_rw [mul_assoc]
    rw [← Finset.mul_sum, partition_identity, mul_one]
  rw [hi, su] at hupp
  rw [hi, sl] at hlo
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- This includes t=1 and t=2: the actual kernel has matching endpoint values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `272826d83468df6ccbf39c6a239ef587b332aea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
