# subsetSumProbability_le_balanced_layers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2fccd25-dde5-78a6-42ff-5c3e32bf07c5",
  "kind": "theorem",
  "lexical_name": "subsetSumProbability_le_balanced_layers",
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
  "slug": "subsetsumprobability-le-balanced-layers--907495e47e12d5b53496913e",
  "source": {
    "blob": "674dfd64142382e83d5ca6e3e9725a1ec8dbd5a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 235,
    "path": "GRWTSK/Analysis/Fourier/ZModBalancedPartition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:907495e47e12d5b53496913e3cf1f56d737844c18ee2cf63c58fa6063a65affc",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2fccd25-dde5-78a6-42ff-5c3e32bf07c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsetSumProbability_le_balanced_layers (S : Finset (ZMod p))
    (hm : 0 < m) (hmn : m ≤ S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      (Fintype.card (BalancedPartitions S m) : ℝ)⁻¹ *
        ∑ P : BalancedPartitions S m,
          (p : ℝ)⁻¹ *
            (((GRWTSK.FiniteExponentialLayers.lowBand
                (partitionEnergy (partValues (residueEmbedding S) P))).card : ℝ) +
              ∑ k ∈ Finset.range (Nat.log 2 m + 1),
                ((GRWTSK.FiniteExponentialLayers.dyadicBand
                  (partitionEnergy (partValues (residueEmbedding S) P)) k).card : ℝ) *
                    Real.exp (-(2 : ℝ) ^ k)) := by
  apply (subsetSumProbability_le_balanced_exponential S hm hmn z).trans
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  apply Finset.sum_le_sum
  intro P _
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  exact GRWTSK.FiniteExponentialLayers.sum_exp_neg_le_layers _ (Nat.log 2 m)
    (partitionEnergy_nonneg _) (fun χ => (partitionEnergy_le_card _ χ).trans_lt (by
      exact_mod_cast Nat.lt_pow_succ_log_self (by decide : 1 < 2) m))

/-- In the exact numerical range of source Section 3, the balanced sampler and
its averaged Fourier-layer bound require no extra feasibility assumption. This
is not the final anti-concentration estimate of Theorem 1.3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModBalancedPartition.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `674dfd64142382e83d5ca6e3e9725a1ec8dbd5a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
