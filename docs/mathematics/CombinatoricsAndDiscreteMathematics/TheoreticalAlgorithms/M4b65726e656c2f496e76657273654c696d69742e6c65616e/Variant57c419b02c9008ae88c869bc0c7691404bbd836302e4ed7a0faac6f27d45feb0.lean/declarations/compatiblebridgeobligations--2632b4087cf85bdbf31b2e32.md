# compatibleBridgeObligations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b191fa5211d71a50a25d79974f38c2e5959a3bbba6468192096b9b628638ec7",
  "kind": "def",
  "lexical_name": "compatibleBridgeObligations",
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
  "slug": "compatiblebridgeobligations--2632b4087cf85bdbf31b2e32",
  "source": {
    "blob": "5f4ebbdb06cfcd5d34cde91ffe95e639a8464a7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f496e76657273654c696d69742e6c65616e/Variant57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2632b4087cf85bdbf31b2e32e5de4497a8cfbec8800f58aafed34288d2a33a36",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f496e76657273654c696d69742e6c65616e/Variant57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b191fa5211d71a50a25d79974f38c2e5959a3bbba6468192096b9b628638ec7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compatibleBridgeObligations : List CompatibleBridgeObligation :=
  [ CompatibleBridgeObligation.stageBridge
  , CompatibleBridgeObligation.forwardCommutation
  , CompatibleBridgeObligation.sectionCommutation
  , CompatibleBridgeObligation.rightInverse
  , CompatibleBridgeObligation.leftInverse
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f496e76657273654c696d69742e6c65616e/Variant57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f496e76657273654c696d69742e6c65616e/Variant57c419b02c9008ae88c869bc0c7691404bbd836302e4ed7a0faac6f27d45feb0.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f4ebbdb06cfcd5d34cde91ffe95e639a8464a7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
