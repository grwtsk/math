# limsup_measure_closed_le_iff_liminf_measure_open_ge

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
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cbb7942-f00a-d7b8-0acf-1623dc90abc4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc2e7f39-f13d-266b-1200-b0376be86544",
  "kind": "theorem",
  "lexical_name": "limsup_measure_closed_le_iff_liminf_measure_open_ge",
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
  "slug": "limsup-measure-closed-le-iff-liminf-measure-open-ge--a1f09be454ac103dfcda3496",
  "source": {
    "blob": "1f294c28555f406334e7150d6c9bad95a2eeda0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 175,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1f09be454ac103dfcda34965707681f0f64cc8499d1daff70cf921809db5dfe",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc2e7f39-f13d-266b-1200-b0376be86544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limsup_measure_closed_le_iff_liminf_measure_open_ge {ι : Type*} {L : Filter ι}
    {μ : Measure Ω} {μs : ι → Measure Ω} [IsProbabilityMeasure μ]
    [∀ i, IsProbabilityMeasure (μs i)] :
    (∀ F, IsClosed F → (L.limsup fun i ↦ μs i F) ≤ μ F) ↔
      ∀ G, IsOpen G → μ G ≤ L.liminf fun i ↦ μs i G := by
  constructor
  · intro h G G_open
    exact le_measure_liminf_of_limsup_measure_compl_le
      G_open.measurableSet (h Gᶜ (isClosed_compl_iff.mpr G_open))
  · intro h F F_closed
    exact limsup_measure_le_of_le_liminf_measure_compl
      F_closed.measurableSet (h Fᶜ (isOpen_compl_iff.mpr F_closed))

end LimsupClosedLEAndLELiminfOpen -- section

section TendstoOfNullFrontier

/-! ### Portmanteau: limit of measures of Borel sets whose boundary carries no mass in the limit

In this section we prove that for a sequence of Borel probability measures on a topological space
and its candidate limit measure, either of the following equivalent conditions:

  (C) For any closed set F, the limsup of the measures of F under μs is at most
      the measure of F under μ, i.e., limsupᵢ μsᵢ(F) ≤ μ(F);
  (O) For any open set G, the liminf of the measures of G under μs is at least
      the measure of G under μ, i.e., μ(G) ≤ liminfᵢ μsᵢ(G).

implies that

  (B) For any Borel set B whose boundary carries no mass under μ, i.e. μ(∂B) = 0,
      the measures of B under μs tend to the measure of B under μ, i.e., limᵢ μsᵢ(B) = μ(B).
-/


variable {Ω : Type*} [MeasurableSpace Ω]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variantfbaa7efb755ab9cbf353daf52e395ec5a156c448b3567170d45590da54224300.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f294c28555f406334e7150d6c9bad95a2eeda0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
