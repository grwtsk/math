# LeftExtension.IsPointwiseLeftKanExtensionAt.postcompose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eea5cd146e6194afae48f351b44bde74679037e6bd4d66eb045896072a8b820d",
  "kind": "def",
  "lexical_name": "LeftExtension.IsPointwiseLeftKanExtensionAt.postcompose",
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
  "slug": "leftextension-ispointwiseleftkanextensionat-postcompose--dc4be8c396287b7aa1e36e1f",
  "source": {
    "blob": "6c304ff82ac77168c1211a5364d8cc6affba306f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianteab1add0da433b279d00ee44e3cbcf01c478f365a3292f611f98794b301577d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc4be8c396287b7aa1e36e1fc47a80e5417bdbf9d5e6696f19953be15a812360",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianteab1add0da433b279d00ee44e3cbcf01c478f365a3292f611f98794b301577d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eea5cd146e6194afae48f351b44bde74679037e6bd4d66eb045896072a8b820d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeftExtension.IsPointwiseLeftKanExtensionAt.postcompose {c : C}
    [PreservesPointwiseLeftKanExtensionAt G F L c]
    {E : LeftExtension L F} (hE : E.IsPointwiseLeftKanExtensionAt c) :
    LeftExtension.postcompose₂ L F G |>.obj E |>.IsPointwiseLeftKanExtensionAt c :=
  PreservesPointwiseLeftKanExtensionAt.preserves E hE |>.some

variable {F L} in
/-- Given a pointwise left Kan extension of `F` along `L`, exhibits
`(LeftExtension.whiskerRight L F G).obj E` as a pointwise left Kan extension of `F ⋙ G` along
`L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianteab1add0da433b279d00ee44e3cbcf01c478f365a3292f611f98794b301577d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Varianteab1add0da433b279d00ee44e3cbcf01c478f365a3292f611f98794b301577d2.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c304ff82ac77168c1211a5364d8cc6affba306f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
