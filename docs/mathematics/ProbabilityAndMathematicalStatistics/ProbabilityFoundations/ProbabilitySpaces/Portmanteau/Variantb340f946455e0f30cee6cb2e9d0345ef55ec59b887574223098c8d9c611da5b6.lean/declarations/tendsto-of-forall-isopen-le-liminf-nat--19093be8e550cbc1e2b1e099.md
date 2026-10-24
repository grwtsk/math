# tendsto_of_forall_isOpen_le_liminf_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dde9c777-26ca-daa7-3e7f-effcb91d775d",
  "kind": "theorem",
  "lexical_name": "tendsto_of_forall_isOpen_le_liminf_nat",
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
  "slug": "tendsto-of-forall-isopen-le-liminf-nat--19093be8e550cbc1e2b1e099",
  "source": {
    "blob": "cd4a6d1837c264488b6cefcf7402bf52a1549d8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 567,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19093be8e550cbc1e2b1e09973351c375df0fd2f65ec763f3f1a7e6da626cee4",
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

Occurrence: `result:dde9c777-26ca-daa7-3e7f-effcb91d775d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_of_forall_isOpen_le_liminf_nat {μ : ProbabilityMeasure Ω}
    {μs : ℕ → ProbabilityMeasure Ω}
    (h_opens : ∀ G, IsOpen G → μ G ≤ atTop.liminf (fun i ↦ μs i G)) :
    atTop.Tendsto (fun i ↦ μs i) (𝓝 μ) := by
  refine tendsto_of_forall_isOpen_le_liminf_nat' fun G G_open ↦ ?_
  specialize h_opens G G_open
  have aux : ENNReal.ofNNReal (liminf (fun i ↦ μs i G) atTop) =
          liminf (ENNReal.ofNNReal ∘ fun i ↦ μs i G) atTop := by
    refine Monotone.map_liminf_of_continuousAt (F := atTop) ENNReal.coe_mono (μs · G) ?_ ?_ ?_
    · exact ENNReal.continuous_coe.continuousAt
    · exact IsBoundedUnder.isCoboundedUnder_ge ⟨1, by simp⟩
    · exact ⟨0, by simp⟩
  have obs := ENNReal.coe_mono h_opens
  simp only [ProbabilityMeasure.ennreal_coeFn_eq_coeFn_toMeasure, aux] at obs
  convert! obs
  simp only [Function.comp_apply, ProbabilityMeasure.ennreal_coeFn_eq_coeFn_toMeasure]

/-- One implication of the portmanteau theorem: if for all open sets `G` we have the liminf
condition `μ(G) ≤ liminf μsₙ(G)`, then the measures `μsₙ` converge weakly to the measure `μ`.

This lemma uses a coercion from `ProbabilityMeasure` to `Measure` in the hypothesis.
See `tendsto_of_forall_isOpen_le_liminf` for the version without coercion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantb340f946455e0f30cee6cb2e9d0345ef55ec59b887574223098c8d9c611da5b6.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd4a6d1837c264488b6cefcf7402bf52a1549d8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
