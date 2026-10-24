# exists_fejerHigherPrimePowerCorrectionMass_rpow_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6a4f7a5-5b94-944c-4197-8f2b25e68dcd",
  "kind": "theorem",
  "lexical_name": "exists_fejerHigherPrimePowerCorrectionMass_rpow_bound",
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
  "slug": "exists-fejerhigherprimepowercorrectionmass-rpow-bound--2a83188e97f810048694f6db",
  "source": {
    "blob": "c0157897853716e8630663f1f070cd3050ee87d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 314,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a83188e97f810048694f6db1075828d70eb1079bfca9128b26872d590cc6893",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6a4f7a5-5b94-944c-4197-8f2b25e68dcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_fejerHigherPrimePowerCorrectionMass_rpow_bound :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ X : ℕ,
        fejerHigherPrimePowerCorrectionMass X ≤
          C * Real.rpow (X : ℝ) ((1 : ℝ) / 2) := by
  rcases Chebyshev.psi_sub_theta_le_mul_sqrt with ⟨C, hC⟩
  refine ⟨2 * |C|, mul_nonneg (by norm_num) (abs_nonneg C), ?_⟩
  intro X
  have hpsi :=
    hC (((4 * X : ℕ) : ℝ))
  have hsqrt :
      Real.sqrt (((4 * X : ℕ) : ℝ)) =
        2 * Real.rpow (X : ℝ) ((1 : ℝ) / 2) := by
    rw [show (((4 * X : ℕ) : ℝ)) =
      (4 : ℝ) * (X : ℝ) by norm_num]
    rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 4)]
    norm_num [Real.sqrt_eq_rpow]
  calc
    fejerHigherPrimePowerCorrectionMass X
      ≤
    Chebyshev.psi (((4 * X : ℕ) : ℝ)) -
      Chebyshev.theta (((4 * X : ℕ) : ℝ)) :=
        fejerHigherPrimePowerCorrectionMass_le_psi_sub_theta X
    _ ≤ C * Real.sqrt (((4 * X : ℕ) : ℝ)) := hpsi
    _ ≤ |C| * Real.sqrt (((4 * X : ℕ) : ℝ)) := by
      exact mul_le_mul_of_nonneg_right
        (le_abs_self C) (Real.sqrt_nonneg _)
    _ = (2 * |C|) *
        Real.rpow (X : ℝ) ((1 : ℝ) / 2) := by
      rw [hsqrt]
      ring

/-- Total weighted correction mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0157897853716e8630663f1f070cd3050ee87d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
