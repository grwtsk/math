# tendsto_of_forall_isOpen_le_liminf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bbd2017-ff00-4149-8266-de233a64ea93",
  "kind": "theorem",
  "lexical_name": "tendsto_of_forall_isOpen_le_liminf",
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
  "slug": "tendsto-of-forall-isopen-le-liminf--4ae962e32a869975d7979012",
  "source": {
    "blob": "cd4a6d1837c264488b6cefcf7402bf52a1549d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 600,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ae962e32a869975d7979012e47e8cbc8391192c77171c71f25ebe4d97df9ef6",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bbd2017-ff00-4149-8266-de233a64ea93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_of_forall_isOpen_le_liminf {ι : Type*} {μ : ProbabilityMeasure Ω}
    {μs : ι → ProbabilityMeasure Ω} {L : Filter ι} [L.IsCountablyGenerated]
    (h_opens : ∀ G, IsOpen G → μ G ≤ L.liminf (fun i ↦ μs i G)) :
    L.Tendsto (fun i ↦ μs i) (𝓝 μ) := by
  apply Filter.tendsto_of_seq_tendsto fun u hu ↦ ?_
  apply tendsto_of_forall_isOpen_le_liminf_nat fun G hG ↦ (h_opens G hG).trans ?_
  change _ ≤ atTop.liminf ((fun i ↦ μs i G) ∘ u)
  rw [liminf_comp]
  refine liminf_le_liminf_of_le hu (by isBoundedDefault) ?_
  exact isBoundedUnder_of ⟨1, by simp⟩ |>.isCoboundedUnder_ge

end le_liminf_open_implies_convergence

section Closed

variable {Ω ι : Type*} {mΩ : MeasurableSpace Ω} [TopologicalSpace Ω] [OpensMeasurableSpace Ω]
    {μ : ProbabilityMeasure Ω} {μs : ι → ProbabilityMeasure Ω}
    {L : Filter ι} [L.IsCountablyGenerated]

/-- One implication of the portmanteau theorem: if for all closed sets `F` we have the limsup
condition `limsup μsₙ(F) ≤ μ(F)`, then the measures `μsₙ` converge weakly to the measure `μ`.
Formulated here for countably generated filters.

This lemma uses a coercion from `ProbabilityMeasure` to `Measure` in the hypothesis.
See `tendsto_of_forall_isClosed_limsup_le` for the version without coercion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd4a6d1837c264488b6cefcf7402bf52a1549d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
