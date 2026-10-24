# fromPath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4093bb32f19323263e84c37fd3d5e21b48fb3c25198996ba146d8f4264809082",
  "kind": "abbrev",
  "lexical_name": "fromPath",
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
  "slug": "frompath--6b809ceb2da434b0d3b0fb6c",
  "source": {
    "blob": "5427453edae6b1bb215daa9c9d4b60855315ffa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 84,
    "path": "GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b809ceb2da434b0d3b0fb6c38fc911e8b8330cc47cac6a826ad7ed5d8be6b8c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4093bb32f19323263e84c37fd3d5e21b48fb3c25198996ba146d8f4264809082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev fromPath {X : TopCat} {x : X} (p : Path.Homotopic.Quotient x x) : FundamentalGroup X x :=
  fromArrow p
#align fundamental_group.from_path FundamentalGroup.fromPath

end FundamentalGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variant9834ce7734d05779ead03fc2444dcf310f2927604d4c883c7e4b01f1f9dc3544.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5427453edae6b1bb215daa9c9d4b60855315ffa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
