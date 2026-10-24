# actual_source_no_coarse_gram_lower_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:962eadf2-3ac9-44a4-3064-202fd54db007",
  "kind": "theorem",
  "lexical_name": "actual_source_no_coarse_gram_lower_factor",
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
  "slug": "actual-source-no-coarse-gram-lower-factor--1894bc1038877c7b58449f35",
  "source": {
    "blob": "5108bdfc485974587935bf314982ac965f07d67d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 128,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceMetric/Variant715fcce9a9dc8cfed8c42fd1f388044cc9853e2afce9e339ed315e759e60c21f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1894bc1038877c7b58449f35da8a69db6df2858384cbfbb18611a3d2eb3b0ab9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceMetric/Variant715fcce9a9dc8cfed8c42fd1f388044cc9853e2afce9e339ed315e759e60c21f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:962eadf2-3ac9-44a4-3064-202fd54db007`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_no_coarse_gram_lower_factor (q : ComplexL2)
    (hq : q =ᵐ[volume] fun x => (normalizedTest explicitSecondDerivative 2 x : ℂ)) :
    ¬ ∃ c : ℝ, 0 < c ∧ ∀ z : ↥(longInventory 2) → ℂ,
      c * ‖singleChannelState q (longInventory 2) z‖ ≤
        ‖WithLp.toLp 2 (disclosureTotals (longInventory 2) ∅ z)‖ := by
  classical
  rintro ⟨c, hc, hlower⟩
  let m : ↥(longInventory 2) := ⟨5, five_mem_actual_long⟩
  let n : ↥(longInventory 2) := ⟨8, eight_mem_actual_long⟩
  let z : ↥(longInventory 2) → ℂ := Pi.single m 1 - Pi.single n 1
  have hstate : singleChannelState q (longInventory 2) z =
      orbitAtom q false false 5 - orbitAtom q false false 8 := by
    dsimp only [z]
    rw [map_sub, singleChannelState_single, singleChannelState_single]
    simp only [one_smul]
    rfl
  have hzero : disclosureTotals (longInventory 2) ∅ z = 0 := by
    apply disclosureTotals_collision
    simp [FormalResearch.RiemannHypothesis.SourceDivisorLatticeClassifier.divisorPattern]
  have h := hlower z
  rw [hzero, hstate] at h
  simp only [WithLp.toLp_zero, norm_zero] at h
  have hp := mul_pos hc (actual_five_eight_source_difference_norm_pos q hq)
  linarith

/-- This is an actual constructed source packet, not an assumed source class.
Its obstruction forbids the proposed full-space norm premise through disclosure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceMetric/Variant715fcce9a9dc8cfed8c42fd1f388044cc9853e2afce9e339ed315e759e60c21f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/QuantitativeGapSourceMetric/Variant715fcce9a9dc8cfed8c42fd1f388044cc9853e2afce9e339ed315e759e60c21f.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5108bdfc485974587935bf314982ac965f07d67d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
