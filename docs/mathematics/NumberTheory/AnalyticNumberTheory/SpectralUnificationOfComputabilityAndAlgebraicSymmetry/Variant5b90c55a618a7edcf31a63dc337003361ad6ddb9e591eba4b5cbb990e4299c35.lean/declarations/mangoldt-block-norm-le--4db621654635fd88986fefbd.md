# mangoldt_block_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b0421a6-15c6-94c2-a7d7-25334aeef088",
  "kind": "theorem",
  "lexical_name": "mangoldt_block_norm_le",
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
  "slug": "mangoldt-block-norm-le--4db621654635fd88986fefbd",
  "source": {
    "blob": "6c2c0a770235d3adc6e76252ad841135c5f2b206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4db621654635fd88986fefbd3c90f76178b22ddc57a4a47e081d9b7a65f91665",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b0421a6-15c6-94c2-a7d7-25334aeef088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldt_block_norm_le (A : ℝ) (i : ℕ) :
    (∑ m ∈ logLongInventory A i, vonMangoldt m/Real.sqrt (m : ℝ)) ≤
      Real.exp 1 * ((i : ℝ)+1) * Real.exp ((i : ℝ)/2) := by
  have hb (m : ℕ) (hm : m ∈ logLongInventory A i) :
      vonMangoldt m/Real.sqrt (m : ℝ) ≤ ((i : ℝ)+1)/Real.exp ((i : ℝ)/2) := by
    have hi := (Finset.mem_filter.mp hm).2
    have hl := Nat.lt_floor_add_one (Real.log (m : ℝ))
    rw [hi] at hl
    have hm1 : (1 : ℝ) ≤ m := by
      have h : 1 ≤ m := by have := (Finset.mem_Ioc.mp (Finset.mem_filter.mp hm).1).1; omega
      exact_mod_cast h
    have hm0 : 0 < (m : ℝ) := zero_lt_one.trans_le hm1
    have hlower := Nat.floor_le (Real.log_nonneg hm1)
    rw [hi] at hlower
    have hs : Real.exp ((i : ℝ)/2) ≤ Real.sqrt (m : ℝ) := by
      rw [Real.exp_half]
      apply Real.sqrt_le_sqrt
      simpa only [Real.exp_log hm0] using Real.exp_le_exp.mpr hlower
    exact div_le_div₀ (by positivity) (vonMangoldt_le_log.trans hl.le)
      (Real.exp_pos _) hs
  calc
    _ ≤ ∑ m ∈ logLongInventory A i, ((i : ℝ)+1)/Real.exp ((i : ℝ)/2) :=
      Finset.sum_le_sum hb
    _ = ((logLongInventory A i).card : ℝ) * (((i : ℝ)+1)/Real.exp ((i : ℝ)/2)) := by simp
    _ ≤ Real.exp ((i : ℝ)+1) * (((i : ℝ)+1)/Real.exp ((i : ℝ)/2)) :=
      mul_le_mul_of_nonneg_right (logLongInventory_card_le_exp A i) (by positivity)
    _ = _ := by
      have he : Real.exp ((i : ℝ)+1)/Real.exp ((i : ℝ)/2) =
          Real.exp 1 * Real.exp ((i : ℝ)/2) := by
        rw [← Real.exp_sub, ← Real.exp_add]
        congr 1
        ring
      calc
        _ = ((i : ℝ)+1) * (Real.exp ((i : ℝ)+1)/Real.exp ((i : ℝ)/2)) := by ring
        _ = _ := by rw [he]; ring

/-- Exact scalar budget produced by the preceding source regularity and prefix bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c2c0a770235d3adc6e76252ad841135c5f2b206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
