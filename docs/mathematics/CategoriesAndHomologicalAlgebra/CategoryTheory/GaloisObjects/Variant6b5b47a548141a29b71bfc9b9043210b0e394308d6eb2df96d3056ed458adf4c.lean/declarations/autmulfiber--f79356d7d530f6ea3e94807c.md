# autMulFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0dd099b6dcd8623b4d909d553aa3ae5c0b6cb08ed7fb807c50e7fd3d9859cf3c",
  "kind": "instance",
  "lexical_name": "autMulFiber",
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
  "slug": "autmulfiber--f79356d7d530f6ea3e94807c",
  "source": {
    "blob": "0f1224d00136de1615caf805d6e28dad5ab7fede",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f79356d7d530f6ea3e94807c10cbb366d754b51cc5dc2380cd5a2f841db652ae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0dd099b6dcd8623b4d909d553aa3ae5c0b6cb08ed7fb807c50e7fd3d9859cf3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance autMulFiber (F : C ⥤ FintypeCat.{w}) (X : C) : MulAction (Aut X) (F.obj X) where
  smul σ a := F.map σ.hom a
  one_smul a := by
    show F.map (𝟙 X) a = a
    simp only [map_id, FintypeCat.id_apply]
  mul_smul g h a := by
    show F.map (h.hom ≫ g.hom) a = (F.map h.hom ≫ F.map g.hom) a
    simp only [map_comp, FintypeCat.comp_apply]

variable [GaloisCategory C] (F : C ⥤ FintypeCat.{w}) [FiberFunctor F]

/-- For a connected object `X` of `C`, the quotient `X / Aut X` is terminal if and only if
the quotient `F.obj X / Aut X` has exactly one element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variant6b5b47a548141a29b71bfc9b9043210b0e394308d6eb2df96d3056ed458adf4c.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f1224d00136de1615caf805d6e28dad5ab7fede` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
