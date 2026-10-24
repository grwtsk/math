# polynomial_quadratic_lower_of_residual_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dc88d13-5291-4007-a5b2-711ee159cef4",
  "kind": "theorem",
  "lexical_name": "polynomial_quadratic_lower_of_residual_tail",
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
  "slug": "polynomial-quadratic-lower-of-residual-tail--e7e64f97d7064f6809a9709b",
  "source": {
    "blob": "cfee2adb4bfdb6d1cfeafcbe5c81934c5f02a510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 113,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf6bdf5734be95e163547a7f97a59996dcbe7c9aea6f205cf7e634a26d5889a47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7e64f97d7064f6809a9709b655d44fc1054fd4d7e68b3a8e953f45b4fd1bb24",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf6bdf5734be95e163547a7f97a59996dcbe7c9aea6f205cf7e634a26d5889a47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dc88d13-5291-4007-a5b2-711ee159cef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_quadratic_lower_of_residual_tail
    (h : PolynomialResidualTailUpperBound) :
    ∃ m : ℕ, ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      0 ≤ sourceQuadraticValue Realization.explicitSecondDerivative A + C * A ^ m := by
  obtain ⟨m, D, hD, R, hR, hb⟩ := h
  obtain ⟨lower, hlower⟩ := bounded_radius_lower R
  let K : ℝ := max 0 (-archimedeanMultiplier 0)
  let B : ℝ := max 0 (-lower)
  let C : ℝ := 2 * D + K + B
  have hK : 0 ≤ K := le_max_left _ _
  have hKarch : -archimedeanMultiplier 0 ≤ K := le_max_right _ _
  have hB : 0 ≤ B := le_max_left _ _
  have hBlower : -lower ≤ B := le_max_right _ _
  have hC : 0 ≤ C := by dsimp [C]; positivity
  refine ⟨m, C, hC, ?_⟩
  intro A hA
  have hpow : 1 ≤ A ^ m := one_le_pow₀ hA
  have hpow0 : 0 ≤ A ^ m := zero_le_one.trans hpow
  by_cases hRA : R ≤ A
  · have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hres := hb A hRA
    have hKpow : K ≤ K * A ^ m := le_mul_of_one_le_right hK hpow
    have hBpow : 0 ≤ B * A ^ m := mul_nonneg hB hpow0
    rw [sourceQuadraticValue_eq_archimedean_sub_residual A hA]
    dsimp [C]
    nlinarith
  · have hprefix := hlower A hA (le_of_lt (lt_of_not_ge hRA))
    have hCpow : C ≤ C * A ^ m := le_mul_of_one_le_right hC hpow
    have hCB : B ≤ C := by dsimp [C]; nlinarith
    linarith

end
end EstimatePolynomialResidual
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf6bdf5734be95e163547a7f97a59996dcbe7c9aea6f205cf7e634a26d5889a47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantf6bdf5734be95e163547a7f97a59996dcbe7c9aea6f205cf7e634a26d5889a47.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfee2adb4bfdb6d1cfeafcbe5c81934c5f02a510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
