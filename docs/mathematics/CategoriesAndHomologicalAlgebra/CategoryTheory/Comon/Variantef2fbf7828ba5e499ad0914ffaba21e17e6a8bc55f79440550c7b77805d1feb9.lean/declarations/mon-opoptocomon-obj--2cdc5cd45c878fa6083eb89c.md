# Mon_OpOpToComon_obj'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0be0034a92d06a8c86bd5c39cf3fa8bbfc40d918643157b54774eaba0d9f5113",
  "kind": "def",
  "lexical_name": "Mon_OpOpToComon_obj'",
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
  "slug": "mon-opoptocomon-obj--2cdc5cd45c878fa6083eb89c",
  "source": {
    "blob": "5c89a845f6b09a60f095d0357799ada9500c37b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 278,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cdc5cd45c878fa6083eb89cf160e6402ddb7b7ce4fd94a9156a3e87e5589f21",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0be0034a92d06a8c86bd5c39cf3fa8bbfc40d918643157b54774eaba0d9f5113`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def Mon_OpOpToComon_obj' (A : (Mon_ (Cᵒᵖ))) : Comon_ C where
  X := unop A.X
  counit := A.one.unop
  comul := A.mul.unop
  counit_comul := by rw [← unop_whiskerRight, ← unop_comp, Mon_.one_mul]; rfl
  comul_counit := by rw [← unop_whiskerLeft, ← unop_comp, Mon_.mul_one]; rfl
  comul_assoc := by
    rw [← unop_whiskerRight, ← unop_whiskerLeft, ← unop_comp_assoc, ← unop_comp,
      Mon_.mul_assoc_flip]
    rfl

/--
The contravariant functor turning monoid objects in the opposite category into comonoid objects.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c89a845f6b09a60f095d0357799ada9500c37b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
