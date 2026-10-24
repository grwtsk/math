# actual_leading_complete_pairing_fourteen_comparisons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:849668a5-0d2b-ea2e-516e-507bb3669b23",
  "kind": "theorem",
  "lexical_name": "actual_leading_complete_pairing_fourteen_comparisons",
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
  "slug": "actual-leading-complete-pairing-fourteen-comparisons--8bd24785b1220443b6721009",
  "source": {
    "blob": "afa5cf46d2587327d09e4053f353f3af40964587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 275,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variant4bc5dec8d5c6e96a69bc837fa2a2da2d3c95e21f1a32ad6041060079242819c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bd24785b1220443b6721009bbae39f954a4d099ff166ad4aaabce89636f6987",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variant4bc5dec8d5c6e96a69bc837fa2a2da2d3c95e21f1a32ad6041060079242819c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:849668a5-0d2b-ea2e-516e-507bb3669b23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_leading_complete_pairing_fourteen_comparisons {A : ℝ} (hA : 25600 ≤ A) :
    completeCorrectedAbelPairing A - 21 ≤ actualLeadingRenormalizedTail A ∧
      actualLeadingRenormalizedTail A ≤ completeCorrectedAbelPairing A + 18 := by
  have he := abs_le.mp (renormalized_tail_sub_actual_leading_abs_le_fourteen hA)
  have hc := renormalized_tail_complete_pairing_comparisons A hA
  constructor <;> linarith [he.1, he.2, hc.1, hc.2]

/-- The original residual retains its exact source and the fourteen analytic error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variant4bc5dec8d5c6e96a69bc837fa2a2da2d3c95e21f1a32ad6041060079242819c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variant4bc5dec8d5c6e96a69bc837fa2a2da2d3c95e21f1a32ad6041060079242819c6.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa5cf46d2587327d09e4053f353f3af40964587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
