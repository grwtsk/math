# smallLayer_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1632c7fc-dfa9-4ad5-d71e-957b0888b440",
  "kind": "theorem",
  "lexical_name": "smallLayer_sum_le",
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
  "slug": "smalllayer-sum-le--e4a834296d4703a56c8e9244",
  "source": {
    "blob": "8f3b03b9316c6b7d0722ca187f97820bf3455cb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 128,
    "path": "GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4a834296d4703a56c8e9244427d8ab85df16c06b86c08bace5631336898b713",
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

Occurrence: `result:1632c7fc-dfa9-4ad5-d71e-957b0888b440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smallLayer_sum_le (hp : p.Prime) (S : Finset (ZMod p))
    (hn : 2 ≤ S.card) (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) :
    (∑ k ∈ smallLayerRange m, expectedLayerCard S m k * Real.exp (-(2 : ℝ) ^ k)) ≤
      20000 * p / ((S.card : ℝ) * Real.sqrt m) := by
  calc
    _ ≤ ∑ k ∈ smallLayerRange m,
        (10000 * p * Real.sqrt ((2 : ℝ) ^ k) / ((S.card : ℝ) * Real.sqrt m)) *
          Real.exp (-(2 : ℝ) ^ k) := by
      apply Finset.sum_le_sum
      intro k hk
      exact mul_le_mul_of_nonneg_right (expectedLayerCard_le_small hp S hn hl hu k hk)
        (Real.exp_nonneg _)
    _ = (10000 * p / ((S.card : ℝ) * Real.sqrt m)) *
        ∑ k ∈ smallLayerRange m,
          Real.sqrt ((2 : ℝ) ^ k) * Real.exp (-(2 : ℝ) ^ k) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intros
      ring
    _ ≤ (10000 * p / ((S.card : ℝ) * Real.sqrt m)) * 2 :=
      mul_le_mul_of_nonneg_left (sum_sqrt_dyadic_exp_le_two _) (by positivity)
    _ = _ := by ring

/-- The source's high-layer summation, with its 22-term count and fourth-power
exponential estimate proved from the original slice range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedExpectedLayers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3b03b9316c6b7d0722ca187f97820bf3455cb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
