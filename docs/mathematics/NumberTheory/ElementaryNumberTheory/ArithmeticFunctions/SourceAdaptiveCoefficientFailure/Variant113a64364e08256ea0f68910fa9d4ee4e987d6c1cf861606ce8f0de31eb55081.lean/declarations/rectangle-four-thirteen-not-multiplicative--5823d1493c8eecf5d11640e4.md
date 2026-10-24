# rectangle_four_thirteen_not_multiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65f9d131-23fd-7e6c-ecdf-39317eccf0e4",
  "kind": "theorem",
  "lexical_name": "rectangle_four_thirteen_not_multiplicative",
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
  "slug": "rectangle-four-thirteen-not-multiplicative--5823d1493c8eecf5d11640e4",
  "source": {
    "blob": "b60c36023a40dbf37f99a772b69caeb497083114",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAdaptiveCoefficientFailure/Variant113a64364e08256ea0f68910fa9d4ee4e987d6c1cf861606ce8f0de31eb55081.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5823d1493c8eecf5d11640e465e3940652fb29426c99f448b2aa1fd43f2d3088",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAdaptiveCoefficientFailure/Variant113a64364e08256ea0f68910fa9d4ee4e987d6c1cf861606ce8f0de31eb55081.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65f9d131-23fd-7e6c-ecdf-39317eccf0e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rectangle_four_thirteen_not_multiplicative :
    truncatedConvolution 4 13 (5 * 7) ≠
      truncatedConvolution 4 13 5 * truncatedConvolution 4 13 7 := by
  norm_num only [show (5 * 7 : ℕ) = 35 by norm_num,
    rectangle_four_thirteen_thirty_five]
  exact Ne.symm rectangle_four_thirteen_nonzero_factors

end RH16AdaptiveCoefficientFailure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAdaptiveCoefficientFailure/Variant113a64364e08256ea0f68910fa9d4ee4e987d6c1cf861606ce8f0de31eb55081.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAdaptiveCoefficientFailure/Variant113a64364e08256ea0f68910fa9d4ee4e987d6c1cf861606ce8f0de31eb55081.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60c36023a40dbf37f99a772b69caeb497083114` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
