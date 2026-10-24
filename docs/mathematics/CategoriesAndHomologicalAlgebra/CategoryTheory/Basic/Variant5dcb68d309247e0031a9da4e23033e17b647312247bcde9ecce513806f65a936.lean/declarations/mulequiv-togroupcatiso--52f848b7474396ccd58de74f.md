# MulEquiv.toGroupCatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5eb3a0456cd2f7c7aad4c09ce31a89cd2bfc5019d7a9fc097897bef19cbfd8d7",
  "kind": "def",
  "lexical_name": "MulEquiv.toGroupCatIso",
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
  "slug": "mulequiv-togroupcatiso--52f848b7474396ccd58de74f",
  "source": {
    "blob": "7c3a23565b2dc6fe0912ac3ecc75a741c3382347",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 389,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5dcb68d309247e0031a9da4e23033e17b647312247bcde9ecce513806f65a936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52f848b7474396ccd58de74f822a3961c04d35edcd4e19f790dea4a27e34e0d1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5dcb68d309247e0031a9da4e23033e17b647312247bcde9ecce513806f65a936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5eb3a0456cd2f7c7aad4c09ce31a89cd2bfc5019d7a9fc097897bef19cbfd8d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulEquiv.toGroupCatIso {X Y : GroupCat} (e : X ≃* Y) : X ≅ Y where
  hom := e.toMonoidHom
  inv := e.symm.toMonoidHom
set_option linter.uppercaseLean3 false in
#align mul_equiv.to_Group_iso MulEquiv.toGroupCatIso
set_option linter.uppercaseLean3 false in
#align add_equiv.to_AddGroup_iso AddEquiv.toAddGroupCatIso

/-- Build an isomorphism in the category `AddGroup` from an `AddEquiv` between `AddGroup`s. -/
add_decl_doc AddEquiv.toAddGroupCatIso

/-- Build an isomorphism in the category `CommGroupCat` from a `MulEquiv`
between `CommGroup`s. -/
@[to_additive (attr := simps)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5dcb68d309247e0031a9da4e23033e17b647312247bcde9ecce513806f65a936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5dcb68d309247e0031a9da4e23033e17b647312247bcde9ecce513806f65a936.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c3a23565b2dc6fe0912ac3ecc75a741c3382347` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
