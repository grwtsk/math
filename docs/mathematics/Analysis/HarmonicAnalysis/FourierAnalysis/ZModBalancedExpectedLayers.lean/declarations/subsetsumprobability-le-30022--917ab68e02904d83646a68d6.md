# subsetSumProbability_le_30022

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:091b78b6-36ad-c664-91c8-cf9d37aa57b7",
  "kind": "theorem",
  "lexical_name": "subsetSumProbability_le_30022",
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
  "slug": "subsetsumprobability-le-30022--917ab68e02904d83646a68d6",
  "source": {
    "blob": "8f3b03b9316c6b7d0722ca187f97820bf3455cb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 179,
    "path": "GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:917ab68e02904d83646a68d69713dd1c5a3a1fe33bccd84f611b491db1b9a2b1",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedExpectedLayers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:091b78b6-36ad-c664-91c8-cf9d37aa57b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsetSumProbability_le_30022 (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + 30022 / ((S.card : ℝ) * Real.sqrt m) := by
  obtain ⟨hm, hfour⟩ := source_range_size_bounds S.card m hn hl hu
  have hmn : m ≤ S.card := by omega
  have hnp : (0 : ℝ) < S.card := by exact_mod_cast (show 0 < S.card by omega)
  have hmR : (1 : ℝ) ≤ m := by exact_mod_cast (show 1 ≤ m by omega)
  have hmnR : (m : ℝ) ≤ S.card := by exact_mod_cast hmn
  have hpR : (p : ℝ) ≠ 0 := by exact_mod_cast NeZero.ne p
  have hd : (S.card : ℝ) * Real.sqrt m ≠ 0 :=
    ne_of_gt (mul_pos hnp (Real.sqrt_pos.mpr (by exact_mod_cast hm)))
  have hsplit : (∑ k ∈ Finset.range (Nat.log 2 m + 1),
      expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k)) =
        (∑ k ∈ smallLayerRange m, expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k)) +
        ∑ k ∈ largeLayerRange m, expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k) := by
    have h := Finset.sum_sdiff (f := fun k =>
      expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k)) (smallLayerRange_subset m)
    simpa only [largeLayerRange, add_comm] using h.symm
  have hbound := subsetSumProbability_le_expectedLayers S hm hmn z
  rw [hsplit] at hbound
  have hsum := add_le_add (expectedLowCard_le hp S hn hl hu)
    (add_le_add (smallLayer_sum_le hp S hn hl hu) (largeLayer_sum_le S hn hl hu))
  have hfinal := hbound.trans (mul_le_mul_of_nonneg_left hsum (by positivity : 0 ≤ (p : ℝ)⁻¹))
  have halgebra : (p : ℝ)⁻¹ *
      (1 + 10000 * p / ((S.card : ℝ) * Real.sqrt m) +
        (20000 * p / ((S.card : ℝ) * Real.sqrt m) + 22 * p / (S.card : ℝ) ^ 4)) =
      1 / p + 30000 / ((S.card : ℝ) * Real.sqrt m) + 22 / (S.card : ℝ) ^ 4 := by
    field_simp
    ring
  rw [halgebra] at hfinal
  have htail := reciprocal_tail_le S.card m
    (by exact_mod_cast (show 1 ≤ S.card by omega)) hmR hmnR
  calc
    _ ≤ 1 / p + 30000 / ((S.card : ℝ) * Real.sqrt m) + 22 / (S.card : ℝ) ^ 4 := hfinal
    _ ≤ 1 / p + 30000 / ((S.card : ℝ) * Real.sqrt m) +
        22 / ((S.card : ℝ) * Real.sqrt m) := add_le_add le_rfl htail
    _ = _ := by ring

/-- The exact quantitative statement of source Theorem 1.3 with `C = 2^24`.
Every estimate in its proof is proved in Lean; there is no analytical premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedExpectedLayers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3b03b9316c6b7d0722ca187f97820bf3455cb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
