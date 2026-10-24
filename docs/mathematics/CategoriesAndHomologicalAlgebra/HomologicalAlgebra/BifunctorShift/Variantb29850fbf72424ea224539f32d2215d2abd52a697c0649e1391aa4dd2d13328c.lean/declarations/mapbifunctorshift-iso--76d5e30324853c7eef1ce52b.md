# mapBifunctorShift₂Iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c02d824c72369023e624fddd49d684e204ad27c5dca9f60365ebc0954c3f47c",
  "kind": "def",
  "lexical_name": "mapBifunctorShift₂Iso",
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
  "slug": "mapbifunctorshift-iso--76d5e30324853c7eef1ce52b",
  "source": {
    "blob": "c465a0ba0e1a83dca27359dc1087c3ddfc1051d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 155,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variantb29850fbf72424ea224539f32d2215d2abd52a697c0649e1391aa4dd2d13328c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76d5e30324853c7eef1ce52b4aad285aed016c353e0d04d08cbfb3eb41ed6b13",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variantb29850fbf72424ea224539f32d2215d2abd52a697c0649e1391aa4dd2d13328c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c02d824c72369023e624fddd49d684e204ad27c5dca9f60365ebc0954c3f47c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapBifunctorShift₂Iso :
    mapBifunctor K₁ (K₂⟦y⟧) F ≅ (mapBifunctor K₁ K₂ F)⟦y⟧ :=
  HomologicalComplex₂.total.mapIso
    (mapBifunctorHomologicalComplexShift₂Iso K₁ K₂ F y) (ComplexShape.up ℤ) ≪≫
    (((F.mapBifunctorHomologicalComplex _ _).obj K₁).obj K₂).totalShift₂Iso y

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variantb29850fbf72424ea224539f32d2215d2abd52a697c0649e1391aa4dd2d13328c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorShift/Variantb29850fbf72424ea224539f32d2215d2abd52a697c0649e1391aa4dd2d13328c.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c465a0ba0e1a83dca27359dc1087c3ddfc1051d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
