# ratioD_pointwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bfd1870e7ee5227d0d98bdea570bfc4853c9ca4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7aab2f58-1934-d502-37f8-6ea0af03834f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d458d054-9289-1bd8-2a5b-b148d3a1dc6f",
  "kind": "theorem",
  "lexical_name": "ratioD_pointwise",
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
  "slug": "ratiod-pointwise--6ab67d5cc97da14729040f95",
  "source": {
    "blob": "0bfd1870e7ee5227d0d98bdea570bfc4853c9ca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 193,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ab67d5cc97da14729040f95fb52a75d7efd16e88b14bb1bda07665ae2d80d47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d458d054-9289-1bd8-2a5b-b148d3a1dc6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ratioD_pointwise (T L ℓ lT E N G G2 A aa b J C₁ C₂ : ℝ)
    (hT : 1 ≤ T) (hL : 0 < L) (hℓ1 : 1 ≤ ℓ) (hℓl : lT ≤ ℓ) (hN0 : 0 < N) (hE0 : 0 ≤ E)
    (hET : 1 / T ≤ E) (hA : 0 ≤ A) (hC₁ : 0 ≤ C₁) (hC₂ : 0 ≤ C₂)
    (ha : 1 / 2 ≤ aa) (hb : 1 / 2 ≤ b) (hJ0 : 0 ≤ J)
    (hs1 : C₁ * E ≤ 1 / 2) (hs2 : C₂ * E ≤ 1 / 2) (hTA : 2 * π * A ≤ T)
    (h1 : |G - aa * L * N| ≤ C₁ * (E * (aa * L * N)))
    (h2 : |G2 - T * L / (2 * π) * (b * ℓ ^ 2 + L ^ 2 * J)|
      ≤ C₂ * (E * (T * L / (2 * π) * (b * ℓ ^ 2 + L ^ 2 * J))))
    (hN : |N - T * ℓ / (2 * π)| ≤ A * lT) :
    |G ^ 2 / G2 - cRatio (L / ℓ) aa b J * N|
      ≤ 2 * (2 * π * A + 5 * C₁ + C₂) * (E * (cRatio (L / ℓ) aa b J * N)) := by
  have hπ : 0 < π := Real.pi_pos
  have hT0 : 0 < T := by linarith
  have hℓ0 : 0 < ℓ := by linarith
  have ha0 : 0 < aa := by linarith
  have hb0 : 0 < b := by linarith
  set M₂ := T * L / (2 * π) * (b * ℓ ^ 2 + L ^ 2 * J) with hM₂def
  have hden : 0 < b * ℓ ^ 2 + L ^ 2 * J := by
    have h1' : 0 < b * ℓ ^ 2 := by positivity
    nlinarith [mul_nonneg (sq_nonneg L) hJ0]
  have hM0 : 0 < M₂ := by
    rw [hM₂def]
    positivity
  set Φ₀ := cRatio (L / ℓ) aa b J * N with hΦ₀def
  have hdenR : 0 < b + (L / ℓ) ^ 2 * J := by
    have : 0 ≤ (L / ℓ) ^ 2 * J := by positivity
    linarith
  have hF0 : 0 < cRatio (L / ℓ) aa b J := by
    unfold cRatio
    apply div_pos (by positivity) hdenR
  have hΦ0 : 0 < Φ₀ := mul_pos hF0 hN0
  have key : Φ₀ * M₂ = (aa * L) ^ 2 * N * (T * ℓ / (2 * π)) := by
    rw [hΦ₀def, hM₂def]
    unfold cRatio
    field_simp
    try ring
  set α := G - aa * L * N with hαdef
  set bb := G2 - M₂ with hbbdef
  set δ := N - T * ℓ / (2 * π) with hδdef
  have hbb : |bb| ≤ C₂ * (E * M₂) := h2
  have hG2low : M₂ / 2 ≤ G2 := by
    have hx1 : -(C₂ * (E * M₂)) ≤ bb := (abs_le.mp hbb).1
    have hx2 : C₂ * (E * M₂) ≤ 1 / 2 * M₂ := by
      rw [← mul_assoc]
      exact mul_le_mul_of_nonneg_right hs2 hM0.le
    have hx3 : bb = G2 - M₂ := hbbdef
    linarith
  have hG2pos : 0 < G2 := lt_of_lt_of_le (by positivity) hG2low
  have hid : G ^ 2 - Φ₀ * G2 = (aa * L) ^ 2 * N * δ + 2 * (aa * L * N) * α + α ^ 2 - Φ₀ * bb := by
    have hG : G = aa * L * N + α := by rw [hαdef]; ring
    have hG2 : G2 = M₂ + bb := by rw [hbbdef]; ring
    rw [hG, hG2, hδdef]
    linear_combination (-1 : ℝ) * key
  have hLN0 : 0 ≤ aa * L * N := by positivity
  have hNup : N ≤ T * ℓ / (2 * π) + A * ℓ := by
    have := (abs_le.mp hN).2
    nlinarith
  have hLN2 : (aa * L * N) ^ 2 ≤ 2 * (Φ₀ * M₂) := by
    rw [key]
    have h' : (aa * L * N) ^ 2 = (aa * L) ^ 2 * N * N := by ring
    rw [h']
    have hc : (aa * L) ^ 2 * N * N ≤ (aa * L) ^ 2 * N * (T * ℓ / (2 * π) + A * ℓ) :=
      mul_le_mul_of_nonneg_left hNup (by positivity)
    have hd : (aa * L) ^ 2 * N * (A * ℓ) ≤ (aa * L) ^ 2 * N * (T * ℓ / (2 * π)) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      rw [le_div_iff₀ (by positivity)]
      nlinarith
    nlinarith
  have t1 : |(aa * L) ^ 2 * N * δ| ≤ 2 * π * A * (E * (Φ₀ * M₂)) := by
    rw [abs_mul, abs_of_nonneg (by positivity : (0:ℝ) ≤ (aa * L) ^ 2 * N)]
    calc (aa * L) ^ 2 * N * |δ| ≤ (aa * L) ^ 2 * N * (A * ℓ) := by
          apply mul_le_mul_of_nonneg_left _ (by positivity)
          exact hN.trans (mul_le_mul_of_nonneg_left hℓl hA)
      _ = 2 * π * A * ((1 / T) * ((aa * L) ^ 2 * N * (T * ℓ / (2 * π)))) := by
          field_simp
          try ring
      _ = 2 * π * A * ((1 / T) * (Φ₀ * M₂)) := by rw [key]
      _ ≤ 2 * π * A * (E * (Φ₀ * M₂)) := by
          have h0 : 0 ≤ Φ₀ * M₂ := by positivity
          gcongr
  have t2 : |2 * (aa * L * N) * α| ≤ 4 * C₁ * (E * (Φ₀ * M₂)) := by
    rw [abs_mul, abs_of_nonneg (by positivity : (0:ℝ) ≤ 2 * (aa * L * N))]
    calc 2 * (aa * L * N) * |α| ≤ 2 * (aa * L * N) * (C₁ * (E * (aa * L * N))) := by gcongr
      _ = 2 * C₁ * E * (aa * L * N) ^ 2 := by ring
      _ ≤ 2 * C₁ * E * (2 * (Φ₀ * M₂)) := by gcongr
      _ = 4 * C₁ * (E * (Φ₀ * M₂)) := by ring
  have t3 : |α ^ 2| ≤ C₁ * (E * (Φ₀ * M₂)) := by
    rw [abs_pow]
    calc |α| ^ 2 ≤ (C₁ * (E * (aa * L * N))) ^ 2 := by gcongr
      _ = (C₁ * E) * (C₁ * E) * (aa * L * N) ^ 2 := by ring
      _ ≤ (C₁ * E) * (1 / 2) * (2 * (Φ₀ * M₂)) := by
          have h0 : 0 ≤ C₁ * E := by positivity
          gcongr
      _ = C₁ * (E * (Φ₀ * M₂)) := by ring
  have t4 : |Φ₀ * bb| ≤ C₂ * (E * (Φ₀ * M₂)) := by
    rw [abs_mul, abs_of_pos hΦ0]
    calc Φ₀ * |bb| ≤ Φ₀ * (C₂ * (E * M₂)) := by gcongr
      _ = C₂ * (E * (Φ₀ * M₂)) := by ring
  have hnum : |G ^ 2 - Φ₀ * G2| ≤ (2 * π * A + 5 * C₁ + C₂) * (E * (Φ₀ * M₂)) := by
    rw [hid]
    calc |(aa * L) ^ 2 * N * δ + 2 * (aa * L * N) * α + α ^ 2 - Φ₀ * bb|
        ≤ |(aa * L) ^ 2 * N * δ| + |2 * (aa * L * N) * α| + |α ^ 2| + |Φ₀ * bb| := by
          refine (abs_sub _ _).trans ?_
          linarith [abs_add_three ((aa * L) ^ 2 * N * δ) (2 * (aa * L * N) * α) (α ^ 2)]
      _ ≤ 2 * π * A * (E * (Φ₀ * M₂)) + 4 * C₁ * (E * (Φ₀ * M₂)) + C₁ * (E * (Φ₀ * M₂))
          + C₂ * (E * (Φ₀ * M₂)) := by gcongr
      _ = (2 * π * A + 5 * C₁ + C₂) * (E * (Φ₀ * M₂)) := by ring
  have hq : G ^ 2 / G2 - Φ₀ = (G ^ 2 - Φ₀ * G2) / G2 := by
    field_simp
  rw [hq, abs_div, abs_of_pos hG2pos, div_le_iff₀ hG2pos]
  calc |G ^ 2 - Φ₀ * G2| ≤ (2 * π * A + 5 * C₁ + C₂) * (E * (Φ₀ * M₂)) := hnum
    _ = 2 * (2 * π * A + 5 * C₁ + C₂) * (E * Φ₀) * (M₂ / 2) := by ring
    _ ≤ 2 * (2 * π * A + 5 * C₁ + C₂) * (E * Φ₀) * G2 := by
        have h0 : 0 ≤ 2 * (2 * π * A + 5 * C₁ + C₂) * (E * Φ₀) := by positivity
        gcongr

section assemblyD
variable {D} (h : FactsD D)
include h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bfd1870e7ee5227d0d98bdea570bfc4853c9ca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
