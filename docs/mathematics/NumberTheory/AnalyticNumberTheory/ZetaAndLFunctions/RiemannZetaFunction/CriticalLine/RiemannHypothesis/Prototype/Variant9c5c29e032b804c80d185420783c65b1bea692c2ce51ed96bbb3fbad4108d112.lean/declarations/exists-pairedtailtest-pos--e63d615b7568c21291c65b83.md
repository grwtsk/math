# exists_pairedTailTest_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:398adcc7-b35e-d6d5-4a37-c4039b652d7a",
  "kind": "theorem",
  "lexical_name": "exists_pairedTailTest_pos",
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
  "slug": "exists-pairedtailtest-pos--e63d615b7568c21291c65b83",
  "source": {
    "blob": "d75422c729ed7c6f8f9e55c43c5f383a655eb5d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant9c5c29e032b804c80d185420783c65b1bea692c2ce51ed96bbb3fbad4108d112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e63d615b7568c21291c65b83cfddb11055e895a32cdaa4c791f2d8a709844487",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant9c5c29e032b804c80d185420783c65b1bea692c2ce51ed96bbb3fbad4108d112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:398adcc7-b35e-d6d5-4a37-c4039b652d7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_pairedTailTest_pos {A : ℝ} (hA : 1 ≤ A) :
    ∃ u ∈ Ioo 0 (2 * A), 0 < pairedTailTest A u := by
  by_contra h
  push_neg at h
  have hnonpos : ∀ u ∈ Icc 0 (2 * A), pairedTailTest A u ≤ 0 := by
    intro u hu
    by_cases hz : u = 0
    · simpa only [hz, pairedTailTest_at_zero hA] using (le_refl (0 : ℝ))
    by_cases hL : u = 2 * A
    · simpa only [hL, pairedTailTest_at_upper hA] using (le_refl (0 : ℝ))
    exact h u ⟨lt_of_le_of_ne hu.1 (Ne.symm hz), lt_of_le_of_ne hu.2 hL⟩
  have hi := intervalIntegral.integral_nonneg (show 0 ≤ 2 * A by linarith)
    (fun u hu => neg_nonneg.mpr (hnonpos u hu))
  rw [intervalIntegral.integral_neg] at hi
  have hpositive : 0 < ∫ u in 0..2 * A, pairedTailTest A u := by
    rw [pairedTailTest_integral_eq hA]
    exact pairedTailTest_drift_pos hA
  linarith

/-- The checked negative band includes this strict interior point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant9c5c29e032b804c80d185420783c65b1bea692c2ce51ed96bbb3fbad4108d112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant9c5c29e032b804c80d185420783c65b1bea692c2ce51ed96bbb3fbad4108d112.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d75422c729ed7c6f8f9e55c43c5f383a655eb5d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
