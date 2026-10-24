# Prod.continuousSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c3d2a2208316d95930b60c3b0f2bad6ff06721befaffbbe71154f56c9138a2e",
  "kind": "instance",
  "lexical_name": "Prod.continuousSMul",
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
  "slug": "prod-continuoussmul--b3d428376665165c512655e3",
  "source": {
    "blob": "85e2b72049f1eae080a9a5fe857ee15e22b60241",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 174,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3d428376665165c512655e36552dffae9c1e5c16c0edcaaa87b4fcf6279c757",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c3d2a2208316d95930b60c3b0f2bad6ff06721befaffbbe71154f56c9138a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.continuousSMul [SMul M X] [SMul M Y] [ContinuousSMul M X] [ContinuousSMul M Y] :
    ContinuousSMul M (X × Y) :=
  ⟨(continuous_fst.smul (continuous_fst.comp continuous_snd)).prod_mk
      (continuous_fst.smul (continuous_snd.comp continuous_snd))⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variant0534a3e5f1ccf9c2d3f1eb90aa21ca002d063c051bbcff588b7e3ccdcd141d2c.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e2b72049f1eae080a9a5fe857ee15e22b60241` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
