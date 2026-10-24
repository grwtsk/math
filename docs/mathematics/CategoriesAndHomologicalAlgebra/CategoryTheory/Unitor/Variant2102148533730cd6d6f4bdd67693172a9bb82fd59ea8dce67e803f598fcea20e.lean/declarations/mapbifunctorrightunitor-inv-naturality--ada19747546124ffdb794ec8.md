# mapBifunctorRightUnitor_inv_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb8a9693-385e-de26-cb9c-b05c0940d95f",
  "kind": "lemma",
  "lexical_name": "mapBifunctorRightUnitor_inv_naturality",
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
  "slug": "mapbifunctorrightunitor-inv-naturality--ada19747546124ffdb794ec8",
  "source": {
    "blob": "2c1c0f32c74e689805edc257606f3a3c2f9500b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 256,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant2102148533730cd6d6f4bdd67693172a9bb82fd59ea8dce67e803f598fcea20e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ada19747546124ffdb794ec8ee60fb13eaebc8c5dbd69a3242cc5387b4bf7b27",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant2102148533730cd6d6f4bdd67693172a9bb82fd59ea8dce67e803f598fcea20e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb8a9693-385e-de26-cb9c-b05c0940d95f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBifunctorRightUnitor_inv_naturality :
    φ ≫ (mapBifunctorRightUnitor F Y e p hp X').inv =
      (mapBifunctorRightUnitor F Y e p hp X).inv ≫ mapBifunctorMapMap F p φ (𝟙 _) := by
  ext j
  dsimp
  rw [mapBifunctorRightUnitor_inv_apply, mapBifunctorRightUnitor_inv_apply, assoc, assoc,
    ι_mapBifunctorMapMap]
  dsimp
  rw [Functor.map_id, id_comp, NatTrans.naturality_assoc]
  erw [← NatTrans.naturality_assoc e.inv]
  rfl

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant2102148533730cd6d6f4bdd67693172a9bb82fd59ea8dce67e803f598fcea20e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unitor/Variant2102148533730cd6d6f4bdd67693172a9bb82fd59ea8dce67e803f598fcea20e.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c1c0f32c74e689805edc257606f3a3c2f9500b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
