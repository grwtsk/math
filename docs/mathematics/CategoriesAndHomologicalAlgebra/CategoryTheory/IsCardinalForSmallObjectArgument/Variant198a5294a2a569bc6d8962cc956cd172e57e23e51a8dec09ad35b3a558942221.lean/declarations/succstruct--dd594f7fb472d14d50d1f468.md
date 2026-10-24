# succStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8efe19246def2c5bd3d74a0d057e5df7a6e8a01bb8607e6ace85365b47072310",
  "kind": "def",
  "lexical_name": "succStruct",
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
  "slug": "succstruct--dd594f7fb472d14d50d1f468",
  "source": {
    "blob": "f80c421802e7f500905cd4c1907d43f29dcac2c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 131,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant198a5294a2a569bc6d8962cc956cd172e57e23e51a8dec09ad35b3a558942221.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd594f7fb472d14d50d1f468faa5a748fbabaf9e7973b982b8aade4222c2ae85",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant198a5294a2a569bc6d8962cc956cd172e57e23e51a8dec09ad35b3a558942221.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8efe19246def2c5bd3d74a0d057e5df7a6e8a01bb8607e6ace85365b47072310`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def succStruct : SuccStruct (Arrow C ⥤ Arrow C) :=
  haveI := hasColimitsOfShape_discrete I κ
  haveI := hasPushouts I κ
  SuccStruct.ofNatTrans (ε I.homFamily)

set_option backward.isDefEq.respectTransparency.types false in
/-- For the successor structure `succStruct I κ` on `Arrow C ⥤ Arrow C`,
the morphism from an object to its successor induces
morphisms in `C` which consists in attaching `I`-cells. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant198a5294a2a569bc6d8962cc956cd172e57e23e51a8dec09ad35b3a558942221.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCardinalForSmallObjectArgument/Variant198a5294a2a569bc6d8962cc956cd172e57e23e51a8dec09ad35b3a558942221.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f80c421802e7f500905cd4c1907d43f29dcac2c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
