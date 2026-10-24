# instMonoidalCategoryStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3e1e4e010fdd526fba6b53824f5e9fbe928eb6127ca67ebe3ad4a43e301c42b",
  "kind": "instance",
  "lexical_name": "instMonoidalCategoryStruct",
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
  "slug": "instmonoidalcategorystruct--6f1e630ee580c7b5bf2d66ed",
  "source": {
    "blob": "0899fdb84fce0dcc7828dcf8979e21ef650f108f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 36,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variant196e6bffac12cb28e07a9c84b72b56d285a11b16709897d3d98f7cb2324b7ddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f1e630ee580c7b5bf2d66ed2d6054e3ffc7ecfa8e5bf944cea38989b91b07c0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Monoidal/Variant196e6bffac12cb28e07a9c84b72b56d285a11b16709897d3d98f7cb2324b7ddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3e1e4e010fdd526fba6b53824f5e9fbe928eb6127ca67ebe3ad4a43e301c42b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instMonoidalCategoryStruct :
    MonoidalCategoryStruct.{u} (BialgCat R) where
  tensorObj X Y := of R (X ⊗[R] Y)
  whiskerLeft X _ _ f := ofHom (f.1.lTensor X)
  whiskerRight f X := ofHom (f.1.rTensor X)
  tensorHom f g := ofHom (Bialgebra.TensorProduct.map f.1 g.1)
  tensorUnit := of R R
  associator X Y Z := (Bialgebra.TensorProduct.assoc R R X Y Z).toBialgIso
  leftUnitor X := (Bialgebra.TensorProduct.lid R X).toBialgIso
  rightUnitor X := (Bialgebra.TensorProduct.rid R R X).toBialgIso

/-- The data needed to induce a `MonoidalCategory` structure via
`BialgCat.instMonoidalCategoryStruct` and the forgetful functor to algebras. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Monoidal/Variant196e6bffac12cb28e07a9c84b72b56d285a11b16709897d3d98f7cb2324b7ddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Monoidal/Variant196e6bffac12cb28e07a9c84b72b56d285a11b16709897d3d98f7cb2324b7ddd.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0899fdb84fce0dcc7828dcf8979e21ef650f108f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
