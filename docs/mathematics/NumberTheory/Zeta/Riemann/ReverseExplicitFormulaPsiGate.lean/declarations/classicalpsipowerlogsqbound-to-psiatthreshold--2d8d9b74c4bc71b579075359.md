# classicalPsiPowerLogSqBound_to_psiAtThreshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7ce9b9b-6814-7c2b-86b7-3c4e539253a7",
  "kind": "theorem",
  "lexical_name": "classicalPsiPowerLogSqBound_to_psiAtThreshold",
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
  "slug": "classicalpsipowerlogsqbound-to-psiatthreshold--2d8d9b74c4bc71b579075359",
  "source": {
    "blob": "1563ac22421e936af1012ebfc5405b4f14c0f6d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 38,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d8d9b74c4bc71b57907535992454303f4de759881ae04a2fde831361bee3217",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7ce9b9b-6814-7c2b-86b7-3c4e539253a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classicalPsiPowerLogSqBound_to_psiAtThreshold
    {ρ : ℝ} (hρ : 0 ≤ ρ)
    (hclassical : ClassicalPsiPowerLogSqBound ρ) :
    AllDyadicPsiAtThreshold ρ := by
  obtain ⟨C₀, hC₀, x₀, hψ⟩ := hclassical
  intro η hη
  let δ : ℝ := η / 4
  have hδ : 0 < δ := by
    dsimp [δ]
    linarith
  obtain ⟨L, hL⟩ :
      ∃ L : ℝ, ∀ x ≥ L,
        (Real.log x)^2 ≤ Real.rpow x δ := by
    simpa only [eventually_atTop] using
      (eventually_log_sq_le_rpow hδ)
  let C : ℝ :=
    1 + C₀ * Real.rpow 2 (ρ + δ)
  have hC : 0 ≤ C := by
    dsimp [C]
    positivity
  have hscale :
      Tendsto (fun j : ℕ => (dyadicScale j : ℝ))
        atTop atTop := by
    unfold dyadicScale
    exact_mod_cast
      tendsto_pow_atTop_atTop_of_one_lt
        (by norm_num : 1 < (2 : ℕ))
  obtain ⟨j₀, hx0j, hLj, h1j⟩ :
      ∃ j₀ : ℕ,
        x₀ ≤ (dyadicScale j₀ : ℝ) ∧
        L ≤ (dyadicScale j₀ : ℝ) ∧
        1 ≤ (dyadicScale j₀ : ℝ) := by
    filter_upwards
      [hscale.eventually_ge_atTop x₀,
       hscale.eventually_ge_atTop L,
       hscale.eventually_ge_atTop 1]
      with j h1 h2 h3
    exact ⟨j, h1, h2, h3⟩
  refine ⟨C, hC, j₀, ?_⟩
  intro j hj u hu
  let X : ℕ := dyadicScale j
  have hXmono : dyadicScale j₀ ≤ X := by
    dsimp [X, dyadicScale]
    exact pow_le_pow_right₀ (by norm_num : 0 ≤ (2 : ℕ))
      (Nat.add_le_add_right hj 1)
  have hXx0 : x₀ ≤ (X : ℝ) :=
    hx0j.trans (by exact_mod_cast hXmono)
  have hXL : L ≤ (X : ℝ) :=
    hLj.trans (by exact_mod_cast hXmono)
  have hX1 : (1 : ℝ) ≤ (X : ℝ) :=
    h1j.trans (by exact_mod_cast hXmono)
  have huX : (X : ℝ) ≤ u := hu.1
  have hu2X : u ≤ 2 * (X : ℝ) := by
    simpa using hu.2
  have hu1 : 1 ≤ u := hX1.trans huX
  have hψu :
      |psiError u| ≤
        C₀ * Real.rpow u ρ * (Real.log u)^2 :=
    hψ u (hXx0.trans huX)
  have hlog :
      (Real.log u)^2 ≤ Real.rpow u δ :=
    hL u (hXL.trans huX)
  have hprod :
      Real.rpow u ρ * (Real.log u)^2 ≤
        Real.rpow u (ρ + δ) := by
    rw [← Real.rpow_add (by linarith [hu1])]
    exact mul_le_mul_of_nonneg_left hlog
      (Real.rpow_nonneg (by linarith [hu1]) _)
  have hpow2X :
      Real.rpow u (ρ + δ) ≤
        Real.rpow (2 * (X : ℝ)) (ρ + δ) := by
    exact Real.rpow_le_rpow
      (by linarith [hu1]) hu2X
      (by linarith)
  have hsplit :
      Real.rpow (2 * (X : ℝ)) (ρ + δ) =
        Real.rpow 2 (ρ + δ) *
          Real.rpow (X : ℝ) (ρ + δ) := by
    rw [Real.mul_rpow
      (by norm_num : 0 ≤ (2 : ℝ))
      (by linarith [hX1])]
  have hψX :
      |psiError u| ≤
        C₀ * Real.rpow 2 (ρ + δ) *
          Real.rpow (X : ℝ) (ρ + δ) := by
    calc
      |psiError u|
          ≤ C₀ * (Real.rpow u ρ *
              (Real.log u)^2) := hψu
      _ ≤ C₀ * Real.rpow u (ρ + δ) :=
        mul_le_mul_of_nonneg_left hprod hC₀
      _ ≤ C₀ * Real.rpow (2 * (X : ℝ)) (ρ + δ) :=
        mul_le_mul_of_nonneg_left hpow2X hC₀
      _ = _ := by rw [hsplit]; ring
  have hsmall :
      ρ + δ ≤ ρ + η / 2 := by
    dsimp [δ]
    linarith
  have hpowmono :
      Real.rpow (X : ℝ) (ρ + δ) ≤
        Real.rpow (X : ℝ) (ρ + η / 2) :=
    Real.rpow_le_rpow_of_exponent_le hX1 hsmall
  have hone :
      1 ≤ Real.rpow (X : ℝ) (ρ + η / 2) :=
    Real.one_le_rpow hX1 (by linarith)
  have hψtarget :
      |psiError u| ≤
        (C - 1) *
          Real.rpow (X : ℝ) (ρ + η / 2) := by
    dsimp [C]
    calc
      |psiError u|
          ≤ C₀ * Real.rpow 2 (ρ + δ) *
              Real.rpow (X : ℝ) (ρ + δ) := hψX
      _ ≤ C₀ * Real.rpow 2 (ρ + δ) *
              Real.rpow (X : ℝ) (ρ + η / 2) :=
        mul_le_mul_of_nonneg_left hpowmono (by positivity)
      _ = (C - 1) *
          Real.rpow (X : ℝ) (ρ + η / 2) := by
        dsimp [C]
        ring
  calc
    |psiError u| + 1
        ≤ (C - 1) *
            Real.rpow (X : ℝ) (ρ + η / 2) +
          Real.rpow (X : ℝ) (ρ + η / 2) :=
      add_le_add hψtarget hone
    _ = C * Real.rpow (X : ℝ) (ρ + η / 2) := by
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1563ac22421e936af1012ebfc5405b4f14c0f6d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
