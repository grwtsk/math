# MulEquiv.toCommMonCatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:511a0f5a07e84b41745b84f35dc04223c2997d786d7afdcbc155d2bde339bf11",
  "kind": "def",
  "lexical_name": "MulEquiv.toCommMonCatIso",
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
  "slug": "mulequiv-tocommmoncatiso--5c1fdba7921b66bfc6fd3722",
  "source": {
    "blob": "d73792bb3cbe5c6465ccd5f2e98333b833b0c6c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 340,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c1fdba7921b66bfc6fd37225ab0fa5096c6eb7b2fe5ea86161a2aceca538108",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:511a0f5a07e84b41745b84f35dc04223c2997d786d7afdcbc155d2bde339bf11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulEquiv.toCommMonCatIso (e : X ≃* Y) : CommMonCat.of X ≅ CommMonCat.of Y where
  hom := CommMonCat.ofHom e.toMonoidHom
  inv := CommMonCat.ofHom e.symm.toMonoidHom
set_option linter.uppercaseLean3 false in
#align mul_equiv.to_CommMon_iso MulEquiv.toCommMonCatIso
set_option linter.uppercaseLean3 false in
#align add_equiv.to_AddCommMon_iso AddEquiv.toAddCommMonCatIso

/-- Build an isomorphism in the category `AddCommMonCat`
from an `AddEquiv` between `AddCommMonoid`s. -/
add_decl_doc AddEquiv.toAddCommMonCatIso

end

namespace CategoryTheory.Iso

/-- Build a `MulEquiv` from an isomorphism in the category `MonCat`. -/
@[to_additive addMonCatIsoToAddEquiv
      "Build an `AddEquiv` from an isomorphism in the category\n`AddMonCat`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9bd756b028e0460ca230cdc12d3a9aef9f64c7aafcb9cbb467367a1391960ebf.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d73792bb3cbe5c6465ccd5f2e98333b833b0c6c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
