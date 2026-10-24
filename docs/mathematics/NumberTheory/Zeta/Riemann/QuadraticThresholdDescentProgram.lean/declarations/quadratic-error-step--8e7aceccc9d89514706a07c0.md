# quadratic_error_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a26e23c8-1814-e5d3-02f6-c0abec14057d",
  "kind": "theorem",
  "lexical_name": "quadratic_error_step",
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
  "slug": "quadratic-error-step--8e7aceccc9d89514706a07c0",
  "source": {
    "blob": "5fc2870529fabda8b556755c2f6dcf8f694660d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 85,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e7aceccc9d89514706a07c0fdfbbbea667314dca13678f0d13f262232b68ec4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a26e23c8-1814-e5d3-02f6-c0abec14057d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_error_step
    {x A B C K R ρ δ : ℝ}
    (hx : 0 < x)
    (hA0 : 0 ≤ A) (hC : 0 ≤ C)
    (hK : 0 ≤ K) (_hR : 0 ≤ R)
    (hA : A ≤ C * Real.rpow x (ρ + δ))
    (hB :
      B ≤ K * A^2 / x +
        R * Real.rpow x
          (quadraticThreshold ρ + 2 * δ)) :
    B ≤ (K * C^2 + R) *
      Real.rpow x
        (quadraticThreshold ρ + 2 * δ) := by
  have hpow0 :
      0 ≤ Real.rpow x (ρ + δ) :=
    Real.rpow_nonneg hx.le _
  have hCrpow :
      0 ≤ C * Real.rpow x (ρ + δ) := by
    positivity
  have hA2 :
      A^2 ≤
        C^2 * (Real.rpow x (ρ + δ))^2 := by
    have hs :=
      (sq_le_sq₀ hA0 hCrpow).2 hA
    simpa [mul_pow] using hs
  have hquad :
      K * A^2 / x ≤
        K * C^2 *
          Real.rpow x
            (quadraticThreshold ρ + 2 * δ) := by
    calc
      K * A^2 / x
          ≤ K *
              (C^2 * (Real.rpow x (ρ + δ))^2) /
              x := by
        exact div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left hA2 hK)
          hx.le
      _ = K * C^2 *
          Real.rpow x
            (quadraticThreshold ρ + 2 * δ) := by
        rw [← quadratic_power_identity hx]
        ring
  calc
    B ≤ K * A^2 / x +
        R * Real.rpow x
          (quadraticThreshold ρ + 2 * δ) := hB
    _ ≤ K * C^2 *
          Real.rpow x
            (quadraticThreshold ρ + 2 * δ) +
        R * Real.rpow x
          (quadraticThreshold ρ + 2 * δ) :=
      add_le_add hquad le_rfl
    _ = (K * C^2 + R) *
        Real.rpow x
          (quadraticThreshold ρ + 2 * δ) := by
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc2870529fabda8b556755c2f6dcf8f694660d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
