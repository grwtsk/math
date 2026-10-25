# selectorWeightComponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:206dd4d9a54d93986aefe9b4efd5bcaa7797610bcafb79791fd30de6d16fd7c7",
  "kind": "def",
  "lexical_name": "selectorWeightComponents",
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
  "slug": "selectorweightcomponents--1b25464fca97de0b149170d3",
  "source": {
    "blob": "290ee11c4847bfc615f8af9fe4fc914b7df0eb47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4c657869636f6772617068696353656c6563746/Variant9bce04b89e8b96866eeb6855e9b5fe86151dc8c087371929675d9a535b160d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b25464fca97de0b149170d322916e6c8ef5840c0ffb9048b91bb87521c2df6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4c657869636f6772617068696353656c6563746/Variant9bce04b89e8b96866eeb6855e9b5fe86151dc8c087371929675d9a535b160d6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:206dd4d9a54d93986aefe9b4efd5bcaa7797610bcafb79791fd30de6d16fd7c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selectorWeightComponents : List SelectorWeightComponent := [
  SelectorWeightComponent.hardValidity,
  SelectorWeightComponent.authorityRank,
  SelectorWeightComponent.residueReduction,
  SelectorWeightComponent.centroidMedoidGeometry,
  SelectorWeightComponent.torsionOrdering,
  SelectorWeightComponent.proofSearchCost,
  SelectorWeightComponent.codexTokenCost,
  SelectorWeightComponent.canonicalDigest
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4c657869636f6772617068696353656c6563746/Variant9bce04b89e8b96866eeb6855e9b5fe86151dc8c087371929675d9a535b160d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4c657869636f6772617068696353656c6563746/Variant9bce04b89e8b96866eeb6855e9b5fe86151dc8c087371929675d9a535b160d6b.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290ee11c4847bfc615f8af9fe4fc914b7df0eb47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
