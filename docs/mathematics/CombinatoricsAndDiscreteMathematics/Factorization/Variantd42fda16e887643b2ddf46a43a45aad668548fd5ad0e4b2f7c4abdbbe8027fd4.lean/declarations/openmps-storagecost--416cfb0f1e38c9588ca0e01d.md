# OpenMPS.storageCost

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:260f05be09ddbf6190877904cb7481f47812d99cb13a1cf0a324f956a53aae9f",
  "kind": "def",
  "lexical_name": "OpenMPS.storageCost",
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
  "slug": "openmps-storagecost--416cfb0f1e38c9588ca0e01d",
  "source": {
    "blob": "dbf09aa5743ce107e4aad28da94bc28d067c1970",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:416cfb0f1e38c9588ca0e01de83dbe917e40b938831cf921360aaab5bf48baa2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:260f05be09ddbf6190877904cb7481f47812d99cb13a1cf0a324f956a53aae9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OpenMPS.storageCost
    (network : OpenMPS N D) : Nat :=
  ∑ site : Fin N,
    network.bondProfile.dimension site.castSucc *
      D *
      network.bondProfile.dimension site.succ

/-- Uniformly bounded bonds give the declared linear storage estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Factorization/Variantd42fda16e887643b2ddf46a43a45aad668548fd5ad0e4b2f7c4abdbbe8027fd4.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbf09aa5743ce107e4aad28da94bc28d067c1970` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
