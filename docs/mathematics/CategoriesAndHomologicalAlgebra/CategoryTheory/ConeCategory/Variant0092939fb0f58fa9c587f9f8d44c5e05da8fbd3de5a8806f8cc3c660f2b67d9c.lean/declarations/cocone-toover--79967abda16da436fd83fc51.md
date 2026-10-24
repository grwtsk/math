# Cocone.toOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c01490696566bd49cf6c2b393af51a37b2aedfe6a99f60f86e64753a25a607db",
  "kind": "def",
  "lexical_name": "Cocone.toOver",
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
  "slug": "cocone-toover--79967abda16da436fd83fc51",
  "source": {
    "blob": "c16bface3599ea91f0b0bd1a4b41d65b07dccd5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 257,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variant0092939fb0f58fa9c587f9f8d44c5e05da8fbd3de5a8806f8cc3c660f2b67d9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79967abda16da436fd83fc51122dbc1f1f06c6115629ef351dba13f5c4894531",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variant0092939fb0f58fa9c587f9f8d44c5e05da8fbd3de5a8806f8cc3c660f2b67d9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c01490696566bd49cf6c2b393af51a37b2aedfe6a99f60f86e64753a25a607db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cocone.toOver {F : J ⥤ C} (c : Cocone F) :
    Cocone (c.toCostructuredArrow ⋙ CostructuredArrow.toOver _ _) where
  pt := Over.mk (𝟙 c.pt)
  ι := { app := fun j => Over.homMk (c.ι.app j) (by simp) }

/-- The colimit cocone for `F : J ⥤ C` lifts to a cocone in `Over (colimit F)` with cone point
    `𝟙 (colimit F)`. This is automatically also a colimit cocone. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variant0092939fb0f58fa9c587f9f8d44c5e05da8fbd3de5a8806f8cc3c660f2b67d9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variant0092939fb0f58fa9c587f9f8d44c5e05da8fbd3de5a8806f8cc3c660f2b67d9c.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c16bface3599ea91f0b0bd1a4b41d65b07dccd5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
