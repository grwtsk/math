# _root_.IsPiSystem.tendsto_measureReal_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f294c28555f406334e7150d6c9bad95a2eeda0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 748,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2fb264fe-9ea8-4e17-bdbf-f215fc442075",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d8305cb-c0d4-3406-c1d7-2925e13cd1ae",
  "kind": "lemma",
  "lexical_name": "_root_.IsPiSystem.tendsto_measureReal_biUnion",
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
  "slug": "root-ispisystem-tendsto-measurereal-biunion--7a910c24a1a4ee2e7cc14451",
  "source": {
    "blob": "1f294c28555f406334e7150d6c9bad95a2eeda0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 748,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a910c24a1a4ee2e7cc1445101f428db5866b37b6265368f9705b1402914f20c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d8305cb-c0d4-3406-c1d7-2925e13cd1ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 748–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.IsPiSystem.tendsto_measureReal_biUnion
    {S : Set (Set Ω)} (hS : IsPiSystem S) {μ : ι → Measure Ω} {ν : Measure Ω} {l : Filter ι}
    {t : Finset (Set Ω)} (ht : ∀ s ∈ t, s ∈ S)
    (hmeas : ∀ s ∈ S, MeasurableSet s)
    (h : ∀ s ∈ S, Tendsto (fun i ↦ (μ i).real s) l (𝓝 (ν.real s)))
    (hν : ∀ s ∈ S, ν s ≠ ∞ := by finiteness)
    (hμ : ∀ s ∈ S, ∀ i, μ i s ≠ ∞ := by finiteness) :
    Tendsto (fun i ↦ (μ i).real (⋃ s ∈ t, s)) l (𝓝 (ν.real (⋃ s ∈ t, s))) := by
  /- This statement is not completely obvious, as `⋃ s ∈ t, s` does not belong to the π-system `S`.
  However, thanks to the inclusion-exclusion formula one may express its measure in terms of
  measures of elements of `S`, from which the result follows. -/
  have A (i) : (μ i).real (⋃ s ∈ t, s) = ∑ u ∈ t.powerset with u.Nonempty,
      (-1 : ℝ) ^ (#u + 1) * (μ i).real (⋂ s ∈ u, s) :=
    measureReal_biUnion_eq_sum_powerset (fun s hs ↦ hmeas _ (ht _ hs))
      (fun s hs ↦ hμ _ (ht _ hs) i)
  simp_rw [A, measureReal_biUnion_eq_sum_powerset (fun s hs ↦ hmeas _ (ht _ hs))
    (fun s hs ↦ hν _ (ht _ hs))]
  refine tendsto_finsetSum _ (fun u hu ↦ ?_)
  simp only [Finset.mem_filter, Finset.mem_powerset] at hu
  apply Filter.Tendsto.const_mul
  rcases eq_empty_or_nonempty (⋂ s ∈ u, s) with h'u | h'u
  · simpa [h'u] using tendsto_const_nhds
  apply h
  exact hS.biInter_mem hu.2 (fun s hs ↦ ht _ (hu.1 hs)) h'u

/-- Given a π-system, if a sequence of probability measures converges along all elements of
the π-system, then it also converges along finite unions of elements of the π-system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.lean#L748).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f294c28555f406334e7150d6c9bad95a2eeda0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
