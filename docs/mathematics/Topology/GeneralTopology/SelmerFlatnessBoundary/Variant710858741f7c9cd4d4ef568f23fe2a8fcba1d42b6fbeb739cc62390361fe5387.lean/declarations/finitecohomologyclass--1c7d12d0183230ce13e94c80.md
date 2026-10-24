# FiniteCohomologyClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ad222c63424cb8308f070e764943b522693ade67417798046e2489a40406470",
  "kind": "structure",
  "lexical_name": "FiniteCohomologyClass",
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
  "slug": "finitecohomologyclass--1c7d12d0183230ce13e94c80",
  "source": {
    "blob": "956fcff2ac8b7d19249a6b654ca25a4eafb77ee9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/SelmerFlatnessBoundary/Variant710858741f7c9cd4d4ef568f23fe2a8fcba1d42b6fbeb739cc62390361fe5387.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c7d12d0183230ce13e94c803e6b811c83ce782c6ff5ad49824c60ac201e7fab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SelmerFlatnessBoundary/Variant710858741f7c9cd4d4ef568f23fe2a8fcba1d42b6fbeb739cc62390361fe5387.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ad222c63424cb8308f070e764943b522693ade67417798046e2489a40406470`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteCohomologyClass where
  classHash : Nat
  representativeHash : Nat
  cocycleSound : Prop
  finiteSupportSound : Prop

/--
A local Selmer condition.

Semantically, this represents membership in the prescribed local image, such as
the image of a Kummer map at a local place. The actual arithmetic proof is
certificate-gated.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SelmerFlatnessBoundary/Variant710858741f7c9cd4d4ef568f23fe2a8fcba1d42b6fbeb739cc62390361fe5387.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SelmerFlatnessBoundary/Variant710858741f7c9cd4d4ef568f23fe2a8fcba1d42b6fbeb739cc62390361fe5387.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `956fcff2ac8b7d19249a6b654ca25a4eafb77ee9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
