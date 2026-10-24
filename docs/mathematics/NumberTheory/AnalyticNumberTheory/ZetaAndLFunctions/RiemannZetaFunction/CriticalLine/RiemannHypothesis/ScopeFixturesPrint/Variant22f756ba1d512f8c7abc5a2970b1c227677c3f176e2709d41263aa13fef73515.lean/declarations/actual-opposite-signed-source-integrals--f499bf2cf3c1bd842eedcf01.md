# actual_opposite_signed_source_integrals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0402e9994fa2fb496e0f16a4c5516acdb91b94d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22f756ba1d512f8c7abc5a2970b1c227677c3f176e2709d41263aa13fef73515.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e351985a-eca3-c298-73d2-a00c2f93c01b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2742070f-6e62-944c-c7e0-ba64aec57815",
  "kind": "theorem",
  "lexical_name": "actual_opposite_signed_source_integrals",
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
  "slug": "actual-opposite-signed-source-integrals--f499bf2cf3c1bd842eedcf01",
  "source": {
    "blob": "0402e9994fa2fb496e0f16a4c5516acdb91b94d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrint/Variant22f756ba1d512f8c7abc5a2970b1c227677c3f176e2709d41263aa13fef73515.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f499bf2cf3c1bd842eedcf01f245e28b720bbc9c8fc6e4f86d36a57765233c19",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrint/Variant22f756ba1d512f8c7abc5a2970b1c227677c3f176e2709d41263aa13fef73515.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2742070f-6e62-944c-c7e0-ba64aec57815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_opposite_signed_source_integrals {A : ℝ} (hA : 8000 ≤ A) :
    (0 < ∫ u in 0..2*A, pairedTailTest A u) ∧
      (1/2 : ℝ)*(∫ u in 0..2*A, criticalDecay u*pairedTailTest A u) < 0 := by
  have h1 : 1 ≤ A := by linarith
  constructor
  · rw [pairedTailTest_integral_eq h1]
    exact pairedTailTest_drift_pos h1
  · rw [criticalDensity_weighted_pairedTailTest h1]
    have hc := diagonalMainCoefficient_ge_one_div_four_thousand h1
    have hs := mul_le_mul_of_nonneg_right hc (show 0 ≤ A by linarith)
    have hb := (criticalDecayNegativeMean_mem_Icc h1).1
    linarith

/-- A density bounded above by one can increase this actual signed source integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrint/Variant22f756ba1d512f8c7abc5a2970b1c227677c3f176e2709d41263aa13fef73515.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixturesPrint/Variant22f756ba1d512f8c7abc5a2970b1c227677c3f176e2709d41263aa13fef73515.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0402e9994fa2fb496e0f16a4c5516acdb91b94d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
