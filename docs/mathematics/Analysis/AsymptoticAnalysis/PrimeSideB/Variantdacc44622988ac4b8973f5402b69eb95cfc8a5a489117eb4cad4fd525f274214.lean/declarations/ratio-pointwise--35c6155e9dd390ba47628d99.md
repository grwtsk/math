# ratio_pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "562865ec2246891b67f3fba67e897c39c83cdf16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 682,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b326c1a-0b31-1e4b-70d6-f689a59ae282",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7f415af-2759-f402-fc25-fe77302a98ba",
  "kind": "lemma",
  "lexical_name": "ratio_pointwise",
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
  "slug": "ratio-pointwise--35c6155e9dd390ba47628d99",
  "source": {
    "blob": "562865ec2246891b67f3fba67e897c39c83cdf16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 682,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35c6155e9dd390ba47628d9953ed2bdbd9478b910e4963c26ffc74130bf7215e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7f415af-2759-f402-fc25-fe77302a98ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 682–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ratio_pointwise (T L ℓ lT E N G G2 A C₁ C₂ : ℝ)
    (hT : 1 ≤ T) (hL : 0 < L) (hℓ1 : 1 ≤ ℓ) (hℓl : lT ≤ ℓ) (hN0 : 0 < N) (hE0 : 0 ≤ E)
    (hET : 1 / T ≤ E) (hA : 0 ≤ A) (hC₁ : 0 ≤ C₁) (hC₂ : 0 ≤ C₂)
    (hs1 : C₁ * E ≤ 1 / 2) (hs2 : C₂ * E ≤ 1 / 2) (hTA : 2 * π * A ≤ T)
    (h1 : |G - L * N| ≤ C₁ * (E * (L * N)))
    (h2 : |G2 - T * L / (2 * π) * (ℓ ^ 2 + L ^ 2 / 3)| ≤ C₂ * (E * (T * L / (2 * π) * (ℓ ^ 2 + L ^ 2 / 3))))
    (hN : |N - T * ℓ / (2 * π)| ≤ A * lT) :
    |G ^ 2 / G2 - Ffun (L / ℓ) * N| ≤ 2 * (2 * π * A + 5 * C₁ + C₂) * (E * (Ffun (L / ℓ) * N)) := by
  have hπ : 0 < π := Real.pi_pos
  have hT0 : 0 < T := by linarith only [hT]
  have hℓ0 : 0 < ℓ := by linarith only [hℓ1]
  set M₂ := T * L / (2 * π) * (ℓ ^ 2 + L ^ 2 / 3) with hM₂def
  have hM0 : 0 < M₂ := by positivity
  set Φ₀ := Ffun (L / ℓ) * N with hΦ₀def
  have hF0 : 0 < Ffun (L / ℓ) := by unfold Ffun; positivity
  have hΦ0 : 0 < Φ₀ := mul_pos hF0 hN0
  have key : Φ₀ * M₂ = L ^ 2 * N * (T * ℓ / (2 * π)) := by
    simp only [hΦ₀def, hM₂def, Ffun]
    field_simp
  set a := G - L * N with hadef
  set bb := G2 - M₂ with hbbdef
  set δ := N - T * ℓ / (2 * π) with hδdef
  have hbb : |bb| ≤ C₂ * (E * M₂) := h2
  have hG2low : M₂ / 2 ≤ G2 := by
    have : -(C₂ * (E * M₂)) ≤ bb := (abs_le.mp hbb).1
    have : C₂ * (E * M₂) ≤ 1 / 2 * M₂ := by
      rw [← mul_assoc]; exact mul_le_mul_of_nonneg_right hs2 hM0.le
    linarith only [‹-(C₂ * (E * M₂)) ≤ bb›, this, hbbdef]
  have hG2pos : 0 < G2 := lt_of_lt_of_le (by positivity) hG2low
  -- the algebraic identity
  have hid : G ^ 2 - Φ₀ * G2 = L ^ 2 * N * δ + 2 * (L * N) * a + a ^ 2 - Φ₀ * bb := by
    have hG : G = L * N + a := by rw [hadef]; ring
    have hG2 : G2 = M₂ + bb := by rw [hbbdef]; ring
    rw [hG, hG2, hδdef]
    linear_combination (-1 : ℝ) * key
  -- (L N)² ≤ 2 Φ₀ M₂
  have hLN0 : 0 ≤ L * N := by positivity
  have hNup : N ≤ T * ℓ / (2 * π) + A * ℓ := by
    have := (abs_le.mp hN).2
    nlinarith only [this, hℓl, hA]
  have hLN2 : (L * N) ^ 2 ≤ 2 * (Φ₀ * M₂) := by
    rw [key]
    have h' : (L * N) ^ 2 = L ^ 2 * N * N := by ring
    rw [h']
    have hc : L ^ 2 * N * N ≤ L ^ 2 * N * (T * ℓ / (2 * π) + A * ℓ) :=
      mul_le_mul_of_nonneg_left hNup (by positivity)
    have hd : L ^ 2 * N * (A * ℓ) ≤ L ^ 2 * N * (T * ℓ / (2 * π)) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      rw [le_div_iff₀ (by positivity)]
      nlinarith only [hTA, hℓ0, hA]
    nlinarith only [hc, hd]
  -- the four bounds
  have t1 : |L ^ 2 * N * δ| ≤ 2 * π * A * (E * (Φ₀ * M₂)) := by
    rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ L ^ 2 * N)]
    calc L ^ 2 * N * |δ| ≤ L ^ 2 * N * (A * ℓ) := by
          apply mul_le_mul_of_nonneg_left _ (by positivity)
          exact hN.trans (mul_le_mul_of_nonneg_left hℓl hA)
      _ = 2 * π * A * ((1 / T) * (Φ₀ * M₂)) := by rw [key]; field_simp
      _ ≤ 2 * π * A * (E * (Φ₀ * M₂)) := by gcongr
  have t2 : |2 * (L * N) * a| ≤ 4 * C₁ * (E * (Φ₀ * M₂)) := by
    rw [abs_mul, abs_of_nonneg (by positivity : 0 ≤ 2 * (L * N))]
    calc 2 * (L * N) * |a| ≤ 2 * (L * N) * (C₁ * (E * (L * N))) := by gcongr
      _ = 2 * C₁ * E * (L * N) ^ 2 := by ring
      _ ≤ 2 * C₁ * E * (2 * (Φ₀ * M₂)) := by gcongr
      _ = 4 * C₁ * (E * (Φ₀ * M₂)) := by ring
  have t3 : |a ^ 2| ≤ C₁ * (E * (Φ₀ * M₂)) := by
    rw [abs_pow]
    calc |a| ^ 2 ≤ (C₁ * (E * (L * N))) ^ 2 := by gcongr
      _ = (C₁ * E) * (C₁ * E) * (L * N) ^ 2 := by ring
      _ ≤ (C₁ * E) * (1 / 2) * (2 * (Φ₀ * M₂)) := by gcongr
      _ = C₁ * (E * (Φ₀ * M₂)) := by ring
  have t4 : |Φ₀ * bb| ≤ C₂ * (E * (Φ₀ * M₂)) := by
    rw [abs_mul, abs_of_pos hΦ0]
    calc Φ₀ * |bb| ≤ Φ₀ * (C₂ * (E * M₂)) := by gcongr
      _ = C₂ * (E * (Φ₀ * M₂)) := by ring
  have hnum : |G ^ 2 - Φ₀ * G2| ≤ (2 * π * A + 5 * C₁ + C₂) * (E * (Φ₀ * M₂)) := by
    rw [hid]
    calc |L ^ 2 * N * δ + 2 * (L * N) * a + a ^ 2 - Φ₀ * bb|
        ≤ |L ^ 2 * N * δ| + |2 * (L * N) * a| + |a ^ 2| + |Φ₀ * bb| := by
          refine (abs_sub _ _).trans ?_
          linarith only [abs_add_three (L ^ 2 * N * δ) (2 * (L * N) * a) (a ^ 2)]
      _ ≤ 2 * π * A * (E * (Φ₀ * M₂)) + 4 * C₁ * (E * (Φ₀ * M₂)) + C₁ * (E * (Φ₀ * M₂))
          + C₂ * (E * (Φ₀ * M₂)) := by gcongr
      _ = (2 * π * A + 5 * C₁ + C₂) * (E * (Φ₀ * M₂)) := by ring
  -- divide by G2 ≥ M₂/2
  have hq : G ^ 2 / G2 - Φ₀ = (G ^ 2 - Φ₀ * G2) / G2 := by
    field_simp
  rw [hq, abs_div, abs_of_pos hG2pos, div_le_iff₀ hG2pos]
  calc |G ^ 2 - Φ₀ * G2| ≤ (2 * π * A + 5 * C₁ + C₂) * (E * (Φ₀ * M₂)) := hnum
    _ = 2 * (2 * π * A + 5 * C₁ + C₂) * (E * Φ₀) * (M₂ / 2) := by ring
    _ ≤ 2 * (2 * π * A + 5 * C₁ + C₂) * (E * Φ₀) * G2 := by gcongr

/-- [eq:ratio]: `(tr G̃)²/tr G̃² = F(λ₁) N(T,2T)(1 + O(𝓔_T))`, `λ₁ = L/ℓ₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PrimeSideB/Variantdacc44622988ac4b8973f5402b69eb95cfc8a5a489117eb4cad4fd525f274214.lean#L682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `562865ec2246891b67f3fba67e897c39c83cdf16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
