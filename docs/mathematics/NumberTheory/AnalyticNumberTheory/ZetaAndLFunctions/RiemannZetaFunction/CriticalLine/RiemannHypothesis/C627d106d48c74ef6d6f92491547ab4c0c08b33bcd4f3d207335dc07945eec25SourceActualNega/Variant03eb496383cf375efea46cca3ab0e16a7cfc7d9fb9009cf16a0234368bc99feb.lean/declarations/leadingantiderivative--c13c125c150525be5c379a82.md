# leadingAntiderivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2b5b5d35416a65758d2536e42cc5fd5fe0bd5118d59ea203dc1e4d82df9c9e6",
  "kind": "def",
  "lexical_name": "leadingAntiderivative",
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
  "slug": "leadingantiderivative--c13c125c150525be5c379a82",
  "source": {
    "blob": "76f3ec068f0fda9bc222e514cb82970024c0faec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C627d106d48c74ef6d6f92491547ab4c0c08b33bcd4f3d207335dc07945eec25SourceActualNega/Variant03eb496383cf375efea46cca3ab0e16a7cfc7d9fb9009cf16a0234368bc99feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c13c125c150525be5c379a82a60f86274310911d9fd2adc6c3627df0f600ca14",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C627d106d48c74ef6d6f92491547ab4c0c08b33bcd4f3d207335dc07945eec25SourceActualNega/Variant03eb496383cf375efea46cca3ab0e16a7cfc7d9fb9009cf16a0234368bc99feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2b5b5d35416a65758d2536e42cc5fd5fe0bd5118d59ea203dc1e4d82df9c9e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def leadingAntiderivative (u r : ℝ) : ℝ :=
  (36864 * u ^ 2 - 768 * u ^ 4) / 3 * r ^ 3 +
  (-73728 * u + 3072 * u ^ 3) / 4 * r ^ 4 +
  (36864 - 5376 * u ^ 2 + 16 * u ^ 4) / 5 * r ^ 5 +
  (4608 * u - 64 * u ^ 3) / 6 * r ^ 6 +
  (-1536 + 96 * u ^ 2) / 7 * r ^ 7 + (-64 * u) / 8 * r ^ 8 + 16 / 9 * r ^ 9

/-- The actual leading signed overlap has its exact polynomial value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C627d106d48c74ef6d6f92491547ab4c0c08b33bcd4f3d207335dc07945eec25SourceActualNega/Variant03eb496383cf375efea46cca3ab0e16a7cfc7d9fb9009cf16a0234368bc99feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C627d106d48c74ef6d6f92491547ab4c0c08b33bcd4f3d207335dc07945eec25SourceActualNega/Variant03eb496383cf375efea46cca3ab0e16a7cfc7d9fb9009cf16a0234368bc99feb.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76f3ec068f0fda9bc222e514cb82970024c0faec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
