# BinaryLogicMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d22d004c8e8abd4e4d55ff0dd59767bba29b0b5a090b46204eef8e8583bdd81",
  "kind": "structure",
  "lexical_name": "BinaryLogicMatrix",
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
  "slug": "binarylogicmatrix--e935c0f868bfed57c6f35477",
  "source": {
    "blob": "49e7e4255b33d799e278708d38ec24cfcbfb81de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 13,
    "path": "GRWTSK/Algebra/LinearAlgebra/Core/Variant2ca7c5e82e7ed16f2e7bd13368b9fd0b3708c09cba69e07d15a94a96737b4161.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e935c0f868bfed57c6f35477cb39f2209512e9c794e582cddf201a3b936300a7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Core/Variant2ca7c5e82e7ed16f2e7bd13368b9fd0b3708c09cba69e07d15a94a96737b4161.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d22d004c8e8abd4e4d55ff0dd59767bba29b0b5a090b46204eef8e8583bdd81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BinaryLogicMatrix (rows cols : Nat) where
  cell : Fin rows -> Fin cols -> Bool

namespace BinaryLogicMatrix

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Core/Variant2ca7c5e82e7ed16f2e7bd13368b9fd0b3708c09cba69e07d15a94a96737b4161.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Core/Variant2ca7c5e82e7ed16f2e7bd13368b9fd0b3708c09cba69e07d15a94a96737b4161.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49e7e4255b33d799e278708d38ec24cfcbfb81de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
