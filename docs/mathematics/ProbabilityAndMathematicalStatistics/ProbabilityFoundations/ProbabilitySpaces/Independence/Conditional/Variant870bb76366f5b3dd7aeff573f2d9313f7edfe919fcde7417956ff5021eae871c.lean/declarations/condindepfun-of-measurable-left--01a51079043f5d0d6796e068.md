# condIndepFun_of_measurable_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:720b46fa-61f8-5b0e-51fe-ca29094ac37f",
  "kind": "lemma",
  "lexical_name": "condIndepFun_of_measurable_left",
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
  "slug": "condindepfun-of-measurable-left--01a51079043f5d0d6796e068",
  "source": {
    "blob": "8943eee9b4e0db33c8e019ea8f2dfb1f805d1890",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 753,
    "line": 737,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01a51079043f5d0d6796e0684c2e89cd0d8cfc8946c96c4201dcb67efeec1d31",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:720b46fa-61f8-5b0e-51fe-ca29094ac37f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–753.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condIndepFun_of_measurable_left {mβ : MeasurableSpace β} {mβ' : MeasurableSpace β'}
    {X : Ω → β} {Y : Ω → β'} (hX : Measurable[m'] X) (hY : Measurable Y) :
    CondIndepFun m' hm' X Y μ := by
  rw [condIndepFun_iff _ hm' _ _ (hX.mono hm' le_rfl) hY]
  rintro _ _ ⟨s, hs, rfl⟩ ⟨t, ht, rfl⟩
  rw [show (fun ω : Ω ↦ (1 : ℝ)) = 1 from rfl, Set.inter_indicator_one]
  calc μ[(X ⁻¹' s).indicator 1 * (Y ⁻¹' t).indicator 1 | m']
  _ =ᵐ[μ] (X ⁻¹' s).indicator 1 * μ[(Y ⁻¹' t).indicator 1 | m'] := by
    refine condExp_stronglyMeasurable_mul_of_bound hm' (stronglyMeasurable_const.indicator (hX hs))
      ((integrable_indicator_iff (hY ht)).2 integrableOn_const) 1 (ae_of_all μ fun ω ↦ ?_)
    rw [Set.indicator]
    split_ifs with h <;> simp
  _ =ᵐ[μ] μ[(X ⁻¹' s).indicator 1 | m'] * μ[(Y ⁻¹' t).indicator 1 | m'] := by
    nth_rw 2 [condExp_of_stronglyMeasurable hm']
    · exact stronglyMeasurable_const.indicator (hX hs)
    · exact (integrable_indicator_iff ((hX.le hm') hs)).2 integrableOn_const

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8943eee9b4e0db33c8e019ea8f2dfb1f805d1890` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
