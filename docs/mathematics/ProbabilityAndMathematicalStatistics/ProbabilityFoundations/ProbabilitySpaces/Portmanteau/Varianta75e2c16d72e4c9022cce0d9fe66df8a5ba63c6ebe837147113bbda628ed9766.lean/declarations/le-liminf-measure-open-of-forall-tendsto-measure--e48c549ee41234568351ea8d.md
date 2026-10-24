# le_liminf_measure_open_of_forall_tendsto_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0655d7a8-4b3e-9593-1d22-d012ce1c172c",
  "kind": "lemma",
  "lexical_name": "le_liminf_measure_open_of_forall_tendsto_measure",
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
  "slug": "le-liminf-measure-open-of-forall-tendsto-measure--e48c549ee41234568351ea8d",
  "source": {
    "blob": "14bfefe7634f73bf560897022dc579d3b9efc875",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 446,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e48c549ee41234568351ea8d77442274ac0202423b04b32e3ca22cee00803631",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0655d7a8-4b3e-9593-1d22-d012ce1c172c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_liminf_measure_open_of_forall_tendsto_measure
    {Ω ι : Type*} {L : Filter ι}
    [MeasurableSpace Ω] [PseudoEMetricSpace Ω] [OpensMeasurableSpace Ω]
    {μ : Measure Ω} [IsProbabilityMeasure μ] {μs : ι → Measure Ω} [∀ i, IsProbabilityMeasure (μs i)]
    (h : ∀ {E}, MeasurableSet E → μ (frontier E) = 0 → Tendsto (fun i ↦ μs i E) L (𝓝 (μ E)))
    (G : Set Ω) (G_open : IsOpen G) :
    μ G ≤ L.liminf (fun i ↦ μs i G) := by
  apply le_measure_liminf_of_limsup_measure_compl_le G_open.measurableSet
  exact limsup_measure_closed_le_of_forall_tendsto_measure h _ (isClosed_compl_iff.mpr G_open)

end LimitBorelImpliesLimsupClosedLE --section

section le_liminf_open_implies_convergence

/-! ### Portmanteau implication: liminf condition for open sets implies weak convergence


In this section we prove for a sequence (μsₙ)ₙ Borel probability measures that

  (O) For any open set G, the liminf of the measures of G under μsₙ is at least
      the measure of G under μ, i.e., μ(G) ≤ liminfₙ μsₙ(G).

implies

  (T) The measures μsₙ converge weakly to the measure μ.

-/

variable {Ω : Type*} [MeasurableSpace Ω] [TopologicalSpace Ω] [OpensMeasurableSpace Ω]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14bfefe7634f73bf560897022dc579d3b9efc875` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
