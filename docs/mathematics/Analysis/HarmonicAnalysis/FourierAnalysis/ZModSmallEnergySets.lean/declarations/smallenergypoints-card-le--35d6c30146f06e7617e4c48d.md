# smallEnergyPoints_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7949b64-641b-0705-843d-f8dc4500402c",
  "kind": "theorem",
  "lexical_name": "smallEnergyPoints_card_le",
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
  "slug": "smallenergypoints-card-le--35d6c30146f06e7617e4c48d",
  "source": {
    "blob": "991e5cd3b742f2c3f3235e1d34715f5f8db95e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 132,
    "path": "GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35d6c30146f06e7617e4c48ddbab117feb5832161203afd21b1e859db50a4bd7",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7949b64-641b-0705-843d-f8dc4500402c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smallEnergyPoints_card_le (B : Finset (ZMod p)) (hB : B.Nonempty) :
    ((smallEnergyPoints B (1 / 200)).card : ℝ) ≤ (5 / 4 : ℝ) * p / B.card := by
  have hb : (0 : ℝ) < B.card := by exact_mod_cast hB.card_pos
  have hsum : (∑ x ∈ smallEnergyPoints B (1 / 200),
      ‖∑ χ ∈ B, ZMod.stdAddChar (χ * x)‖ ^ 2) ≤
      (∑ x : ZMod p, ‖∑ χ ∈ B, ZMod.stdAddChar (χ * x)‖ ^ 2) := by
    apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _)
    intro x _ _
    exact sq_nonneg _
  have hlower : ((smallEnergyPoints B (1 / 200)).card : ℝ) *
      ((4 / 5 : ℝ) * (B.card : ℝ) ^ 2) ≤ (p : ℝ) * B.card := by
    calc
      _ = ∑ _x ∈ smallEnergyPoints B (1 / 200), (4 / 5 : ℝ) * (B.card : ℝ) ^ 2 := by
        simp
      _ ≤ _ := (Finset.sum_le_sum fun x hx => character_sum_norm_sq_lower B x hx).trans
        (hsum.trans_eq (character_sum_parseval B))
  apply (le_div_iff₀ hb).mpr
  apply (mul_le_mul_iff_of_pos_right hb).mp
  nlinarith [hlower]

omit [NeZero p] in
/-- Reordering the three finite sums reconstructs the exact pair-energy average. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModSmallEnergySets.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991e5cd3b742f2c3f3235e1d34715f5f8db95e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
