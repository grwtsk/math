# actualReducedOffAxisNegativeDefectTailBound_iff_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ddac355-a98b-cbd8-b0c3-b9d75cc1bcbd",
  "kind": "theorem",
  "lexical_name": "actualReducedOffAxisNegativeDefectTailBound_iff_source",
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
  "slug": "actualreducedoffaxisnegativedefecttailbound-iff-source--610a25770b6889947a26caf2",
  "source": {
    "blob": "ce7a5451786b355253e2e4a3a2d79b9d3a54a4c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variantd17ba33a349914e57b46114dbe82fbe29ba63d1382928a59ed0d36ab129b9a09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:610a25770b6889947a26caf213b72420481907187819a1641c105bde4bbd338f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variantd17ba33a349914e57b46114dbe82fbe29ba63d1382928a59ed0d36ab129b9a09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ddac355-a98b-cbd8-b0c3-b9d75cc1bcbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualReducedOffAxisNegativeDefectTailBound_iff_source :
    ActualReducedOffAxisNegativeDefectTailBound ↔ ActualSourceNegativeDefectTailBound := by
  have he : ∀ᶠ A : ℝ in atTop,
      |actualSourceNegativeDefect A - actualReducedOffAxisNegativeDefect A| ≤ 1 := by
    have hh := (tendsto_order.1 actualNegativeDefect_reducedOffAxis_tendsto_zero.norm).2
      (1 : ℝ) (by norm_num : (0 : ℝ) < 1)
    filter_upwards [hh] with A hA
    simpa only [Real.norm_eq_abs] using le_of_lt hA
  obtain ⟨R0,hR0⟩ := eventually_atTop.1 he
  constructor
  · rintro ⟨K,hK,R,hR,hcap⟩
    refine ⟨K+1,by linarith,max R R0,hR.trans (le_max_left _ _),?_⟩
    intro A hA
    have herr := (abs_le.mp (hR0 A ((le_max_right _ _).trans hA))).2
    have hc := hcap A ((le_max_left _ _).trans hA)
    linarith
  · rintro ⟨K,hK,R,hR,hcap⟩
    refine ⟨K+1,by linarith,max R R0,hR.trans (le_max_left _ _),?_⟩
    intro A hA
    have herr := (abs_le.mp (hR0 A ((le_max_right _ _).trans hA))).1
    have hc := hcap A ((le_max_left _ _).trans hA)
    linarith

/-- This is an exact equivalent target, with every real radius and actual weight retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variantd17ba33a349914e57b46114dbe82fbe29ba63d1382928a59ed0d36ab129b9a09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOffAxisEstimateEquivalence/Variantd17ba33a349914e57b46114dbe82fbe29ba63d1382928a59ed0d36ab129b9a09.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7a5451786b355253e2e4a3a2d79b9d3a54a4c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
