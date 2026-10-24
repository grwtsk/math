# hoFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52e76c5293c9ad494642cce290e6c51287bd530b1c797ee77dc9e2f95edb6f22",
  "kind": "def",
  "lexical_name": "hoFunctor",
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
  "slug": "hofunctor--97cfc36de74e19f83e0b9745",
  "source": {
    "blob": "8ae3d974a68bdc3dc22d11f78f2d9f95aae418d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 621,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantb4437e2300b9d53dc2e4f457ce20448a83a6ef27f25a10e6a2cdd814e411d916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97cfc36de74e19f83e0b974512663d78926d2096f9feb779c2ff9bfd1400151e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantb4437e2300b9d53dc2e4f457ce20448a83a6ef27f25a10e6a2cdd814e411d916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52e76c5293c9ad494642cce290e6c51287bd530b1c797ee77dc9e2f95edb6f22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hoFunctor : SSet.{u} ⥤ Cat.{u, u} where
  obj X := ↧X.HomotopyCategory
  map f := (mapHomotopyCategory f).toCatHom
  map_id _ := Truncated.hoFunctor₂.map_id _
  map_comp f g := Truncated.hoFunctor₂.map_comp ((truncation 2).map f) ((truncation 2).map g)

@[deprecated (since := "2026-08-12")]
alias hoFunctor.obj.equiv := HomotopyCategory.objEquiv

/-- Since `⦋0⦌ : SimplexCategory` is terminal, `Δ[0]` has a unique point and thus
`OneTruncation₂ ((truncation 2).obj Δ[0])` has a unique inhabitant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantb4437e2300b9d53dc2e4f457ce20448a83a6ef27f25a10e6a2cdd814e411d916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomotopyCat/Variantb4437e2300b9d53dc2e4f457ce20448a83a6ef27f25a10e6a2cdd814e411d916.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ae3d974a68bdc3dc22d11f78f2d9f95aae418d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
