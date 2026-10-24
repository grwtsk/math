# monCatIsoToMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e66bd8f361f9458b32f214c5cdf97eb40eb2f24d824bf21a2a54ef02d91ae9e",
  "kind": "def",
  "lexical_name": "monCatIsoToMulEquiv",
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
  "slug": "moncatisotomulequiv--2a3190aae32d672fe8c4e739",
  "source": {
    "blob": "3fb910e24afe996a8dac7c1f14ac6e0594428ae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 351,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a3190aae32d672fe8c4e73920e11227e5c6c5cbec534dfc4a2a0cf075d08387",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e66bd8f361f9458b32f214c5cdf97eb40eb2f24d824bf21a2a54ef02d91ae9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monCatIsoToMulEquiv {X Y : MonCat} (i : X ≅ Y) : X ≃* Y :=
  MonoidHom.toMulEquiv i.hom i.inv i.hom_inv_id i.inv_hom_id
set_option linter.uppercaseLean3 false in
#align category_theory.iso.Mon_iso_to_mul_equiv CategoryTheory.Iso.monCatIsoToMulEquiv
set_option linter.uppercaseLean3 false in
#align category_theory.iso.AddMon_iso_to_add_equiv CategoryTheory.Iso.addMonCatIsoToAddEquiv

/-- Build a `MulEquiv` from an isomorphism in the category `CommMonCat`. -/
@[to_additive "Build an `AddEquiv` from an isomorphism in the category\n`AddCommMonCat`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fb910e24afe996a8dac7c1f14ac6e0594428ae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
