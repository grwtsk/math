# CommGrpCat.forget_reflects_isos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:787189dbc84ddf98c6fefcd303d00dc5835eceba764d1613156d0c148236dfe4",
  "kind": "instance",
  "lexical_name": "CommGrpCat.forget_reflects_isos",
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
  "slug": "commgrpcat-forget-reflects-isos--891aaa2d44e1f34e36bd61a0",
  "source": {
    "blob": "1f045596438bb5f9695d010015ac89be69fd71cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 608,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:891aaa2d44e1f34e36bd61a07ff036fb39c77d33a7ef387281d419cf6deac8c2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:787189dbc84ddf98c6fefcd303d00dc5835eceba764d1613156d0c148236dfe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CommGrpCat.forget_reflects_isos : (forget CommGrpCat.{u}).ReflectsIsomorphisms where
  reflects {X Y} f _ := by
    let i := asIso ((forget CommGrpCat).map f)
    let e : X ≃* Y := { i.toEquiv with map_mul' := by simp [Iso.toEquiv, i] }
    exact e.toCommGrpIso.isIso_hom

-- note: in the following definitions, there is a problem with `@[to_additive]`
-- as the `Category` instance is not found on the additive variant
-- this variant is then renamed with an `Aux` suffix
set_option linter.checkUnivs false in
/-- An alias for `GrpCat.{max u v}`, to deal around unification issues. -/
@[to_additive GrpMaxAux
  /-- An alias for `AddGrpCat.{max u v}`, to deal around unification issues. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta93bc572dc528b54cb80e11a805c87ce0e379de3ebd30ee1d833eef459e36b5e.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f045596438bb5f9695d010015ac89be69fd71cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
