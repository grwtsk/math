# instIsOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0a129b44dd22bd94561d9c3cdb6c5fb2779b477ac3a0b8fa9ddd2388bd07c9f",
  "kind": "instance",
  "lexical_name": "instIsOrderedRing",
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
  "slug": "instisorderedring--5c746e70759f7037db9377cb",
  "source": {
    "blob": "ce9653028d7ebf1b0fdca4c6abad1735a0a30a8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/Ring/Variantac7b36428a35988f6343e30c26dd87fa17fd35c73bbef49532309996ef6ababa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c746e70759f7037db9377cb784279c1b0e929383deff257e5fabd94daae840e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ring/Variantac7b36428a35988f6343e30c26dd87fa17fd35c73bbef49532309996ef6ababa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0a129b44dd22bd94561d9c3cdb6c5fb2779b477ac3a0b8fa9ddd2388bd07c9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsOrderedRing [Semiring β] [PartialOrder β] [IsOrderedRing β] :
    IsOrderedRing (Germ l β) where
  zero_le_one := const_le zero_le_one
  mul_le_mul_of_nonneg_left x :=
    inductionOn x fun _f hx y z ↦ inductionOn₂ y z fun _g _h hfg ↦ hx.mp <| hfg.mono
      fun _a ↦ mul_le_mul_of_nonneg_left
  mul_le_mul_of_nonneg_right x :=
    inductionOn x fun _f hx y z ↦ inductionOn₂ y z fun _g _h hfg ↦ hx.mp <| hfg.mono
      fun _a ↦ mul_le_mul_of_nonneg_right

end Germ

end Filter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ring/Variantac7b36428a35988f6343e30c26dd87fa17fd35c73bbef49532309996ef6ababa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ring/Variantac7b36428a35988f6343e30c26dd87fa17fd35c73bbef49532309996ef6ababa.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9653028d7ebf1b0fdca4c6abad1735a0a30a8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
