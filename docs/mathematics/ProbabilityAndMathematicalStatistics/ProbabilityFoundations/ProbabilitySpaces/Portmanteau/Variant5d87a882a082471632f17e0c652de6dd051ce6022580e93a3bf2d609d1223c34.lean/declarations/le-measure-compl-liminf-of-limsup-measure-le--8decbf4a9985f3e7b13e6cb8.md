# le_measure_compl_liminf_of_limsup_measure_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eae51b7d85b1a0380f70d247544ca9f1d09da059",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa7122bd-d335-414a-076b-7da1747be27d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60d8e9cb-8ecc-99d7-ca95-c73a1cff3513",
  "kind": "theorem",
  "lexical_name": "le_measure_compl_liminf_of_limsup_measure_le",
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
  "slug": "le-measure-compl-liminf-of-limsup-measure-le--8decbf4a9985f3e7b13e6cb8",
  "source": {
    "blob": "eae51b7d85b1a0380f70d247544ca9f1d09da059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 110,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8decbf4a9985f3e7b13e6cb8d05c78e15c18f8eb1403abbc05d338042c5c29d3",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60d8e9cb-8ecc-99d7-ca95-c73a1cff3513`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_measure_compl_liminf_of_limsup_measure_le {ι : Type*} {L : Filter ι} {μ : Measure Ω}
    {μs : ι → Measure Ω} [IsProbabilityMeasure μ] [∀ i, IsProbabilityMeasure (μs i)] {E : Set Ω}
    (E_mble : MeasurableSet E) (h : (L.limsup fun i => μs i E) ≤ μ E) :
    μ Eᶜ ≤ L.liminf fun i => μs i Eᶜ := by
  rcases L.eq_or_neBot with rfl | hne
  · simp only [liminf_bot, le_top]
  have meas_Ec : μ Eᶜ = 1 - μ E := by
    simpa only [measure_univ] using measure_compl E_mble (measure_lt_top μ E).ne
  have meas_i_Ec : ∀ i, μs i Eᶜ = 1 - μs i E := by
    intro i
    simpa only [measure_univ] using measure_compl E_mble (measure_lt_top (μs i) E).ne
  simp_rw [meas_Ec, meas_i_Ec]
  have obs :
    (L.liminf fun i : ι => 1 - μs i E) = L.liminf ((fun x => 1 - x) ∘ fun i : ι => μs i E) := by rfl
  rw [obs]
  have := antitone_const_tsub.map_limsup_of_continuousAt (F := L)
    (fun i => μs i E) (ENNReal.continuous_sub_left ENNReal.one_ne_top).continuousAt
  simp_rw [← this]
  exact antitone_const_tsub h
#align measure_theory.le_measure_compl_liminf_of_limsup_measure_le MeasureTheory.le_measure_compl_liminf_of_limsup_measure_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eae51b7d85b1a0380f70d247544ca9f1d09da059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
