# retained_fringe_coefficients_have_two_signs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7de9666-7cb6-1db5-3bfe-1c41e1546e57",
  "kind": "theorem",
  "lexical_name": "retained_fringe_coefficients_have_two_signs",
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
  "slug": "retained-fringe-coefficients-have-two-signs--92739ae84448aff2fde7d633",
  "source": {
    "blob": "6d75b300f9b078c913f3a1064c798d969080ff66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 86,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantbbca650c4001ed9f758b99e2285c229be68bf2801eb630d0009b06f322333fc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92739ae84448aff2fde7d633d3f4752c05aec46778072ec2d7935f117fcb5bd1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantbbca650c4001ed9f758b99e2285c229be68bf2801eb630d0009b06f322333fc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7de9666-7cb6-1db5-3bfe-1c41e1546e57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem retained_fringe_coefficients_have_two_signs :
    (shortPart 2 (moebius : ArithmeticFunction ℝ) * shortPart 2 vonMangoldt) 4 < 0 ∧
      0 < (shortPart 6 (moebius : ArithmeticFunction ℝ) * shortPart 6 vonMangoldt) 18 := by
  rw [truncated_coefficient_two_four, truncated_coefficient_six_eighteen]
  constructor
  · linarith [Real.log_pos (by norm_num : (1 : ℝ) < 2)]
  · exact Real.log_pos (by norm_num : (1 : ℝ) < 3)

end
end FormalResearch.RiemannHypothesis.SourceCorrelatedPaymentFringeSigns
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantbbca650c4001ed9f758b99e2285c229be68bf2801eb630d0009b06f322333fc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantbbca650c4001ed9f758b99e2285c229be68bf2801eb630d0009b06f322333fc6.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d75b300f9b078c913f3a1064c798d969080ff66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
