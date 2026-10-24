# largeLayer_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:006a8d66-4e3e-4d90-9037-f42be493475f",
  "kind": "theorem",
  "lexical_name": "largeLayer_sum_le",
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
  "slug": "largelayer-sum-le--08ccf1b52ddbaa15ef046a65",
  "source": {
    "blob": "8f3b03b9316c6b7d0722ca187f97820bf3455cb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 154,
    "path": "GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08ccf1b52ddbaa15ef046a6541021ea69c7ca9a4a1b3ca0067f746dc7df24090",
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

Occurrence: `result:006a8d66-4e3e-4d90-9037-f42be493475f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem largeLayer_sum_le (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) :
    (∑ k ∈ largeLayerRange m, expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k)) ≤
      22 * p / (S.card : ℝ) ^ 4 := by
  obtain ⟨hm, _⟩ := source_range_size_bounds S.card m hn hl hu
  calc
    _ ≤ ∑ k ∈ largeLayerRange m, (p : ℝ) * Real.exp (-(2 : ℝ) ^ k) := by
      apply Finset.sum_le_sum
      intro k _
      exact mul_le_mul_of_nonneg_right (expectedLayerCard_le_card S hm k) (Real.exp_nonneg _)
    _ = (p : ℝ) * ∑ k ∈ largeLayerRange m, Real.exp (-(2 : ℝ) ^ k) :=
      (Finset.mul_sum _ _ _).symm
    _ ≤ (p : ℝ) * (22 * Real.exp (-(m : ℝ) / (2 : ℝ) ^ 22)) :=
      mul_le_mul_of_nonneg_left (largeLayerRange_exp_sum_le m) (by positivity)
    _ ≤ (p : ℝ) * (22 * (1 / (S.card : ℝ) ^ 4)) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      exact mul_le_mul_of_nonneg_left
        (source_tail_exp_le S.card m (by exact_mod_cast (show 0 < S.card by omega)) hl)
        (by norm_num)
    _ = _ := by ring

/-- Source Theorem 1.3 with the intermediate constant 30022, derived from the
actual balanced sampling law, the proved concentration estimates, and finite
Fourier analysis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedExpectedLayers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3b03b9316c6b7d0722ca187f97820bf3455cb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
