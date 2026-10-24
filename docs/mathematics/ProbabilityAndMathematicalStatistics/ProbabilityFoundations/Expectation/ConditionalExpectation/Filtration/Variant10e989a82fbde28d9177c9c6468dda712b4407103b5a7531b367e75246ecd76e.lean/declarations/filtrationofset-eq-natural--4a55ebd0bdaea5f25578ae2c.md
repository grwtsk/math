# filtrationOfSet_eq_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d56f65c1c3d6a2f363858e7ab2b8b7da2fe3ea28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f576116-4752-12cc-aec1-310a01be4722",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf8efe08-8ed7-e471-c5ae-016b47d1ecb8",
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
  "slug": "filtrationofset-eq-natural--4a55ebd0bdaea5f25578ae2c",
  "source": {
    "blob": "d56f65c1c3d6a2f363858e7ab2b8b7da2fe3ea28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 281,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a55ebd0bdaea5f25578ae2c6f402f804db9c1d863b4cf9f89026ff80b7fb66c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf8efe08-8ed7-e471-c5ae-016b47d1ecb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem filtrationOfSet_eq_natural [MulZeroOneClass β] [Nontrivial β] {s : ι → Set Ω}
    (hsm : ∀ i, MeasurableSet[m] (s i)) :
    filtrationOfSet hsm = natural (fun i => (s i).indicator (fun _ => 1 : Ω → β)) fun i =>
      stronglyMeasurable_one.indicator (hsm i) := by
  simp [natural, filtrationOfSet, measurableSpace_iSup_eq]
  ext1 i
  refine' le_antisymm (generateFrom_le _) (generateFrom_le _)
  · rintro _ ⟨j, hij, rfl⟩
    refine' measurableSet_generateFrom ⟨j, measurableSet_generateFrom ⟨hij, _⟩⟩
    rw [comap_eq_generateFrom]
    refine' measurableSet_generateFrom ⟨{1}, measurableSet_singleton 1, _⟩
    ext x
    simp [Set.indicator_const_preimage_eq_union]
  · rintro t ⟨n, ht⟩
    suffices MeasurableSpace.generateFrom {t | n ≤ i ∧
      MeasurableSet[MeasurableSpace.comap ((s n).indicator (fun _ => 1 : Ω → β)) mβ] t} ≤
        MeasurableSpace.generateFrom {t | ∃ (j : ι), j ≤ i ∧ s j = t} by
      exact this _ ht
    refine' generateFrom_le _
    rintro t ⟨hn, u, _, hu'⟩
    obtain heq | heq | heq | heq := Set.indicator_const_preimage (s n) u (1 : β)
    pick_goal 4; rw [Set.mem_singleton_iff] at heq
    all_goals rw [heq] at hu'; rw [← hu']
    exacts [measurableSet_empty _, MeasurableSet.univ, measurableSet_generateFrom ⟨n, hn, rfl⟩,
      MeasurableSet.compl (measurableSet_generateFrom ⟨n, hn, rfl⟩)]
#align measure_theory.filtration.filtration_of_set_eq_natural MeasureTheory.Filtration.filtrationOfSet_eq_natural

end

section Limit

variable {E : Type*} [Zero E] [TopologicalSpace E] {ℱ : Filtration ι m} {f : ι → Ω → E}
  {μ : Measure Ω}

/-- Given a process `f` and a filtration `ℱ`, if `f` converges to some `g` almost everywhere and
`g` is `⨆ n, ℱ n`-measurable, then `limitProcess f ℱ μ` chooses said `g`, else it returns 0.

This definition is used to phrase the a.e. martingale convergence theorem
`Submartingale.ae_tendsto_limitProcess` where an L¹-bounded submartingale `f` adapted to `ℱ`
converges to `limitProcess f ℱ μ` `μ`-almost everywhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant10e989a82fbde28d9177c9c6468dda712b4407103b5a7531b367e75246ecd76e.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d56f65c1c3d6a2f363858e7ab2b8b7da2fe3ea28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
