# subpolynomialBoundaryQuadraticEnergyProduct_of_localized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:713b8cbe-12c1-cf67-8f83-35676f176fae",
  "kind": "theorem",
  "lexical_name": "subpolynomialBoundaryQuadraticEnergyProduct_of_localized",
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
  "slug": "subpolynomialboundaryquadraticenergyproduct-of-localized--7a9abdd44a3bddb8509f0f3f",
  "source": {
    "blob": "e052eba4172554145d40aa7f8a22ba430dba1a5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 125,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a9abdd44a3bddb8509f0f3ff34e851a66a022bed91803c3b78c7f6b3856feba",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:713b8cbe-12c1-cf67-8f83-35676f176fae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpolynomialBoundaryQuadraticEnergyProduct_of_localized
    (hLocalized : SubpolynomialBoundaryLocalizedMertensSquareEnergy) :
    SubpolynomialBoundaryQuadraticEnergyProduct := by
  intro δ hδ
  obtain ⟨C, hC, hE⟩ := hLocalized δ hδ
  refine ⟨2 * C, mul_nonneg (by norm_num) hC, ?_⟩
  intro j
  by_cases hj : j < 2
  · rw [boundaryTailSquareEnergy_eq_zero_of_lt_two hj]
    simp
    positivity
  · have hj2 : 2 ≤ j := Nat.le_of_not_gt hj
    have hHX :
        logarithmicShiftThreshold j ≤ 2 ^ j := by
      unfold logarithmicShiftThreshold
      exact nat_add_two_le_two_pow_of_two_le hj2
    let X : ℝ := ((2 ^ j : ℕ) : ℝ)
    have hX : 0 < X := by
      dsimp [X]
      positivity
    have hW :
        boundaryMovingWindowSquareEnergy j ≤
          2 * boundaryLocalizedMertensSquareEnergy j :=
      boundaryMovingWindowSquareEnergy_le_localized j
    have hT :
        boundaryTailSquareEnergy j ≤
          2 * boundaryLocalizedMertensSquareEnergy j :=
      boundaryTailSquareEnergy_le_localized hHX
    have hEnonneg :
        0 ≤ boundaryLocalizedMertensSquareEnergy j := by
      unfold boundaryLocalizedMertensSquareEnergy
      positivity
    have hWnonneg :
        0 ≤ boundaryMovingWindowSquareEnergy j := by
      unfold boundaryMovingWindowSquareEnergy
      positivity
    have hTnonneg :
        0 ≤ boundaryTailSquareEnergy j := by
      unfold boundaryTailSquareEnergy
      positivity
    have hdrop :
        (2 * boundaryTerminalDrop j) ^ 2 ≤ X⁻¹ ^ 4 := by
      simpa [X] using two_mul_boundaryTerminalDrop_sq_le_inv_fourth j
    have hprod :
        boundaryMovingWindowSquareEnergy j *
            boundaryTailSquareEnergy j ≤
          4 * boundaryLocalizedMertensSquareEnergy j ^ 2 := by
      calc
        boundaryMovingWindowSquareEnergy j *
            boundaryTailSquareEnergy j ≤
          (2 * boundaryLocalizedMertensSquareEnergy j) *
            (2 * boundaryLocalizedMertensSquareEnergy j) := by
              exact mul_le_mul hW hT hTnonneg
                (mul_nonneg (by norm_num) hEnonneg)
        _ = 4 * boundaryLocalizedMertensSquareEnergy j ^ 2 := by ring
    calc
      (2 * boundaryTerminalDrop j) ^ 2 *
          boundaryMovingWindowSquareEnergy j *
            boundaryTailSquareEnergy j ≤
        X⁻¹ ^ 4 *
          (4 * boundaryLocalizedMertensSquareEnergy j ^ 2) := by
            exact mul_le_mul hdrop hprod
              (mul_nonneg hWnonneg hTnonneg)
              (by positivity)
      _ ≤ X⁻¹ ^ 4 *
          (4 * (C * X ^ 2 * X ^ δ) ^ 2) := by
            apply mul_le_mul_of_nonneg_left
            · apply mul_le_mul_of_nonneg_left
              · exact (sq_le_sq₀ hEnonneg
                  (mul_nonneg
                    (mul_nonneg hC (by positivity))
                    (by positivity))).2 (hE j)
              · norm_num
            · positivity
      _ = ((2 * C) * X ^ δ) ^ 2 := by
            field_simp [ne_of_gt hX]
            ring
      _ = ((2 * C) * (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2 := by
            rfl

/-- The deterministic normalization adapter from #634 is now constructed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryTerminalNormalization.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e052eba4172554145d40aa7f8a22ba430dba1a5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
