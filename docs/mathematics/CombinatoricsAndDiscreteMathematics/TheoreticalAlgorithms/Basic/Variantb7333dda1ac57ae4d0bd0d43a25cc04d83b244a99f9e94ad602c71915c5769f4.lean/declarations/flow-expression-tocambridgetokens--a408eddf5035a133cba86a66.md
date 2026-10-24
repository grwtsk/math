# Flow.Expression.toCambridgeTokens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:885075ed7a874c9f8931e91682114537050b0bfd9863a1c156426946d8cc1929",
  "kind": "def",
  "lexical_name": "Flow.Expression.toCambridgeTokens",
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
  "slug": "flow-expression-tocambridgetokens--a408eddf5035a133cba86a66",
  "source": {
    "blob": "8f9a9fdd002ac776c2dd8d34149e08e4171354b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb7333dda1ac57ae4d0bd0d43a25cc04d83b244a99f9e94ad602c71915c5769f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a408eddf5035a133cba86a6666756aa51d2259225d8d2391df195526845fcaac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb7333dda1ac57ae4d0bd0d43a25cc04d83b244a99f9e94ad602c71915c5769f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:885075ed7a874c9f8931e91682114537050b0bfd9863a1c156426946d8cc1929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Flow.Expression.toCambridgeTokens :
    Flow.Expression α → List (Flow.Token α)
  | .atom a => [.atom a]
  | .nat n => [.nat n]
  | .int z => [.int z]
  | .symbol s => [.symbol s]
  | .variadic op args =>
      [.beginVariadic op] ++
        Flow.Expression.toCambridgeTokensList args ++
        [.endNode]
  | .expBase base exponent residue =>
      [.beginExp residue] ++
        Flow.Expression.toCambridgeTokens base ++
        Flow.Expression.toCambridgeTokens exponent ++
        [.endNode]
  | .binaryAction action lhs rhs residue =>
      [.beginAction action residue] ++
        Flow.Expression.toCambridgeTokens lhs ++
        Flow.Expression.toCambridgeTokens rhs ++
        [.endNode]
  | .attend tag t =>
      [.beginAttention tag] ++
        Flow.Expression.toCambridgeTokens t ++
        [.endNode]

/-- Serialize a list of symbolic flow trees into Cambridge-style tokens. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb7333dda1ac57ae4d0bd0d43a25cc04d83b244a99f9e94ad602c71915c5769f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb7333dda1ac57ae4d0bd0d43a25cc04d83b244a99f9e94ad602c71915c5769f4.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f9a9fdd002ac776c2dd8d34149e08e4171354b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
