# classicalThetaSqrtLogSqBound_to_thetaOctave

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72195dfd-c0e6-25de-5768-c1c94fc09681",
  "kind": "theorem",
  "lexical_name": "classicalThetaSqrtLogSqBound_to_thetaOctave",
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
  "slug": "classicalthetasqrtlogsqbound-to-thetaoctave--32c769ce11ac39dcf1c1b96b",
  "source": {
    "blob": "264730f1e44045cd27e7084a286fc99692635206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 66,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32c769ce11ac39dcf1c1b96bb19208e8f81ffcccf18d2648bb9dd3e0104bfe00",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72195dfd-c0e6-25de-5768-c1c94fc09681`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classicalThetaSqrtLogSqBound_to_thetaOctave
    (hclassical : ClassicalThetaSqrtLogSqBound) :
    AllDyadicThetaOctaveSquareRootBound := by
  obtain ⟨C₀, hC₀, x₀, hθ⟩ := hclassical
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
  let C : ℝ := 1 + C₀ * Real.rpow 2 (1 / 2 + δ)
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
    filter_upwards [hscale.eventually_ge_atTop x₀,
      hscale.eventually_ge_atTop L,
      hscale.eventually_ge_atTop 1] with j h1 h2 h3
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
  have htheta :
      |thetaError u| ≤
        C₀ * Real.sqrt u * (Real.log u)^2 :=
    hθ u (hXx0.trans huX)
  have hlog :
      (Real.log u)^2 ≤ Real.rpow u δ :=
    hL u (hXL.trans huX)
  have hpowu :
      Real.sqrt u * (Real.log u)^2 ≤
        Real.rpow u (1 / 2 + δ) := by
    rw [Real.sqrt_eq_rpow, ← Real.rpow_add (by linarith [hu1])]
    exact mul_le_mul_of_nonneg_left hlog
      (Real.rpow_nonneg (by linarith [hu1]) _)
  have hpow2X :
      Real.rpow u (1 / 2 + δ) ≤
        Real.rpow (2 * (X : ℝ)) (1 / 2 + δ) := by
    exact Real.rpow_le_rpow (by linarith [hu1]) hu2X
      (by dsimp [δ]; linarith)
  have hsplit :
      Real.rpow (2 * (X : ℝ)) (1 / 2 + δ) =
        Real.rpow 2 (1 / 2 + δ) *
          Real.rpow (X : ℝ) (1 / 2 + δ) := by
    rw [Real.mul_rpow (by norm_num : 0 ≤ (2 : ℝ))
      (by linarith [hX1])]
  have hthetaX :
      |thetaError u| ≤
        C₀ * Real.rpow 2 (1 / 2 + δ) *
          Real.rpow (X : ℝ) (1 / 2 + δ) := by
    calc
      |thetaError u|
          ≤ C₀ * (Real.sqrt u * (Real.log u)^2) := htheta
      _ ≤ C₀ * Real.rpow u (1 / 2 + δ) :=
        mul_le_mul_of_nonneg_left hpowu hC₀
      _ ≤ C₀ * Real.rpow (2 * (X : ℝ)) (1 / 2 + δ) :=
        mul_le_mul_of_nonneg_left hpow2X hC₀
      _ = _ := by rw [hsplit]; ring
  have hsmallExp :
      1 / 2 + δ ≤ 1 / 2 + η / 2 := by
    dsimp [δ]
    linarith
  have hpowmono :
      Real.rpow (X : ℝ) (1 / 2 + δ) ≤
        Real.rpow (X : ℝ) (1 / 2 + η / 2) :=
    Real.rpow_le_rpow_of_exponent_le hX1 hsmallExp
  have hone :
      1 ≤ Real.rpow (X : ℝ) (1 / 2 + η / 2) :=
    Real.one_le_rpow hX1 (by linarith)
  have htargetEq :
      (X : ℝ) *
          Real.sqrt (Real.rpow (X : ℝ) (-1 + η)) =
        Real.rpow (X : ℝ) (1 / 2 + η / 2) := by
    have hXp : (0 : ℝ) < (X : ℝ) := lt_of_lt_of_le zero_lt_one hX1
    rw [Real.sqrt_eq_rpow,
      ← Real.rpow_mul hXp.le]
    rw [show (1 : ℝ) / 2 * (-1 + η) =
      (-1 + η) / 2 by ring]
    rw [← Real.rpow_one (X : ℝ),
      ← Real.rpow_add hXp]
    congr 1
    ring
  have hthetaTarget :
      |thetaError u| ≤
        (C - 1) *
          Real.rpow (X : ℝ) (1 / 2 + η / 2) := by
    dsimp [C]
    calc
      |thetaError u|
          ≤ C₀ * Real.rpow 2 (1 / 2 + δ) *
              Real.rpow (X : ℝ) (1 / 2 + δ) := hthetaX
      _ ≤ C₀ * Real.rpow 2 (1 / 2 + δ) *
              Real.rpow (X : ℝ) (1 / 2 + η / 2) :=
        mul_le_mul_of_nonneg_left hpowmono (by positivity)
      _ = (C - 1) *
          Real.rpow (X : ℝ) (1 / 2 + η / 2) := by
        dsimp [C]
        ring
  calc
    |thetaError u| + 1
        ≤ (C - 1) *
            Real.rpow (X : ℝ) (1 / 2 + η / 2) +
          Real.rpow (X : ℝ) (1 / 2 + η / 2) :=
      add_le_add hthetaTarget hone
    _ = C * Real.rpow (X : ℝ) (1 / 2 + η / 2) := by ring
    _ = C * (X : ℝ) *
        Real.sqrt (Real.rpow (X : ℝ) (-1 + η)) := by
      rw [htargetEq]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaVonKochAdapter.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `264730f1e44045cd27e7084a286fc99692635206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
