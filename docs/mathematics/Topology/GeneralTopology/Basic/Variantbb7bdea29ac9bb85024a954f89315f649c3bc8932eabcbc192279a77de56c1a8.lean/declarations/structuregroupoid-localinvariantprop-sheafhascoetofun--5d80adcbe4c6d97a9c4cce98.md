# StructureGroupoid.LocalInvariantProp.sheafHasCoeToFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05977e1199cf93f97d1ca17edd6df7b3b28ba95810a330416eea9219c18d880a",
  "kind": "instance",
  "lexical_name": "StructureGroupoid.LocalInvariantProp.sheafHasCoeToFun",
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
  "slug": "structuregroupoid-localinvariantprop-sheafhascoetofun--5d80adcbe4c6d97a9c4cce98",
  "source": {
    "blob": "ad442e82ca0b27a67ba4a066526244599bbba326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantbb7bdea29ac9bb85024a954f89315f649c3bc8932eabcbc192279a77de56c1a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d80adcbe4c6d97a9c4cce982f8203c3154a2d0cd6bba155ba9dfa85e76b5c8a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantbb7bdea29ac9bb85024a954f89315f649c3bc8932eabcbc192279a77de56c1a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05977e1199cf93f97d1ca17edd6df7b3b28ba95810a330416eea9219c18d880a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance StructureGroupoid.LocalInvariantProp.sheafHasCoeToFun (hG : LocalInvariantProp G G' P)
    (U : (Opens (TopCat.of M))ᵒᵖ) : CoeFun ((hG.sheaf M M').obj.obj U) fun _ => ↑(unop U) → M' where
  coe a := a.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantbb7bdea29ac9bb85024a954f89315f649c3bc8932eabcbc192279a77de56c1a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantbb7bdea29ac9bb85024a954f89315f649c3bc8932eabcbc192279a77de56c1a8.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad442e82ca0b27a67ba4a066526244599bbba326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
