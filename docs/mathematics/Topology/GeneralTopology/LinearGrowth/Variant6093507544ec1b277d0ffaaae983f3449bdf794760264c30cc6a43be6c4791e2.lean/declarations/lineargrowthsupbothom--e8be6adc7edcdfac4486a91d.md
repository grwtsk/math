# linearGrowthSupBotHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de6208e6ed982258a0968672f267eae8739ae080046b1e642db62c4a93b9bd87",
  "kind": "def",
  "lexical_name": "linearGrowthSupBotHom",
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
  "slug": "lineargrowthsupbothom--e8be6adc7edcdfac4486a91d",
  "source": {
    "blob": "643d6cd76262da4b02fb7814a98ee9d2c89e8664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 315,
    "path": "GRWTSK/Topology/GeneralTopology/LinearGrowth/Variant6093507544ec1b277d0ffaaae983f3449bdf794760264c30cc6a43be6c4791e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8be6adc7edcdfac4486a91d996626a86146d00135c8a4b125cc77ef868eea26",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearGrowth/Variant6093507544ec1b277d0ffaaae983f3449bdf794760264c30cc6a43be6c4791e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de6208e6ed982258a0968672f267eae8739ae080046b1e642db62c4a93b9bd87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def linearGrowthSupBotHom : SupBotHom (ℕ → EReal) EReal where
  toFun := linearGrowthSup
  map_sup' _ _ := linearGrowthSup_sup
  map_bot' := linearGrowthSup_bot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearGrowth/Variant6093507544ec1b277d0ffaaae983f3449bdf794760264c30cc6a43be6c4791e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearGrowth/Variant6093507544ec1b277d0ffaaae983f3449bdf794760264c30cc6a43be6c4791e2.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `643d6cd76262da4b02fb7814a98ee9d2c89e8664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
