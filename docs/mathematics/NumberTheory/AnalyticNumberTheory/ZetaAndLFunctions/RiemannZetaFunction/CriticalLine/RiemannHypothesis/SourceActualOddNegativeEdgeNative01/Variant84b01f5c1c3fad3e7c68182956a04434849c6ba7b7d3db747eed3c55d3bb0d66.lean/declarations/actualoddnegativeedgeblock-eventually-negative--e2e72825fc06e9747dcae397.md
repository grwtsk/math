# actualOddNegativeEdgeBlock_eventually_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e974832-38b3-9be0-91ef-53accdaafca6",
  "kind": "theorem",
  "lexical_name": "actualOddNegativeEdgeBlock_eventually_negative",
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
  "slug": "actualoddnegativeedgeblock-eventually-negative--e2e72825fc06e9747dcae397",
  "source": {
    "blob": "7d05e4bb28d50c594ab21e4e33ba1bcc70da2d89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 204,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant84b01f5c1c3fad3e7c68182956a04434849c6ba7b7d3db747eed3c55d3bb0d66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2e72825fc06e9747dcae397f59a965b82b7fdd317359d836379cd87323ff272",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant84b01f5c1c3fad3e7c68182956a04434849c6ba7b7d3db747eed3c55d3bb0d66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e974832-38b3-9be0-91ef-53accdaafca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualOddNegativeEdgeBlock_eventually_negative :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualOddNegativeEdgeBlock A ≤
        -(actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 := by
  obtain ⟨R1, hR1, hnegative⟩ := actualNegativeEdgeMangoldtBlock_eventually_negative
  have hl : Tendsto (fun A : ℝ =>
      (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9) atTop atTop := by
    simpa only [mul_div_assoc] using (Real.tendsto_exp_div_pow_atTop 9).const_mul_atTop
      (half_pos actualNegativeEdgeConstant_pos)
  obtain ⟨R2, hR2⟩ := eventually_atTop.1
    (hl.eventually_ge_atTop (Real.log 2 / (Real.sqrt 2 - 1)))
  refine ⟨max R1 R2, hR1.trans (le_max_left _ _), ?_⟩
  intro A hA
  have hA1 : R1 ≤ A := (le_max_left _ _).trans hA
  have hA2 : R2 ≤ A := (le_max_right _ _).trans hA
  have hn := hnegative A hA1
  have he := (abs_le.mp (actualEvenNegativeEdgeBlock_abs_le (hR1.trans hA1))).1
  have hs := hR2 A hA2
  have hid := actualNegativeEdgeMangoldtBlock_eq_even_add_odd A
  rw [neg_mul, neg_div] at hn
  rw [neg_mul, neg_div]
  linarith

/-- Genuine odd negative sector divergence does not assert full residual divergence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant84b01f5c1c3fad3e7c68182956a04434849c6ba7b7d3db747eed3c55d3bb0d66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant84b01f5c1c3fad3e7c68182956a04434849c6ba7b7d3db747eed3c55d3bb0d66.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d05e4bb28d50c594ab21e4e33ba1bcc70da2d89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
