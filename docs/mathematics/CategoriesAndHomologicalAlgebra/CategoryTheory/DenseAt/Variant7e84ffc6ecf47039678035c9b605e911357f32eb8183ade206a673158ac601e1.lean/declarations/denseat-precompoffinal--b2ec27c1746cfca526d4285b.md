# DenseAt.precompOfFinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98e8fffcd2dbfc0eb54622f92d507f9fc152b2d99b95662a2cd6378b2ce74dd7",
  "kind": "def",
  "lexical_name": "DenseAt.precompOfFinal",
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
  "slug": "denseat-precompoffinal--b2ec27c1746cfca526d4285b",
  "source": {
    "blob": "fabf72512d6c210e468fcca1d185b2709c9390f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 93,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseAt/Variant7e84ffc6ecf47039678035c9b605e911357f32eb8183ade206a673158ac601e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2ec27c1746cfca526d4285b88c516246de65e9b5c8270652b2e609713f676dd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseAt/Variant7e84ffc6ecf47039678035c9b605e911357f32eb8183ade206a673158ac601e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98e8fffcd2dbfc0eb54622f92d507f9fc152b2d99b95662a2cd6378b2ce74dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def DenseAt.precompOfFinal
    {C' : Type*} [Category* C'] (G : C' ⥤ C) [(CostructuredArrow.pre G F Y).Final] :
    (G ⋙ F).DenseAt Y :=
  (DenseAt.precompEquivOfFinal G).symm hY

set_option backward.defeqAttrib.useBackward true in
/-- If `F : C ⥤ D` is dense at `Y : D` and `G : D ⥤ D'` is an equivalence,
then `F ⋙ G` is dense at `G.obj Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseAt/Variant7e84ffc6ecf47039678035c9b605e911357f32eb8183ade206a673158ac601e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DenseAt/Variant7e84ffc6ecf47039678035c9b605e911357f32eb8183ade206a673158ac601e1.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fabf72512d6c210e468fcca1d185b2709c9390f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
