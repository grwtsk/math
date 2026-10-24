# leadingAntiderivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3112ccefa3a2579022529b27dde59ac8f1c1e159610ad9109f1fec8f863dd65e",
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
  "slug": "leadingantiderivative--a5fc5221fef916e499247f1e",
  "source": {
    "blob": "fcf74c3f2e98f411167b00d82a3d757058d01020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 18,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C627d106d48c74ef6d6f92491547ab4c0c08b33bcd4f3d207335dc07945eec25SourceActualNega/Variant05d6981e6421307b3268a6e0f98764dd713c40b4eee5cd877a4823e0db683bb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5fc5221fef916e499247f1e813473258e7d3d9e167304ec6152e0649afaf3d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C627d106d48c74ef6d6f92491547ab4c0c08b33bcd4f3d207335dc07945eec25SourceActualNega/Variant05d6981e6421307b3268a6e0f98764dd713c40b4eee5cd877a4823e0db683bb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3112ccefa3a2579022529b27dde59ac8f1c1e159610ad9109f1fec8f863dd65e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–25.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C627d106d48c74ef6d6f92491547ab4c0c08b33bcd4f3d207335dc07945eec25SourceActualNega/Variant05d6981e6421307b3268a6e0f98764dd713c40b4eee5cd877a4823e0db683bb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C627d106d48c74ef6d6f92491547ab4c0c08b33bcd4f3d207335dc07945eec25SourceActualNega/Variant05d6981e6421307b3268a6e0f98764dd713c40b4eee5cd877a4823e0db683bb5.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf74c3f2e98f411167b00d82a3d757058d01020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
