# frhatD_pointwise

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
      "line": 515,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fc02a03-cec7-afd4-da73-5a92ce4746b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6577a421-fa6f-a5fb-ec95-d86ccb197bb8",
  "kind": "theorem",
  "lexical_name": "frhatD_pointwise",
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
  "slug": "frhatd-pointwise--0b252dae43f7017a1deba69a",
  "source": {
    "blob": "0bfd1870e7ee5227d0d98bdea570bfc4853c9ca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 515,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b252dae43f7017a1deba69a63770546e79b83930df37e824b01dfbe7f65de95",
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

Occurrence: `result:6577a421-fa6f-a5fb-ec95-d86ccb197bb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frhatD_pointwise (T L ℓ lT E N G2 A aa b J C₂ : ℝ)
    (hT : 1 ≤ T) (hL : 0 < L) (hℓ1 : 1 ≤ ℓ) (hℓl : lT ≤ ℓ) (hN0 : 0 < N) (hE0 : 0 ≤ E)
    (hET : 1 / T ≤ E) (hA : 0 ≤ A) (hC₂ : 0 ≤ C₂)
    (ha : 1 / 2 ≤ aa) (hb : 1 / 2 ≤ b) (hJ0 : 0 ≤ J)
    (hTA : 4 * π * A ≤ T)
    (h2 : |G2 - T * L / (2 * π) * (b * ℓ ^ 2 + L ^ 2 * J)|
      ≤ C₂ * (E * (T * L / (2 * π) * (b * ℓ ^ 2 + L ^ 2 * J))))
    (hN : |N - T * ℓ / (2 * π)| ≤ A * lT) :
    max (G2 / (aa * L) ^ 2 - (cRatio (L / ℓ) aa b J)⁻¹ * N) 0
      ≤ (4 * π * A + 2 * C₂) * (E * ((cRatio (L / ℓ) aa b J)⁻¹ * N)) := by
  have hπ : 0 < π := Real.pi_pos
  have hT0 : 0 < T := by linarith
  have hℓ0 : 0 < ℓ := by linarith
  have ha0 : 0 < aa := by linarith
  have hb0 : 0 < b := by linarith
  set M₂ := T * L / (2 * π) * (b * ℓ ^ 2 + L ^ 2 * J) with hM₂def
  have hdenR : 0 < b + (L / ℓ) ^ 2 * J := by
    have : 0 ≤ (L / ℓ) ^ 2 * J := by positivity
    linarith
  have hc0 : 0 < cRatio (L / ℓ) aa b J := by
    unfold cRatio
    apply div_pos (by positivity) hdenR
  have hcinv0 : 0 ≤ (cRatio (L / ℓ) aa b J)⁻¹ := (inv_pos.mpr hc0).le
  -- the N-free key identity
  have keyc : cRatio (L / ℓ) aa b J * M₂ = (aa * L) ^ 2 * (T * ℓ / (2 * π)) := by
    rw [hM₂def]
    unfold cRatio
    field_simp
    try ring
  have hM2aL : M₂ / (aa * L) ^ 2 = (cRatio (L / ℓ) aa b J)⁻¹ * (T * ℓ / (2 * π)) := by
    rw [eq_comm, inv_mul_eq_div, div_eq_div_iff hc0.ne' (by positivity : ((aa * L) ^ 2 : ℝ) ≠ 0)]
    linear_combination -keyc
  -- N vs Tℓ/2π
  have hNlow : T * ℓ / (4 * π) ≤ N := by
    have h1 := (abs_le.mp hN).1
    have hAl : A * lT ≤ T * ℓ / (4 * π) := by
      calc A * lT ≤ A * ℓ := by
            apply mul_le_mul_of_nonneg_left hℓl hA
        _ ≤ T / (4 * π) * ℓ := by
            apply mul_le_mul_of_nonneg_right _ hℓ0.le
            rw [le_div_iff₀ (by positivity)]
            linarith
        _ = T * ℓ / (4 * π) := by ring
    have he : T * ℓ / (4 * π) = T * ℓ / (2 * π) - T * ℓ / (4 * π) := by ring
    linarith
  have hTl2N : T * ℓ / (2 * π) ≤ 2 * N := by
    have he : T * ℓ / (2 * π) = 2 * (T * ℓ / (4 * π)) := by ring
    linarith
  have hAlEN : A * lT ≤ 4 * π * A * (E * N) := by
    calc A * lT ≤ A * ℓ := mul_le_mul_of_nonneg_left hℓl hA
      _ ≤ A * (4 * π * N / T) := by
          apply mul_le_mul_of_nonneg_left _ hA
          rw [le_div_iff₀ hT0]
          calc ℓ * T = 2 * π * (T * ℓ / (2 * π)) := by field_simp; try ring
            _ ≤ 2 * π * (2 * N) := by gcongr
            _ = 4 * π * N := by ring
      _ = 4 * π * A * ((1 / T) * N) := by field_simp; try ring
      _ ≤ 4 * π * A * (E * N) := by
          have h0 : 0 ≤ N := hN0.le
          gcongr
  -- the positive-part bound
  have hup : G2 / (aa * L) ^ 2 - (cRatio (L / ℓ) aa b J)⁻¹ * N
      ≤ (4 * π * A + 2 * C₂) * (E * ((cRatio (L / ℓ) aa b J)⁻¹ * N)) := by
    have hG2 : G2 ≤ M₂ + C₂ * (E * M₂) := by
      have := (abs_le.mp h2).2
      linarith
    have hM₂0 : 0 ≤ M₂ := by
      rw [hM₂def]
      have : 0 ≤ b * ℓ ^ 2 + L ^ 2 * J := by positivity
      positivity
    have step1 : G2 / (aa * L) ^ 2 ≤ (1 + C₂ * E) * (M₂ / (aa * L) ^ 2) := by
      rw [div_le_iff₀ (by positivity : (0:ℝ) < (aa * L) ^ 2)]
      calc G2 ≤ M₂ + C₂ * (E * M₂) := hG2
        _ = (1 + C₂ * E) * M₂ := by ring
        _ = (1 + C₂ * E) * (M₂ / (aa * L) ^ 2) * (aa * L) ^ 2 := by
            field_simp
    rw [hM2aL] at step1
    have step2 : (1 + C₂ * E) * ((cRatio (L / ℓ) aa b J)⁻¹ * (T * ℓ / (2 * π)))
        - (cRatio (L / ℓ) aa b J)⁻¹ * N
        ≤ (cRatio (L / ℓ) aa b J)⁻¹ * (A * lT)
          + C₂ * E * ((cRatio (L / ℓ) aa b J)⁻¹ * (2 * N)) := by
      have hd : T * ℓ / (2 * π) - N ≤ A * lT := by
        have := (abs_le.mp hN).1
        linarith
      have e : (1 + C₂ * E) * ((cRatio (L / ℓ) aa b J)⁻¹ * (T * ℓ / (2 * π)))
          - (cRatio (L / ℓ) aa b J)⁻¹ * N
          = (cRatio (L / ℓ) aa b J)⁻¹ * (T * ℓ / (2 * π) - N)
            + C₂ * E * ((cRatio (L / ℓ) aa b J)⁻¹ * (T * ℓ / (2 * π))) := by
        ring
      rw [e]
      have t1' : (cRatio (L / ℓ) aa b J)⁻¹ * (T * ℓ / (2 * π) - N)
          ≤ (cRatio (L / ℓ) aa b J)⁻¹ * (A * lT) :=
        mul_le_mul_of_nonneg_left hd hcinv0
      have t2' : C₂ * E * ((cRatio (L / ℓ) aa b J)⁻¹ * (T * ℓ / (2 * π)))
          ≤ C₂ * E * ((cRatio (L / ℓ) aa b J)⁻¹ * (2 * N)) := by
        apply mul_le_mul_of_nonneg_left _ (by positivity)
        exact mul_le_mul_of_nonneg_left hTl2N hcinv0
      linarith
    have t3' : (cRatio (L / ℓ) aa b J)⁻¹ * (A * lT)
        ≤ 4 * π * A * (E * ((cRatio (L / ℓ) aa b J)⁻¹ * N)) := by
      calc (cRatio (L / ℓ) aa b J)⁻¹ * (A * lT)
          ≤ (cRatio (L / ℓ) aa b J)⁻¹ * (4 * π * A * (E * N)) :=
            mul_le_mul_of_nonneg_left hAlEN hcinv0
        _ = 4 * π * A * (E * ((cRatio (L / ℓ) aa b J)⁻¹ * N)) := by ring
    calc G2 / (aa * L) ^ 2 - (cRatio (L / ℓ) aa b J)⁻¹ * N
        ≤ (1 + C₂ * E) * ((cRatio (L / ℓ) aa b J)⁻¹ * (T * ℓ / (2 * π)))
          - (cRatio (L / ℓ) aa b J)⁻¹ * N := by linarith
      _ ≤ (cRatio (L / ℓ) aa b J)⁻¹ * (A * lT)
          + C₂ * E * ((cRatio (L / ℓ) aa b J)⁻¹ * (2 * N)) := step2
      _ ≤ 4 * π * A * (E * ((cRatio (L / ℓ) aa b J)⁻¹ * N))
          + 2 * C₂ * (E * ((cRatio (L / ℓ) aa b J)⁻¹ * N)) := by
          have e2 : C₂ * E * ((cRatio (L / ℓ) aa b J)⁻¹ * (2 * N))
              = 2 * C₂ * (E * ((cRatio (L / ℓ) aa b J)⁻¹ * N)) := by ring
          linarith [t3', e2.le, e2.ge]
      _ = (4 * π * A + 2 * C₂) * (E * ((cRatio (L / ℓ) aa b J)⁻¹ * N)) := by ring
  exact max_le hup (by positivity)

/-- the frhat field: the D-form hat-units second-moment upper bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bfd1870e7ee5227d0d98bdea570bfc4853c9ca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
