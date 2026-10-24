# filtrationOfSet_eq_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5c9d096-8700-e6d3-c05e-70329f09aec4",
  "kind": "theorem",
  "lexical_name": "filtrationOfSet_eq_natural",
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
  "slug": "filtrationofset-eq-natural--37c8639aef0c05021ec35eb8",
  "source": {
    "blob": "9f45749d3fc89b982da163f5915bbbdf22be1ee9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 279,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37c8639aef0c05021ec35eb8a4a49f1c4ac125f7f094b42dcdd3d50c1ddd04e2",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5c9d096-8700-e6d3-c05e-70329f09aec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filtrationOfSet_eq_natural [MulZeroOneClass β] [Nontrivial β] {s : ι → Set Ω}
    (hsm : ∀ i, MeasurableSet[m] (s i)) :
    filtrationOfSet hsm = natural (fun i => (s i).indicator (fun _ => 1 : Ω → β)) fun i =>
      stronglyMeasurable_one.indicator (hsm i) := by
  simp only [filtrationOfSet, natural, measurableSpace_iSup_eq, exists_prop, mk.injEq]
  ext1 i
  refine le_antisymm (generateFrom_le ?_) (generateFrom_le ?_)
  · rintro _ ⟨j, hij, rfl⟩
    refine measurableSet_generateFrom ⟨j, measurableSet_generateFrom ⟨hij, ?_⟩⟩
    rw [comap_eq_generateFrom]
    refine measurableSet_generateFrom ⟨{1}, measurableSet_singleton 1, ?_⟩
    ext x
    simp [Set.indicator_const_preimage_eq_union]
  · rintro t ⟨n, ht⟩
    suffices MeasurableSpace.generateFrom {t | n ≤ i ∧
      MeasurableSet[MeasurableSpace.comap ((s n).indicator (fun _ => 1 : Ω → β)) mβ] t} ≤
        MeasurableSpace.generateFrom {t | ∃ (j : ι), j ≤ i ∧ s j = t} by
      exact this _ ht
    refine generateFrom_le ?_
    rintro t ⟨hn, u, _, hu'⟩
    obtain heq | heq | heq | heq := Set.indicator_const_preimage (s n) u (1 : β)
    on_goal 4 => rw [Set.mem_singleton_iff] at heq
    all_goals rw [heq] at hu'; rw [← hu']
    exacts [MeasurableSet.univ, measurableSet_generateFrom ⟨n, hn, rfl⟩,
      MeasurableSet.compl (measurableSet_generateFrom ⟨n, hn, rfl⟩), measurableSet_empty _]

end

section Limit

variable {E : Type*} [Zero E] [TopologicalSpace E] {ℱ : Filtration ι m} {f : ι → Ω → E}
  {μ : Measure Ω}

open scoped Classical in
/-- Given a process `f` and a filtration `ℱ`, if `f` converges to some `g` almost everywhere and
`g` is `⨆ n, ℱ n`-measurable, then `limitProcess f ℱ μ` chooses said `g`, else it returns 0.

This definition is used to phrase the a.e. martingale convergence theorem
`Submartingale.ae_tendsto_limitProcess` where an L¹-bounded submartingale `f` adapted to `ℱ`
converges to `limitProcess f ℱ μ` `μ`-almost everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f45749d3fc89b982da163f5915bbbdf22be1ee9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
