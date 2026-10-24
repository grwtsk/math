# record_summable_iff_levels_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebd9a782-1a56-855e-70b3-701db6c40c86",
  "kind": "theorem",
  "lexical_name": "record_summable_iff_levels_bounded",
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
  "slug": "record-summable-iff-levels-bounded--16f9a0a9ad44cb06fce96678",
  "source": {
    "blob": "8d4878ca84797189a2864074d3ec1975c0bec775",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16f9a0a9ad44cb06fce96678f2cd3ace77b0aaafda3a0dfc9a810cd1e5f77455",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebd9a782-1a56-855e-70b3-701db6c40c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem record_summable_iff_levels_bounded (N : ℕ) :
    Summable (primeRecordIncrement N) ↔
      ∃ E : ℝ, 0 ≤ E ∧ ∀ K : ℕ, primeRecordLevel N K ≤ E := by
  constructor
  · intro hsum
    refine ⟨∑' j, primeRecordIncrement N j,
      tsum_nonneg (fun _ => CausalRecords.recordIncrement_nonneg _ _), ?_⟩
    intro K
    rw [← record_sum_eq_level]
    exact hsum.sum_le_tsum (Finset.range K)
      (fun _ _ => CausalRecords.recordIncrement_nonneg _ _)
  · rintro ⟨E, _hE, hbound⟩
    apply summable_of_sum_range_le (f := primeRecordIncrement N) (c := E)
      (fun _ => CausalRecords.recordIncrement_nonneg _ _)
    intro K
    rw [record_sum_eq_level]
    exact hbound K

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RecordSummability/Variantd5dd6eb031fa2bb9a77eee0cf19c70158a05579726d1830eeeb13604bf3fd048.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4878ca84797189a2864074d3ec1975c0bec775` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
