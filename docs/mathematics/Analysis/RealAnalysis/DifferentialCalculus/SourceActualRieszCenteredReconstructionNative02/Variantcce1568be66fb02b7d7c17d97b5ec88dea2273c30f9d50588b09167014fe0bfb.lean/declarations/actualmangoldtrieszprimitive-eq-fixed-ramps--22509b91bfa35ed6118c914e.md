# actualMangoldtRieszPrimitive_eq_fixed_ramps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19030083-dd2b-7c74-709b-70942a0f47dd",
  "kind": "theorem",
  "lexical_name": "actualMangoldtRieszPrimitive_eq_fixed_ramps",
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
  "slug": "actualmangoldtrieszprimitive-eq-fixed-ramps--22509b91bfa35ed6118c914e",
  "source": {
    "blob": "8da4ea89423feb460a515ea5d60d64b14782d9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative02/Variantcce1568be66fb02b7d7c17d97b5ec88dea2273c30f9d50588b09167014fe0bfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22509b91bfa35ed6118c914ebbce3ee9c0ea73ad68d1fe0ecd7f8d42645aacc9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative02/Variantcce1568be66fb02b7d7c17d97b5ec88dea2273c30f9d50588b09167014fe0bfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19030083-dd2b-7c74-709b-70942a0f47dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMangoldtRieszPrimitive_eq_fixed_ramps {b t : ℝ} (ht : t ≤ b) :
    actualMangoldtRieszPrimitive t =
      (∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)) -
          actualRieszContinuousRamp t := by
  classical
  have heq : (∑ n ∈ primePowerInventory b,
      ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)) =
      ∑ n ∈ (primePowerInventory b).filter (fun n : ℕ => Real.log n ≤ t),
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * (t - Real.log n) := by
    rw [Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hl : Real.log (n : ℝ) ≤ t
    · rw [if_pos hl, max_eq_right (by linarith)]
    · rw [if_neg hl, max_eq_left (by linarith), mul_zero]
  rw [primePowerInventory_filter_log b t ht] at heq
  unfold actualMangoldtRieszPrimitive
  rw [heq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative02/Variantcce1568be66fb02b7d7c17d97b5ec88dea2273c30f9d50588b09167014fe0bfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative02/Variantcce1568be66fb02b7d7c17d97b5ec88dea2273c30f9d50588b09167014fe0bfb.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8da4ea89423feb460a515ea5d60d64b14782d9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
