# prod_rightUnitor_inv_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8cd5bd0-a249-9611-f03a-e6640fc4054a",
  "kind": "theorem",
  "lexical_name": "prod_rightUnitor_inv_naturality",
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
  "slug": "prod-rightunitor-inv-naturality--07d3a8f25a11c10b02f5bf4d",
  "source": {
    "blob": "83b74b9661833a18affbb9b7d69ae3b7f309f548",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1123,
    "line": 1118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant28e86d662bbe4972dd8351a0b8c5685badcf363937216de260bf0cd5d0b134c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07d3a8f25a11c10b02f5bf4d9ffca48af4d8269cc279cd4e6749f20920030dc0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant28e86d662bbe4972dd8351a0b8c5685badcf363937216de260bf0cd5d0b134c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8cd5bd0-a249-9611-f03a-e6640fc4054a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1118–1123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_rightUnitor_inv_naturality [HasBinaryProducts C] (f : X ⟶ Y) :
    (prod.rightUnitor X).inv ≫ prod.map f (𝟙 _) = f ≫ (prod.rightUnitor Y).inv := by
  rw [Iso.inv_comp_eq, ← Category.assoc, Iso.eq_comp_inv, prod.rightUnitor_hom_naturality]
#align category_theory.limits.prod_right_unitor_inv_naturality CategoryTheory.Limits.prod_rightUnitor_inv_naturality
#align category_theory.limits.prod_right_unitor_inv_naturality_assoc CategoryTheory.Limits.prod_rightUnitor_inv_naturality_assoc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant28e86d662bbe4972dd8351a0b8c5685badcf363937216de260bf0cd5d0b134c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant28e86d662bbe4972dd8351a0b8c5685badcf363937216de260bf0cd5d0b134c3.lean#L1118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b74b9661833a18affbb9b7d69ae3b7f309f548` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
