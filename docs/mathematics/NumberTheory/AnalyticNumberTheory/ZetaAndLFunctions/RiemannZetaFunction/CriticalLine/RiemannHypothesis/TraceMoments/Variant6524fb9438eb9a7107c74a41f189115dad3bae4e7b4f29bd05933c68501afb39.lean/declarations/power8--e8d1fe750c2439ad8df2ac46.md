# power8

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b418d4dc5bf8a4f0d1d02acc3279246f4782399567470703f29ad217b6541da",
  "kind": "def",
  "lexical_name": "power8",
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
  "slug": "power8--e8d1fe750c2439ad8df2ac46",
  "source": {
    "blob": "1d9ac1eb174bb8134750d0cbbdc10b854d31e4ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 121,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceMoments/Variant6524fb9438eb9a7107c74a41f189115dad3bae4e7b4f29bd05933c68501afb39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8d1fe750c2439ad8df2ac462ad2e9ba036a369f7cba6fa051de6c77cea29fdd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceMoments/Variant6524fb9438eb9a7107c74a41f189115dad3bae4e7b4f29bd05933c68501afb39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b418d4dc5bf8a4f0d1d02acc3279246f4782399567470703f29ad217b6541da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def power8 : Matrix (Fin 6) (Fin 6) ℚ :=
  !![-16, -40, -96, -240, -596, -1468;
     -24, -66, -160, -396, -985, -2431;
     -13, -34, -90, -220, -545, -1352;
     6, 17, 38, 90, 227, 556;
     14, 36, 89, 218, 537, 1328;
     10, 24, 60, 149, 367, 904]

set_option maxHeartbeats 800000 in
-- Expanded six-dimensional matrix powers use the original normalization allowance.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceMoments/Variant6524fb9438eb9a7107c74a41f189115dad3bae4e7b4f29bd05933c68501afb39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TraceMoments/Variant6524fb9438eb9a7107c74a41f189115dad3bae4e7b4f29bd05933c68501afb39.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d9ac1eb174bb8134750d0cbbdc10b854d31e4ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
