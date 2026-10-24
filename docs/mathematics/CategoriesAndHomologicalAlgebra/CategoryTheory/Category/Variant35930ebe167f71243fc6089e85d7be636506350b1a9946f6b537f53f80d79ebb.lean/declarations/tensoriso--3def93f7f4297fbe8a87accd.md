# tensorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:289d67d3870be6ef9ace80c0b93ff8e938d15b4717fd75988a772e1361e84d22",
  "kind": "def",
  "lexical_name": "tensorIso",
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
  "slug": "tensoriso--3def93f7f4297fbe8a87accd",
  "source": {
    "blob": "5176d59083667e8a87b64c09475941b629b96d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 223,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant35930ebe167f71243fc6089e85d7be636506350b1a9946f6b537f53f80d79ebb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3def93f7f4297fbe8a87accdb1b617712a416bfb632e3d808b20e021aebd55e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant35930ebe167f71243fc6089e85d7be636506350b1a9946f6b537f53f80d79ebb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:289d67d3870be6ef9ace80c0b93ff8e938d15b4717fd75988a772e1361e84d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tensorIso {C : Type u} {X Y X' Y' : C} [Category.{v} C] [MonoidalCategory.{v} C] (f : X ≅ Y)
    (g : X' ≅ Y') : X ⊗ X' ≅ Y ⊗ Y' where
  hom := f.hom ⊗ g.hom
  inv := f.inv ⊗ g.inv
  hom_inv_id := by rw [← tensor_comp, Iso.hom_inv_id, Iso.hom_inv_id, ← tensor_id]
  inv_hom_id := by rw [← tensor_comp, Iso.inv_hom_id, Iso.inv_hom_id, ← tensor_id]
#align category_theory.tensor_iso CategoryTheory.tensorIso

/-- Notation for `tensorIso`, the tensor product of isomorphisms -/
infixr:70 " ⊗ " => tensorIso

namespace MonoidalCategory

section

variable {C : Type u} [Category.{v} C] [MonoidalCategory.{v} C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant35930ebe167f71243fc6089e85d7be636506350b1a9946f6b537f53f80d79ebb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant35930ebe167f71243fc6089e85d7be636506350b1a9946f6b537f53f80d79ebb.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5176d59083667e8a87b64c09475941b629b96d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
