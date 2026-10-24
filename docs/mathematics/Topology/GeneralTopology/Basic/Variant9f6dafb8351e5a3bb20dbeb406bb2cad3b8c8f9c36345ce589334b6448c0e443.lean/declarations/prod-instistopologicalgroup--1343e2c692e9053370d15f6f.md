# Prod.instIsTopologicalGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6c05ad05e237dbc77e7192d277a2e0361820ee1a3cda5fd1d8bbdc5f1d5d721",
  "kind": "instance",
  "lexical_name": "Prod.instIsTopologicalGroup",
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
  "slug": "prod-instistopologicalgroup--1343e2c692e9053370d15f6f",
  "source": {
    "blob": "8930608628edba125974e1607df70bc6228781c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 518,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1343e2c692e9053370d15f6fc8960e3539c7ac1236ffb611794b07c22f7143de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6c05ad05e237dbc77e7192d277a2e0361820ee1a3cda5fd1d8bbdc5f1d5d721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.instIsTopologicalGroup [TopologicalSpace H] [Group H] [IsTopologicalGroup H] :
    IsTopologicalGroup (G × H) where
  continuous_inv := continuous_inv.prodMap continuous_inv

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9f6dafb8351e5a3bb20dbeb406bb2cad3b8c8f9c36345ce589334b6448c0e443.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8930608628edba125974e1607df70bc6228781c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
