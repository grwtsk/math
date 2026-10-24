# biproduct.matrixEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9c7284f626283a2d3b930651870b3217ecd60c223476cd6fe7664b1a4c933ef",
  "kind": "def",
  "lexical_name": "biproduct.matrixEquiv",
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
  "slug": "biproduct-matrixequiv--e217421a57a38b680f5bcd1c",
  "source": {
    "blob": "e842e84ab6ad685e705eec0dcc01deae3c1c99bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 990,
    "line": 977,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant33830de11a2f18da805b87652974b0afe8386ef8e709f26a97b62c95fd80ab3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e217421a57a38b680f5bcd1c1fadf6c6669d5a6eb09448fecd85f5133c21fb0a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant33830de11a2f18da805b87652974b0afe8386ef8e709f26a97b62c95fd80ab3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9c7284f626283a2d3b930651870b3217ecd60c223476cd6fe7664b1a4c933ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 977–990.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def biproduct.matrixEquiv : (⨁ f ⟶ ⨁ g) ≃ ∀ j k, f j ⟶ g k where
  toFun := biproduct.components
  invFun := biproduct.matrix
  left_inv := biproduct.components_matrix
  right_inv m := by
    ext
    apply biproduct.matrix_components

end FiniteBiproducts

variable {J : Type w}
variable {C : Type u} [Category.{v} C] [HasZeroMorphisms C]
variable {D : Type uD} [Category.{uD'} D] [HasZeroMorphisms D]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant33830de11a2f18da805b87652974b0afe8386ef8e709f26a97b62c95fd80ab3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant33830de11a2f18da805b87652974b0afe8386ef8e709f26a97b62c95fd80ab3c.lean#L977).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e842e84ab6ad685e705eec0dcc01deae3c1c99bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
