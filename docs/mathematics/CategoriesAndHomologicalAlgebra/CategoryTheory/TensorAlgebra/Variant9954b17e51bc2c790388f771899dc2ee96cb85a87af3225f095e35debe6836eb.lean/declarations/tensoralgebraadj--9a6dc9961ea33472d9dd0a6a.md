# tensorAlgebraAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:624b96a417e33dbfb931ca8dfb368fc5e335dd86855439fc72b4d7364feb136d",
  "kind": "def",
  "lexical_name": "tensorAlgebraAdj",
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
  "slug": "tensoralgebraadj--9a6dc9961ea33472d9dd0a6a",
  "source": {
    "blob": "0d10aac697eaffa87ee5f2539f9dff72d81b37f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TensorAlgebra/Variant9954b17e51bc2c790388f771899dc2ee96cb85a87af3225f095e35debe6836eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a6dc9961ea33472d9dd0a6aefb9b57be4c3acc688f9d8118fbd57a899aafaa2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TensorAlgebra/Variant9954b17e51bc2c790388f771899dc2ee96cb85a87af3225f095e35debe6836eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:624b96a417e33dbfb931ca8dfb368fc5e335dd86855439fc72b4d7364feb136d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorAlgebraAdj : tensorAlgebra.{u} R ⊣ forget₂ (AlgCat.{u} R) (ModuleCat.{u} R) where
  unit.app M := ModuleCat.ofHom (TensorAlgebra.ι _)
  counit.app A := AlgCat.ofHom (TensorAlgebra.lift R .id)
  counit.naturality _ _ _ := by
    ext : 1
    apply TensorAlgebra.hom_ext
    ext
    simp
  left_triangle_components _ := by
    ext : 1
    dsimp
    ext
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TensorAlgebra/Variant9954b17e51bc2c790388f771899dc2ee96cb85a87af3225f095e35debe6836eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TensorAlgebra/Variant9954b17e51bc2c790388f771899dc2ee96cb85a87af3225f095e35debe6836eb.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d10aac697eaffa87ee5f2539f9dff72d81b37f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
