# condIndepFun_of_measurable_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a148c34fac1e3b9d2d18a8963bef9c0592dc99ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 729,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e5d3af75cbb08aae0a2612bd6e6641261e6e37e7f93aa7e47867b26edad7368.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29345b90-8815-b763-5560-296ae582b91f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46fdc02b-f410-30ec-30d2-2cf90b1a04dc",
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
  "slug": "condindepfun-of-measurable-left--e26f1db36f92fa7732085151",
  "source": {
    "blob": "a148c34fac1e3b9d2d18a8963bef9c0592dc99ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 745,
    "line": 729,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant2e5d3af75cbb08aae0a2612bd6e6641261e6e37e7f93aa7e47867b26edad7368.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e26f1db36f92fa7732085151e6879162224da5eac4d6aae059ed7cca9545526a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant2e5d3af75cbb08aae0a2612bd6e6641261e6e37e7f93aa7e47867b26edad7368.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46fdc02b-f410-30ec-30d2-2cf90b1a04dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–745.

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

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant2e5d3af75cbb08aae0a2612bd6e6641261e6e37e7f93aa7e47867b26edad7368.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant2e5d3af75cbb08aae0a2612bd6e6641261e6e37e7f93aa7e47867b26edad7368.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a148c34fac1e3b9d2d18a8963bef9c0592dc99ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
