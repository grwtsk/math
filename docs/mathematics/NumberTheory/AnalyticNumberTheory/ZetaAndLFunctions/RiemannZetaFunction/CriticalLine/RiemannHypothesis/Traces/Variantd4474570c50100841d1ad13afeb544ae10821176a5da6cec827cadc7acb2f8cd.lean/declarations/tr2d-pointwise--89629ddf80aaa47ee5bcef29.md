# tr2D_pointwise

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
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:391fb2ab-f020-f74c-92e4-62bc4939b0b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03a21309-48ec-d27f-3251-4872c8937210",
  "kind": "theorem",
  "lexical_name": "tr2D_pointwise",
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
  "slug": "tr2d-pointwise--89629ddf80aaa47ee5bcef29",
  "source": {
    "blob": "0bfd1870e7ee5227d0d98bdea570bfc4853c9ca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89629ddf80aaa47ee5bcef296c5ef4c3f3722211f144125260dc5c5c51a6372c",
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

Occurrence: `result:03a21309-48ec-d27f-3251-4872c8937210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr2D_pointwise (T L ℓ lT X E S I2 b J G2 w CR Cμ Cs : ℝ)
    (hT : 1 ≤ T) (hL : 1 ≤ L) (hl : 1 ≤ lT) (hlog : 1 ≤ Real.log lT) (hX : 1 ≤ X)
    (hℓl : lT ≤ ℓ) (hLl : L ≤ lT) (hw : 1 ≤ w) (hL2w : 2 * w ≤ L)
    (hb : 1 / 2 ≤ b) (hb1 : b ≤ 1) (hJ0 : 0 ≤ J)
    (hE0 : 0 ≤ E) (hEw : w / L ≤ E) (hEmid : (lT ^ 2 + X) * Real.log lT / (T * lT) ≤ E)
    (hCR : 0 ≤ CR) (hCμ : 0 ≤ Cμ) (hCs : 0 ≤ Cs)
    (hR : |G2 - (2 * π * b * L * I2 + T / π * S)| ≤ CR * (L * lT * Real.log lT * (lT ^ 2 + X)))
    (hμ : |I2 - T * ℓ ^ 2 / (4 * π ^ 2)| ≤ Cμ * (T * ℓ ^ 2 / (4 * π ^ 2) / lT ^ 2))
    (hSJ : |S - L ^ 3 * J / 2| ≤ Cs * L ^ 2) :
    |G2 - T * L / (2 * π) * (b * ℓ ^ 2 + L ^ 2 * J)|
      ≤ (4 * π * CR + 2 * Cμ + 4 * Cs) * (E * (T * L / (2 * π) * (b * ℓ ^ 2 + L ^ 2 * J))) := by
  have hπ : 0 < π := Real.pi_pos
  have hT0 : 0 < T := by linarith
  have hL0 : 0 < L := by linarith
  have hl0 : 0 < lT := by linarith
  have hℓ0 : 0 < ℓ := by linarith
  have hℓ1 : 1 ≤ ℓ := le_trans hl hℓl
  have hlog0 : 0 ≤ Real.log lT := by linarith
  have hX0 : 0 ≤ X := by linarith
  have hw0 : 0 ≤ w := by linarith
  have hb0 : 0 < b := by linarith
  set M₂ := T * L / (2 * π) * (b * ℓ ^ 2 + L ^ 2 * J) with hM₂def
  -- the ℓ²-piece lower bound: TLℓ²/(4π) ≤ M₂
  have hMa : T * L * ℓ ^ 2 / (4 * π) ≤ M₂ := by
    rw [hM₂def]
    have h1 : T * L * ℓ ^ 2 / (4 * π) = T * L / (2 * π) * (ℓ ^ 2 / 2) := by ring
    rw [h1]
    apply mul_le_mul_of_nonneg_left _ (by positivity)
    nlinarith [sq_nonneg ℓ, sq_nonneg L]
  have hM0 : 0 ≤ M₂ := le_trans (by positivity) hMa
  have hEM0 : 0 ≤ E * M₂ := mul_nonneg hE0 hM0
  have hE_L : 1 / L ≤ E := le_trans (by gcongr) hEw
  have hE_l2 : 1 / lT ^ 2 ≤ E := by
    refine le_trans ?_ hE_L
    rw [div_le_div_iff₀ (by positivity) hL0, one_mul, one_mul]
    calc L ≤ lT := hLl
      _ = lT * 1 := (mul_one _).symm
      _ ≤ lT * lT := by gcongr
      _ = lT ^ 2 := (sq lT).symm
  -- piece A: the lem_ends-type remainder
  have hA : L * lT * Real.log lT * (lT ^ 2 + X) ≤ 4 * π * (E * M₂) := by
    have h1 : (lT ^ 2 + X) * Real.log lT / (T * lT) * (T * L * ℓ ^ 2 / (4 * π)) ≤ E * M₂ :=
      mul_le_mul hEmid hMa (by positivity) hE0
    have h2 : 4 * π * ((lT ^ 2 + X) * Real.log lT / (T * lT) * (T * L * ℓ ^ 2 / (4 * π)))
        = L * Real.log lT * (lT ^ 2 + X) * ℓ ^ 2 / lT := by
      field_simp
    have h3 : L * lT * Real.log lT * (lT ^ 2 + X)
        ≤ L * Real.log lT * (lT ^ 2 + X) * ℓ ^ 2 / lT := by
      rw [le_div_iff₀ hl0]
      have hll : lT * lT ≤ ℓ ^ 2 := by
        rw [sq]
        exact mul_le_mul hℓl hℓl hl0.le hℓ0.le
      have h0 : 0 ≤ L * Real.log lT * (lT ^ 2 + X) := by positivity
      calc L * lT * Real.log lT * (lT ^ 2 + X) * lT
          = L * Real.log lT * (lT ^ 2 + X) * (lT * lT) := by ring
        _ ≤ L * Real.log lT * (lT ^ 2 + X) * ℓ ^ 2 := by gcongr
    calc L * lT * Real.log lT * (lT ^ 2 + X)
        ≤ L * Real.log lT * (lT ^ 2 + X) * ℓ ^ 2 / lT := h3
      _ = 4 * π * ((lT ^ 2 + X) * Real.log lT / (T * lT) * (T * L * ℓ ^ 2 / (4 * π))) := h2.symm
      _ ≤ 4 * π * (E * M₂) := by gcongr
  -- piece B1: the μ-moment remainder
  have hB1 : |2 * π * b * L * (I2 - T * ℓ ^ 2 / (4 * π ^ 2))| ≤ 2 * Cμ * (E * M₂) := by
    rw [abs_mul, abs_of_nonneg (by positivity : (0:ℝ) ≤ 2 * π * b * L)]
    calc 2 * π * b * L * |I2 - T * ℓ ^ 2 / (4 * π ^ 2)|
        ≤ 2 * π * 1 * L * (Cμ * (T * ℓ ^ 2 / (4 * π ^ 2) / lT ^ 2)) := by gcongr
      _ = 2 * Cμ * ((1 / lT ^ 2) * (T * L * ℓ ^ 2 / (4 * π))) := by
          field_simp
          try ring
      _ ≤ 2 * Cμ * ((1 / lT ^ 2) * M₂) := by
          have h0 : (0:ℝ) ≤ 1 / lT ^ 2 := by positivity
          gcongr
      _ ≤ 2 * Cμ * (E * M₂) := by gcongr
  -- piece B3: the partial-summation remainder
  have hB3 : |T / π * (S - L ^ 3 * J / 2)| ≤ 4 * Cs * (E * M₂) := by
    rw [abs_mul, abs_of_nonneg (by positivity : (0:ℝ) ≤ T / π)]
    calc T / π * |S - L ^ 3 * J / 2| ≤ T / π * (Cs * L ^ 2) := by gcongr
      _ = 4 * Cs * ((L / ℓ ^ 2) * (T * L * ℓ ^ 2 / (4 * π))) := by
          field_simp
          try ring
      _ ≤ 4 * Cs * ((1 / L) * M₂) := by
          have hLℓ2 : L / ℓ ^ 2 ≤ 1 / L := by
            rw [div_le_div_iff₀ (by positivity) hL0]
            have hLℓ : L ≤ ℓ := le_trans hLl hℓl
            nlinarith
          have h0 : (0:ℝ) ≤ L / ℓ ^ 2 := by positivity
          apply mul_le_mul_of_nonneg_left _ (by positivity)
          calc L / ℓ ^ 2 * (T * L * ℓ ^ 2 / (4 * π)) ≤ 1 / L * (T * L * ℓ ^ 2 / (4 * π)) := by
                gcongr
            _ ≤ 1 / L * M₂ := by
                have : (0:ℝ) ≤ 1 / L := by positivity
                gcongr
      _ ≤ 4 * Cs * (E * M₂) := by gcongr
  -- assemble
  have hsplit : (2 * π * b * L * I2 + T / π * S) - M₂
      = 2 * π * b * L * (I2 - T * ℓ ^ 2 / (4 * π ^ 2)) + T / π * (S - L ^ 3 * J / 2) := by
    rw [hM₂def]
    field_simp
    ring
  calc |G2 - M₂|
      ≤ |G2 - (2 * π * b * L * I2 + T / π * S)|
        + |(2 * π * b * L * I2 + T / π * S) - M₂| := abs_sub_le _ _ _
    _ ≤ CR * (L * lT * Real.log lT * (lT ^ 2 + X))
        + (|2 * π * b * L * (I2 - T * ℓ ^ 2 / (4 * π ^ 2))| + |T / π * (S - L ^ 3 * J / 2)|) := by
        gcongr
        rw [hsplit]
        exact abs_add_le _ _
    _ ≤ CR * (4 * π * (E * M₂)) + (2 * Cμ * (E * M₂) + 4 * Cs * (E * M₂)) := by
        gcongr
    _ = (4 * π * CR + 2 * Cμ + 4 * Cs) * (E * M₂) := by ring

/-- from `f → 0`: eventually `C * f T ≤ 1/2` (used for the `Cᵢ·𝓔_T ≤ 1/2` side conditions of
`ratioD_pointwise`, here and in ThmDE.Traces). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variantd4474570c50100841d1ad13afeb544ae10821176a5da6cec827cadc7acb2f8cd.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bfd1870e7ee5227d0d98bdea570bfc4853c9ca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
