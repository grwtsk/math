# _root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.LeMeasureComplLiminfOfLimsupMeasureLe.Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.IsPiSystem.tendsto_probabilityMeasure_of_tendsto_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dcf41e6-56e3-7927-a208-43724d2717b4",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.LeMeasureComplLiminfOfLimsupMeasureLe.Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.IsPiSystem.tendsto_probabilityMeasure_of_tendsto_of_mem",
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
  "slug": "root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--2cb126854920b431b4aaa818",
  "source": {
    "blob": "cd4a6d1837c264488b6cefcf7402bf52a1549d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 874,
    "line": 839,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cb126854920b431b4aaa8187b823a47863d00dead7e8642bd5bcd883ae23841",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dcf41e6-56e3-7927-a208-43724d2717b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 839–874.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.LeMeasureComplLiminfOfLimsupMeasureLe.Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.IsPiSystem.tendsto_probabilityMeasure_of_tendsto_of_mem
    [TopologicalSpace Ω] [SecondCountableTopology Ω] [OpensMeasurableSpace Ω]
    {S : Set (Set Ω)} (hS : IsPiSystem S) {μ : ι → ProbabilityMeasure Ω} {ν : ProbabilityMeasure Ω}
    {l : Filter ι} [l.IsCountablyGenerated]
    (hmeas : ∀ s ∈ S, MeasurableSet s)
    (h : ∀ (u : Set Ω), IsOpen u → ∀ x ∈ u, ∃ s ∈ S, s ∈ 𝓝 x ∧ s ⊆ u)
    (h' : ∀ s ∈ S, Tendsto (fun i ↦ μ i s) l (𝓝 (ν s))) :
    Tendsto μ l (𝓝 ν) := by
  /- We apply the portmanteau theorem: it suffices to show that, given an open set `G`
  and `r < ν G`, then for large `i` one has `r < μᵢ G`. For this, we approximate `G` from inside by
  a finite union `G'` of elements of `S`, still with measure `> r`, by Lemma
  `ProbabilityMeasure.exists_lt_measure_biUnion_of_isOpen`. If we have `μᵢ G' → ν G'`,
  then we deduce `r < μᵢ G'` for large `i`, and therefore `r < μᵢ G`.

  Our assumption does not give directly `μᵢ G' → ν G'`, as `G'` does not belong to the π-system `S`.
  However, the inclusion-exclusion formula makes it possible to express `μᵢ G'` and `ν G'` in terms
  of the measures of intersections of elements of `S`, for which we have the convergence. It follows
  that `μᵢ G' → ν G'` holds, concluding the proof. This second step is already formalized in the
  lemma `IsPiSystem.tendsto_probabilityMeasure_biUnion`. -/
  rcases l.eq_or_neBot with rfl | hl
  · simp
  apply tendsto_of_forall_isOpen_le_liminf
  intro G hG
  refine (le_liminf_iff (isCoboundedUnder_ge_of_le (x := 1) l (by simp)) (by isBoundedDefault)).2
    (fun r hr ↦ ?_)
  obtain ⟨T, TS, T_meas, TG⟩ :
      ∃ T : Finset (Set Ω), (∀ t ∈ T, t ∈ S) ∧ (r < ν (⋃ t ∈ T, t)) ∧ (⋃ t ∈ T, t) ⊆ G :=
    ν.exists_lt_measure_biUnion_of_isOpen h hG hr
  have : Tendsto (fun i ↦ μ i (⋃ t ∈ T, t)) l (𝓝 (ν (⋃ t ∈ T, t))) :=
    hS.tendsto_probabilityMeasure_biUnion TS hmeas h'
  filter_upwards [(tendsto_order.1 this).1 r T_meas] with i hi
  exact hi.trans_le <| ProbabilityMeasure.apply_mono _ TG

end convergenceCriterion

end MeasureTheory --namespace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean#L839).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd4a6d1837c264488b6cefcf7402bf52a1549d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
