# obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88057579bbd9d7c88634601dd6c3492813fd233a4c69785c5bdf7bfbb7362367",
  "kind": "def",
  "lexical_name": "obj",
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
  "slug": "obj--ca36804db2f3652b5ba07eee",
  "source": {
    "blob": "3efddee1016cd154c3ae71579922da20fa2d0890",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca36804db2f3652b5ba07eee39e31656d5f373324cc506ec9ae80155f1774c01",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88057579bbd9d7c88634601dd6c3492813fd233a4c69785c5bdf7bfbb7362367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def obj (K : HomologicalComplex (Karoubi C) c) : Karoubi (HomologicalComplex C c) where
  X :=
    { X := fun n => (K.X n).X
      d := fun i j => (K.d i j).f
      shape := fun i j hij => hom_eq_zero_iff.mp (K.shape i j hij)
      d_comp_d' := fun i j k _ _ => by
        simpa only [comp_f] using hom_eq_zero_iff.mp (K.d_comp_d i j k) }
  p := { f := fun n => (K.X n).p }

/-- The functor `HomologicalComplex (Karoubi C) c ⥤ Karoubi (HomologicalComplex C c)`,
on morphisms -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3efddee1016cd154c3ae71579922da20fa2d0890` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
