# psiAtThreshold_to_energyAtThreshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a842784d-4285-1728-306b-e4ebd14c0648",
  "kind": "theorem",
  "lexical_name": "psiAtThreshold_to_energyAtThreshold",
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
  "slug": "psiatthreshold-to-energyatthreshold--3963562b0ae6b21f2c8b7b78",
  "source": {
    "blob": "f7ed85d75ce10b1b3a1803aad500ab070607110c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3963562b0ae6b21f2c8b7b789098b88a1de61049ad08f0737738e075759d4894",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a842784d-4285-1728-306b-e4ebd14c0648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiAtThreshold_to_energyAtThreshold
    {ρ : ℝ} (hψ : AllDyadicPsiAtThreshold ρ) :
    AllDyadicEnergyAtThreshold ρ := by
  intro η hη
  obtain ⟨C, hC, j₀, hbound⟩ := hψ η hη
  let D : ℝ := 96 * C^2
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D, hD, j₀, ?_⟩
  intro j hj
  let X : ℕ := dyadicScale j
  let T : ℝ := Real.rpow (X : ℝ) (ρ + η / 2)
  let A : ℝ := C * T
  have hX : 0 < X := dyadicScale_pos j
  have hX2 : 2 ≤ X := by
    dsimp [X, dyadicScale]
    omega
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hA0 : 0 ≤ A := by
    dsimp [A, T]
    positivity
  have henv : PsiOctaveEnvelope X A := by
    refine ⟨hA0, ?_⟩
    intro u hu
    have hb := hbound j hj u (by simpa [X] using hu)
    dsimp [A, T, X] at *
    linarith
  have hA1 : 1 ≤ A := by
    have hb := hbound j hj (X : ℝ) (by
      constructor
      · exact le_rfl
      · exact_mod_cast (by omega : X ≤ 2 * X))
    dsimp [A, T, X] at *
    linarith
  have henergy := augmentedEnergy_le_of_psiEnvelope hX2 henv
  have hnumer : 3 * A + 1 ≤ 4 * A := by linarith
  have hratio :
      (3 * A + 1) / (X : ℝ) ≤ 4 * A / (X : ℝ) :=
    div_le_div_of_nonneg_right hnumer hXr.le
  have hsquare :
      ((3 * A + 1) / (X : ℝ))^2 ≤
        (4 * A / (X : ℝ))^2 := by
    exact (sq_le_sq₀ (by positivity) (by positivity)).2 hratio
  have hcoarse :
      augmentedEnergy X ≤ 6 * (4 * A / (X : ℝ))^2 :=
    henergy.trans
      (mul_le_mul_of_nonneg_left hsquare (by norm_num))
  have hpow :
      (T / (X : ℝ))^2 =
        Real.rpow (X : ℝ)
          (-2 * (1 - ρ) + η) := by
    dsimp [T]
    rw [div_pow]
    rw [← Real.rpow_two]
    rw [← Real.rpow_mul hXr.le]
    rw [show ((X : ℝ)^2) = Real.rpow (X : ℝ) 2 by
      rw [Real.rpow_natCast]]
    rw [← Real.rpow_sub hXr]
    congr 1
    ring
  dsimp [D, A]
  calc
    augmentedEnergy X
        ≤ 6 * (4 * (C * T) / (X : ℝ))^2 := hcoarse
    _ = 96 * C^2 * (T / (X : ℝ))^2 := by ring
    _ = 96 * C^2 *
        Real.rpow (X : ℝ)
          (-2 * (1 - ρ) + η) := by
      rw [hpow]
    _ = D * Real.rpow (X : ℝ)
          (-2 * (1 - ρ) + η) := by
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7ed85d75ce10b1b3a1803aad500ab070607110c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
