# truncated_square_fringe_differs_from_full

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f159a09-1e95-9dff-1c2c-2b25ecb77867",
  "kind": "theorem",
  "lexical_name": "truncated_square_fringe_differs_from_full",
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
  "slug": "truncated-square-fringe-differs-from-full--657e130709dae83c1b579f10",
  "source": {
    "blob": "a206e027e6ce3950667b301c6a81c701355c61c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 213,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Varianta5b4c541cba5030bc598a9894d0a7457f722c9fb36bacf6fa32dfa7efde889f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:657e130709dae83c1b579f107ae1d679dee55ea4e393bead1b975b8fd1a65ebd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Varianta5b4c541cba5030bc598a9894d0a7457f722c9fb36bacf6fa32dfa7efde889f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f159a09-1e95-9dff-1c2c-2b25ecb77867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncated_square_fringe_differs_from_full :
    (shortPart 2 (moebius : ArithmeticFunction ℝ) * shortPart 2 vonMangoldt) 4 ≠
      ((moebius : ArithmeticFunction ℝ) * vonMangoldt) 4 := by
  rw [truncated_coefficient_two_four, full_coefficient_four_zero]
  exact neg_ne_zero.mpr (Real.log_pos (by norm_num : (1 : ℝ) < 2)).ne'

end
end FormalResearch.RiemannHypothesis.SourceCorrelatedShortSamplingPayment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Varianta5b4c541cba5030bc598a9894d0a7457f722c9fb36bacf6fa32dfa7efde889f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Varianta5b4c541cba5030bc598a9894d0a7457f722c9fb36bacf6fa32dfa7efde889f2.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a206e027e6ce3950667b301c6a81c701355c61c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
