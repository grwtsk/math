# _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variantaf5e820931ae52c6e907cc9abc629501c39dbaf9a77d1bc65b7b43c1471c8d74.CategoryTheory.Functor.FullyFaithful.over

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a707552e7bd282a7131960651044a9773133f0468b5f5f4a1250250e5fca0a0f",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variantaf5e820931ae52c6e907cc9abc629501c39dbaf9a77d1bc65b7b43c1471c8d74.CategoryTheory.Functor.FullyFaithful.over",
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
  "slug": "root-grwtsk-categoriesandhomologicalalgebra-categorytheory-over-varianta--281dd75e6bffbc8815a2e5d9",
  "source": {
    "blob": "23f10e5b89c71e92c7397ded8f9ec69cea66af85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 396,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant95cf3b65866bd9c47cb068af642517acbe2f603179d7de2d17265a87f13ed7f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:281dd75e6bffbc8815a2e5d967562a5fbd02cf5236382d2fc4e4409742aba93e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant95cf3b65866bd9c47cb068af642517acbe2f603179d7de2d17265a87f13ed7f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a707552e7bd282a7131960651044a9773133f0468b5f5f4a1250250e5fca0a0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variantaf5e820931ae52c6e907cc9abc629501c39dbaf9a77d1bc65b7b43c1471c8d74.CategoryTheory.Functor.FullyFaithful.over (h : F.FullyFaithful) :
    (post (X := X) F).FullyFaithful where
  preimage {A B} f := Over.homMk (h.preimage f.left) <| h.map_injective (by simpa using Over.w f)

/-- If `G` is a right adjoint, then so is `post G : Over Y ⥤ Over (G Y)`.

If the left adjoint of `G` is `F`, then the left adjoint of `post G` is given by
`(X ⟶ G Y) ↦ (F X ⟶ F G Y ⟶ Y)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant95cf3b65866bd9c47cb068af642517acbe2f603179d7de2d17265a87f13ed7f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant95cf3b65866bd9c47cb068af642517acbe2f603179d7de2d17265a87f13ed7f1.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23f10e5b89c71e92c7397ded8f9ec69cea66af85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
