# traceGramInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f2ab5ae2a1b51c98136941e2b0c94f29a7f5a265fa957dfbf8718c1aafde62c",
  "kind": "def",
  "lexical_name": "traceGramInverse",
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
  "slug": "tracegraminverse--34367f0a7a1610e923dabff4",
  "source": {
    "blob": "7e248e7add177608a3288b264926f746e39897a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceDual/Variantce4f6eb7210c9f883afa76db5fa0425a82f8f4fda65757cff7d0be9036098a03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34367f0a7a1610e923dabff4d2460569fcb39edd90ea1a0b5773fdfcbd43fa27",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceDual/Variantce4f6eb7210c9f883afa76db5fa0425a82f8f4fda65757cff7d0be9036098a03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f2ab5ae2a1b51c98136941e2b0c94f29a7f5a265fa957dfbf8718c1aafde62c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def traceGramInverse : Matrix (Fin 6) (Fin 6) ℚ :=
  !![(53 / 253), (-31 / 253), (39 / 253), (-1 / 11), (1 / 253), (1 / 253);
     (-31 / 253), (-13 / 253), (131 / 506), (12 / 253), (31 / 506), (-12 / 253);
     (39 / 253), (131 / 506), (-3 / 506), (-27 / 506), (-39 / 506), (8 / 253);
     (-1 / 11), (12 / 253), (-27 / 506), (27 / 253), (17 / 253), (-21 / 506);
     (1 / 253), (31 / 506), (-39 / 506), (17 / 253), (-17 / 253), (5 / 253);
     (1 / 253), (-12 / 253), (8 / 253), (-21 / 506), (5 / 253), (-1 / 506)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceDual/Variantce4f6eb7210c9f883afa76db5fa0425a82f8f4fda65757cff7d0be9036098a03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceDual/Variantce4f6eb7210c9f883afa76db5fa0425a82f8f4fda65757cff7d0be9036098a03.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e248e7add177608a3288b264926f746e39897a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
