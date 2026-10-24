# CommGroupCat.forget_reflects_isos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03ab17dd885e8cc57f33188e05ccba682635f41e800a2b685e95f3f4bb1f6ee4",
  "kind": "instance",
  "lexical_name": "CommGroupCat.forget_reflects_isos",
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
  "slug": "commgroupcat-forget-reflects-isos--42336b60cc4036a277ed04e6",
  "source": {
    "blob": "5f2ce8cee8f8af205db7312397c21b7b6c98150d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 514,
    "line": 504,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad7a0030e4b611a9951914477053037137603f605fad6176cf61b2c83057d19f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42336b60cc4036a277ed04e61ec28bea8aaa0b9b0395dab7429fc7bfdc81caac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad7a0030e4b611a9951914477053037137603f605fad6176cf61b2c83057d19f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03ab17dd885e8cc57f33188e05ccba682635f41e800a2b685e95f3f4bb1f6ee4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–514.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CommGroupCat.forget_reflects_isos : ReflectsIsomorphisms (forget CommGroupCat.{u}) where
  reflects {X Y} f _ := by
    let i := asIso ((forget CommGroupCat).map f)
    let e : X ≃* Y := MulEquiv.mk i.toEquiv
      -- Porting note: this would ideally be `by aesop`, as in `MonCat.forget_reflects_isos`
      (MonoidHom.map_mul (show MonoidHom X Y from f))
    exact IsIso.of_iso e.toCommGroupCatIso
set_option linter.uppercaseLean3 false in
#align CommGroup.forget_reflects_isos CommGroupCat.forget_reflects_isos
set_option linter.uppercaseLean3 false in
#align AddCommGroup.forget_reflects_isos AddCommGroupCat.forget_reflects_isos
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad7a0030e4b611a9951914477053037137603f605fad6176cf61b2c83057d19f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad7a0030e4b611a9951914477053037137603f605fad6176cf61b2c83057d19f.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f2ce8cee8f8af205db7312397c21b7b6c98150d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
