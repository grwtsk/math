# quadraticThetaSourceRecurrence_to_descent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34de7e6b-676b-dd1c-2017-8aa60e4810c0",
  "kind": "theorem",
  "lexical_name": "quadraticThetaSourceRecurrence_to_descent",
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
  "slug": "quadraticthetasourcerecurrence-to-descent--4afc3ef879e5ce1b52306bb6",
  "source": {
    "blob": "b268ab0d5c87ab2dd308da2bbc174ac3fccefede",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4afc3ef879e5ce1b52306bb6a3391f84354bd1e7376ac6595585e0dad4b4ace8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34de7e6b-676b-dd1c-2017-8aa60e4810c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticThetaSourceRecurrence_to_descent
    {ρ : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hrec : QuadraticThetaSourceRecurrenceAt ρ) :
    QuadraticThetaDescentAt ρ := by
  intro hθ η hη
  have hη2 : 0 < η / 2 := by linarith
  obtain ⟨C, hC, jθ, hθbound⟩ := hθ (η / 2) hη2
  obtain ⟨K, hK, R, hR, jr, hstep⟩ := hrec η hη
  let D : ℝ := K * C^2 + R
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  let j₀ : ℕ := max jθ jr + 1
  refine ⟨D, hD, j₀, ?_⟩
  intro n hn v hv
  have hnpos : 0 < n := by
    dsimp [j₀] at hn
    omega
  let j : ℕ := n - 1
  have hjSucc : j + 1 = n := by
    dsimp [j]
    omega
  have hjθ : jθ ≤ j := by
    dsimp [j₀, j] at hn
    omega
  have hjr : jr ≤ j := by
    dsimp [j₀, j] at hn
    omega
  let X : ℕ := dyadicScale j
  let A : ℝ :=
    C * Real.rpow (X : ℝ) (ρ + η / 4)
  have hX : 0 < X := by
    dsimp [X, dyadicScale]
    positivity
  have hXr : (0 : ℝ) < (X : ℝ) := by
    exact_mod_cast hX
  have hA0 : 0 ≤ A := by
    dsimp [A]
    positivity
  have hAenv :
      ∀ u ∈ Set.Icc ((X : ℕ) : ℝ) ((2 * X : ℕ) : ℝ),
        |thetaError u| + 1 ≤ A := by
    intro u hu
    have hb := hθbound j hjθ u (by
      simpa [X] using hu)
    dsimp [A, X] at *
    have hexp :
        ρ + (η / 2) / 2 = ρ + η / 4 := by ring
    simpa [hexp] using hb
  have hnext :
      |thetaError v| + 1 ≤
        K * A^2 / (X : ℝ) +
          R * Real.rpow (X : ℝ)
            (quadraticThreshold ρ + η / 2) := by
    have hs :=
      hstep j hjr A hA0 hAenv v
        (by simpa [X, hjSucc] using hv)
    simpa [X] using hs
  have hquad :
      |thetaError v| + 1 ≤
        D * Real.rpow (X : ℝ)
          (quadraticThreshold ρ + η / 2) := by
    have hA :
        A ≤ C * Real.rpow (X : ℝ) (ρ + η / 4) :=
      le_rfl
    have hδ : 2 * (η / 4) = η / 2 := by ring
    have h :=
      quadratic_error_step
        hXr hA0 hC hK hR hA (by simpa only [hδ] using hnext)
    simpa only [hδ, D] using h
  have htargetExp :
      0 ≤ quadraticThreshold ρ + η / 2 := by
    have hhalf := half_le_quadraticThreshold hρ
    linarith
  have hscale :
      (X : ℝ) ≤ (dyadicScale n : ℝ) := by
    rw [← hjSucc, dyadicScale_succ_eq_two_mul]
    dsimp [X]
    push_cast
    have hp : (0 : ℝ) ≤ dyadicScale j := Nat.cast_nonneg _
    linarith
  have hpow :
      Real.rpow (X : ℝ)
          (quadraticThreshold ρ + η / 2) ≤
        Real.rpow (dyadicScale n : ℝ)
          (quadraticThreshold ρ + η / 2) :=
    Real.rpow_le_rpow
      (by exact_mod_cast hX.le)
      hscale htargetExp
  exact hquad.trans
    (mul_le_mul_of_nonneg_left hpow hD)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaRecurrenceSupplier.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b268ab0d5c87ab2dd308da2bbc174ac3fccefede` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
