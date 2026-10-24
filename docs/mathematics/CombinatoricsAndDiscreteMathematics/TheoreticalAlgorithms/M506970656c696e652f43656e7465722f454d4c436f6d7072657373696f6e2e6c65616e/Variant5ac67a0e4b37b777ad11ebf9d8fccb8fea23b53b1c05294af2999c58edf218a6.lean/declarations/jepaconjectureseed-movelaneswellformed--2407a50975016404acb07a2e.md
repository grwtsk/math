# JepaConjectureSeed.moveLanesWellFormed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3e9a6231140479007a3d5347be59c1e8d12f6abdb3ca25be5a0e19d2d90ce8f",
  "kind": "def",
  "lexical_name": "JepaConjectureSeed.moveLanesWellFormed",
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
  "slug": "jepaconjectureseed-movelaneswellformed--2407a50975016404acb07a2e",
  "source": {
    "blob": "048a145793732d9afe9c5f66934a7dcc3581cc4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 300,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variant5ac67a0e4b37b777ad11ebf9d8fccb8fea23b53b1c05294af2999c58edf218a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2407a50975016404acb07a2e0df2d833a75354fb771c54683b13680ecb3111b8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variant5ac67a0e4b37b777ad11ebf9d8fccb8fea23b53b1c05294af2999c58edf218a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3e9a6231140479007a3d5347be59c1e8d12f6abdb3ca25be5a0e19d2d90ce8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def JepaConjectureSeed.moveLanesWellFormed
    (seed : JepaConjectureSeed) : Bool :=
  allInvertibleMoves seed.invertibleMoveKinds &&
    allReducingMoves seed.reducingMoveKinds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variant5ac67a0e4b37b777ad11ebf9d8fccb8fea23b53b1c05294af2999c58edf218a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f43656e7465722f454d4c436f6d7072657373696f6e2e6c65616e/Variant5ac67a0e4b37b777ad11ebf9d8fccb8fea23b53b1c05294af2999c58edf218a6.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `048a145793732d9afe9c5f66934a7dcc3581cc4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
