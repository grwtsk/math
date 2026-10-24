# estimate_of_actual_occurrence_square_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92abfd1f-e0d4-413d-ddc1-516de0db4279",
  "kind": "theorem",
  "lexical_name": "estimate_of_actual_occurrence_square_nonneg",
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
  "slug": "estimate-of-actual-occurrence-square-nonneg--9d2f26da5a7912ff3a6f5ae3",
  "source": {
    "blob": "ecb49afd6d33aa39386906c536dcb72477b96bdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 318,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroOrbitGramAudit/Variantdf02dc8fb02ddc112bbd72433faf647d3839b0627dc623c00059e6a0151e7702.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d2f26da5a7912ff3a6f5ae3f892d75f3542f92f089e3ec66d85217e0df9e91c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroOrbitGramAudit/Variantdf02dc8fb02ddc112bbd72433faf647d3839b0627dc623c00059e6a0151e7702.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92abfd1f-e0d4-413d-ddc1-516de0db4279`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_actual_occurrence_square_nonneg (h : ActualOccurrenceSquareNonneg) :
    CorrelationAssembly.EstimateObligation := by
  refine ⟨0, fun A hA ↦ ?_⟩
  obtain ⟨_, _, hs, hscale, hform⟩ := ZeroSide.Assembly.zero_side_identity A hA
  have hn : 0 ≤ (∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2).re := by
    rw [Complex.re_tsum hs]
    exact tsum_nonneg (h A hA)
  have he := congrArg Complex.re (hscale.trans hform)
  simp only [Complex.ofReal_re] at he
  rw [← he] at hn
  exact (mul_nonneg_iff_of_pos_left (source_normalization_pos A hA)).mp hn

/-- The actual-occurrence condition is RH-equivalent; the arbitrary-strip one is false. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroOrbitGramAudit/Variantdf02dc8fb02ddc112bbd72433faf647d3839b0627dc623c00059e6a0151e7702.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroOrbitGramAudit/Variantdf02dc8fb02ddc112bbd72433faf647d3839b0627dc623c00059e6a0151e7702.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb49afd6d33aa39386906c536dcb72477b96bdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
