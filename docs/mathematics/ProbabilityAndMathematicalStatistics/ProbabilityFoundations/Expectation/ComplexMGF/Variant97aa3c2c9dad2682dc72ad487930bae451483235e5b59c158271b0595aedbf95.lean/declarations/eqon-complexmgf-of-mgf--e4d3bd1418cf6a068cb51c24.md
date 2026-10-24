# eqOn_complexMGF_of_mgf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad5feb87-6c68-8c62-5f32-f103e5134fad",
  "kind": "lemma",
  "lexical_name": "eqOn_complexMGF_of_mgf'",
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
  "slug": "eqon-complexmgf-of-mgf--e4d3bd1418cf6a068cb51c24",
  "source": {
    "blob": "b40a2821163f629b067094724bf5d041fa3f58da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 276,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4d3bd1418cf6a068cb51c249dc0b93a20fb71d534f0e4f4a1b3e78fcff6485e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad5feb87-6c68-8c62-5f32-f103e5134fad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eqOn_complexMGF_of_mgf' (hXY : mgf X μ = mgf Y μ') (hμμ' : μ = 0 ↔ μ' = 0) :
    Set.EqOn (complexMGF X μ) (complexMGF Y μ') {z | z.re ∈ interior (integrableExpSet X μ)} := by
  by_cases h_empty : interior (integrableExpSet X μ) = ∅
  · simp [h_empty]
  rw [← ne_eq, ← Set.nonempty_iff_ne_empty] at h_empty
  obtain ⟨t, ht⟩ := h_empty
  have hX : AnalyticOnNhd ℂ (complexMGF X μ) {z | z.re ∈ interior (integrableExpSet X μ)} :=
    analyticOnNhd_complexMGF
  have hY : AnalyticOnNhd ℂ (complexMGF Y μ') {z | z.re ∈ interior (integrableExpSet Y μ')} :=
    analyticOnNhd_complexMGF
  rw [integrableExpSet_eq_of_mgf' hXY hμμ'] at hX ht ⊢
  refine AnalyticOnNhd.eqOn_of_preconnected_of_frequently_eq hX hY
    (convex_integrableExpSet.interior.linear_preimage reLm).isPreconnected
    (z₀ := (t : ℂ)) (by simp [ht]) ?_
  have h_real : ∃ᶠ (x : ℝ) in 𝓝[≠] t, complexMGF X μ x = complexMGF Y μ' x := by
    refine .of_forall fun y ↦ ?_
    rw [complexMGF_ofReal, complexMGF_ofReal, hXY]
  rw [frequently_iff_seq_forall] at h_real ⊢
  obtain ⟨xs, hx_tendsto, hx_eq⟩ := h_real
  refine ⟨fun n ↦ xs n, ?_, fun n ↦ ?_⟩
  · rw [tendsto_nhdsWithin_iff] at hx_tendsto ⊢
    constructor
    · rw [tendsto_ofReal_iff]
      exact hx_tendsto.1
    · simpa using hx_tendsto.2
  · simp [hx_eq]

/-- If two random variables have the same moment generating function then they have
the same `complexMGF` on the vertical strip `{z | z.re ∈ interior (integrableExpSet X μ)}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b40a2821163f629b067094724bf5d041fa3f58da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
