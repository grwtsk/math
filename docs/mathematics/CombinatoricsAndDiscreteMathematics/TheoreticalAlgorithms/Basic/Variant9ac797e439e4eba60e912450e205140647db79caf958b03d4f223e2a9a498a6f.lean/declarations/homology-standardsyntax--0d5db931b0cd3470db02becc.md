# Homology.standardSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4552bb14c65397e6457bc71d9ba707b09b6a52386cf1976ee6455e32d4fa8338",
  "kind": "def",
  "lexical_name": "Homology.standardSyntax",
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
  "slug": "homology-standardsyntax--0d5db931b0cd3470db02becc",
  "source": {
    "blob": "8c286ed9c8a9131eb04c6a53452622397de569a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 661,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9ac797e439e4eba60e912450e205140647db79caf958b03d4f223e2a9a498a6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d5db931b0cd3470db02becc19558c44142b1d5eb1b2318fd1b86cce536b94ec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9ac797e439e4eba60e912450e205140647db79caf958b03d4f223e2a9a498a6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4552bb14c65397e6457bc71d9ba707b09b6a52386cf1976ee6455e32d4fa8338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Homology.standardSyntax :
    Homology.FiniteOS.Expression String :=
  .op .homological_os
    [ .op .proof_kernel
        [ Homology.standardMaximalLimitNode
        , .op .symmetry_group [.symbol .symmetry_group]
        , Homology.standardFinitePrismaticSurfaceModelNode
        , Homology.standardKakeyaTubeCover
        ]
    , .op .homology
        [Homology.standardKakeyaTubeCover]
    , .op .prismatic_tag
        [Homology.standardFinitePrismaticSurfaceModelNode]
    , .op .sieve
        [Homology.standardKakeyaTubeCover]
    ]

/-- Cambridge-style variadic Polish tokenization of the standard syntax. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9ac797e439e4eba60e912450e205140647db79caf958b03d4f223e2a9a498a6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9ac797e439e4eba60e912450e205140647db79caf958b03d4f223e2a9a498a6f.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c286ed9c8a9131eb04c6a53452622397de569a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
