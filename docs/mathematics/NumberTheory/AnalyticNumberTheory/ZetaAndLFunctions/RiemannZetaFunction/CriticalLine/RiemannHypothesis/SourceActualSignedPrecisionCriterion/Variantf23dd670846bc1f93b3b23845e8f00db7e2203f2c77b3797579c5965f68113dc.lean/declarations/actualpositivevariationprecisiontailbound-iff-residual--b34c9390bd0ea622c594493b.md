# actualPositiveVariationPrecisionTailBound_iff_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04b82cef-d62d-1082-170a-baa7eaa7030b",
  "kind": "theorem",
  "lexical_name": "actualPositiveVariationPrecisionTailBound_iff_residual",
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
  "slug": "actualpositivevariationprecisiontailbound-iff-residual--b34c9390bd0ea622c594493b",
  "source": {
    "blob": "5098ac25e69ddbb88fd3e4cc38844e7e766c62a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 65,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variantf23dd670846bc1f93b3b23845e8f00db7e2203f2c77b3797579c5965f68113dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b34c9390bd0ea622c594493bbf5be632620f0f8091c78ac0ae52d721d836e25e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variantf23dd670846bc1f93b3b23845e8f00db7e2203f2c77b3797579c5965f68113dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04b82cef-d62d-1082-170a-baa7eaa7030b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPositiveVariationPrecisionTailBound_iff_residual :
    ActualPositiveVariationPrecisionTailBound ↔
      ∃ K : ℝ, 0 ≤ K ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
        mertensResidual A ≤ K := by
  constructor
  · rintro ⟨K,hK,R,hR,hcap⟩
    refine ⟨K,hK,R,hR,?_⟩
    intro A hA
    obtain ⟨hV,hp⟩ := hcap A hA
    exact (actualResidual_le_iff_positive_fraction (hR.trans hA) hV).mpr hp
  · rintro ⟨K,hK,R,hR,hcap⟩
    obtain ⟨Rv,hRv,hv⟩ := actualClosedAbsolutePrimeMoment_eventually_lower
    refine ⟨K,hK,max R Rv,hR.trans (le_max_left _ _),?_⟩
    intro A hA
    have hAr : R ≤ A := (le_max_left _ _).trans hA
    have hAv : Rv ≤ A := (le_max_right _ _).trans hA
    have hAp : 0 < A := by linarith [hR.trans hAr]
    have hpos : 0 < (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 := by
      have hc := actualNegativeEdgeConstant_pos
      positivity
    have hV := hpos.trans_le (hv A hAv)
    exact ⟨hV,(actualResidual_le_iff_positive_fraction (hR.trans hAr) hV).mp
      (hcap A hAr)⟩

/-- The actual one-sided fraction criterion is equivalent to the original Estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variantf23dd670846bc1f93b3b23845e8f00db7e2203f2c77b3797579c5965f68113dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variantf23dd670846bc1f93b3b23845e8f00db7e2203f2c77b3797579c5965f68113dc.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5098ac25e69ddbb88fd3e4cc38844e7e766c62a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
