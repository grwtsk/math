# IsOrderBornology.neBot_cobounded_of_noTopOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c812399f13129cb01c0c5f2cd1678d039d1398e41d006a05b94b3472fdabe8e0",
  "kind": "instance",
  "lexical_name": "IsOrderBornology.neBot_cobounded_of_noTopOrder",
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
  "slug": "isorderbornology-nebot-cobounded-of-notoporder--6e2a2699bf90bcda3266aecf",
  "source": {
    "blob": "a541e9d2e14ff7318e9ee5f218c5a794bcf35191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e2a2699bf90bcda3266aecf318e32ac26c6b908d537b9b41623c187fd32237b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c812399f13129cb01c0c5f2cd1678d039d1398e41d006a05b94b3472fdabe8e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsOrderBornology.neBot_cobounded_of_noTopOrder [NoTopOrder α] : (cobounded α).NeBot :=
  neBot_cobounded_of_noBotOrder (α := αᵒᵈ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bornology/Variantdacc7f20c6a64fb22ee6381581803ea0017e6a8b6f3e06cb7bb684aec2c871aa.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a541e9d2e14ff7318e9ee5f218c5a794bcf35191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
