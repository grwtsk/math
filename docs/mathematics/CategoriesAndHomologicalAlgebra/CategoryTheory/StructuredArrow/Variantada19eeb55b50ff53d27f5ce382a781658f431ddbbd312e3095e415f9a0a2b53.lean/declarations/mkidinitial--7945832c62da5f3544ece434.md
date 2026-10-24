# mkIdInitial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ada0a0465aa1466e80ed91201d4a7167a2e088a47b2dfeca3b000fa34f3ca762",
  "kind": "def",
  "lexical_name": "mkIdInitial",
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
  "slug": "mkidinitial--7945832c62da5f3544ece434",
  "source": {
    "blob": "49a533f1c4537d7b0e4de7ae177fc534b145fa2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 266,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantada19eeb55b50ff53d27f5ce382a781658f431ddbbd312e3095e415f9a0a2b53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7945832c62da5f3544ece4342dfcadd4ccb4e85ca8d9b7bd7bf705349f63dd9a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantada19eeb55b50ff53d27f5ce382a781658f431ddbbd312e3095e415f9a0a2b53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ada0a0465aa1466e80ed91201d4a7167a2e088a47b2dfeca3b000fa34f3ca762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkIdInitial [Full T] [Faithful T] : IsInitial (mk (𝟙 (T.obj Y))) where
  desc c := homMk (T.preimage c.pt.hom)
  uniq c m _ := by
    apply CommaMorphism.ext
    · aesop_cat
    · apply T.map_injective
      simpa only [homMk_right, T.image_preimage, ← w m] using (Category.id_comp _).symm
#align category_theory.structured_arrow.mk_id_initial CategoryTheory.StructuredArrow.mkIdInitial

variable {A : Type u₃} [Category.{v₃} A] {B : Type u₄} [Category.{v₄} B]

/-- The functor `(S, F ⋙ G) ⥤ (S, G)`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantada19eeb55b50ff53d27f5ce382a781658f431ddbbd312e3095e415f9a0a2b53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantada19eeb55b50ff53d27f5ce382a781658f431ddbbd312e3095e415f9a0a2b53.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a533f1c4537d7b0e4de7ae177fc534b145fa2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
