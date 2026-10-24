# mapBifunctorRightUnitor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8877536670f775b17a179de061b2b8b8981616d7647a5de9e26daa3e66506bdd",
  "kind": "def",
  "lexical_name": "mapBifunctorRightUnitor",
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
  "slug": "mapbifunctorrightunitor--0e7555f3a6aadc1ec8278bf4",
  "source": {
    "blob": "2c1c0f32c74e689805edc257606f3a3c2f9500b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant2102148533730cd6d6f4bdd67693172a9bb82fd59ea8dce67e803f598fcea20e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e7555f3a6aadc1ec8278bf40830d89bdcbe3ea78e0e0e970e7531bef7de9768",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant2102148533730cd6d6f4bdd67693172a9bb82fd59ea8dce67e803f598fcea20e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8877536670f775b17a179de061b2b8b8981616d7647a5de9e26daa3e66506bdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapBifunctorRightUnitor : mapBifunctorMapObj F p X ((single₀ I).obj Y) ≅ X :=
  isoMk _ _ (fun j => (CofanMapObjFun.iso
    (mapBifunctorRightUnitorCofanIsColimit F Y e p hp X j)).symm)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant2102148533730cd6d6f4bdd67693172a9bb82fd59ea8dce67e803f598fcea20e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant2102148533730cd6d6f4bdd67693172a9bb82fd59ea8dce67e803f598fcea20e.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c1c0f32c74e689805edc257606f3a3c2f9500b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
