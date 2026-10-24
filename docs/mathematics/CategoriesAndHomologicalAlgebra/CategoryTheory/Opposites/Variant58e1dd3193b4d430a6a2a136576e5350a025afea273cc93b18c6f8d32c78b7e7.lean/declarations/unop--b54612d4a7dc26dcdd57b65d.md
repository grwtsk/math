# unop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bae5326b4c584928c4b295f317eb6d43f432339ca8710a676df965be8766e91",
  "kind": "def",
  "lexical_name": "unop",
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
  "slug": "unop--b54612d4a7dc26dcdd57b65d",
  "source": {
    "blob": "a79d0645fe681b2aadf99e71f865c32e31005b51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 448,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant58e1dd3193b4d430a6a2a136576e5350a025afea273cc93b18c6f8d32c78b7e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b54612d4a7dc26dcdd57b65dca2a0a365cddf53302582bf65e01d2f5572739b8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant58e1dd3193b4d430a6a2a136576e5350a025afea273cc93b18c6f8d32c78b7e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bae5326b4c584928c4b295f317eb6d43f432339ca8710a676df965be8766e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unop {X Y : Cᵒᵖ} (f : X ≅ Y) : Y.unop ≅ X.unop where
  hom := f.hom.unop
  inv := f.inv.unop
  hom_inv_id := by simp only [← unop_comp, f.inv_hom_id, unop_id]
  inv_hom_id := by simp only [← unop_comp, f.hom_inv_id, unop_id]
#align category_theory.iso.unop CategoryTheory.Iso.unop

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant58e1dd3193b4d430a6a2a136576e5350a025afea273cc93b18c6f8d32c78b7e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant58e1dd3193b4d430a6a2a136576e5350a025afea273cc93b18c6f8d32c78b7e7.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79d0645fe681b2aadf99e71f865c32e31005b51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
