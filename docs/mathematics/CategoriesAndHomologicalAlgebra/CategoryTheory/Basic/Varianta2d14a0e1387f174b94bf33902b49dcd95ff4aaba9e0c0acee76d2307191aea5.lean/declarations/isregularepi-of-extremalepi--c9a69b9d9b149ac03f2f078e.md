# isRegularEpi_of_extremalEpi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef06947f773b2db6c62278bc28b7dc5a5346131d8cf11e20cd5d88ae2be8fc94",
  "kind": "instance",
  "lexical_name": "isRegularEpi_of_extremalEpi",
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
  "slug": "isregularepi-of-extremalepi--c9a69b9d9b149ac03f2f078e",
  "source": {
    "blob": "4b47e0f5670124be88f67a116a184ec4c4188bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2d14a0e1387f174b94bf33902b49dcd95ff4aaba9e0c0acee76d2307191aea5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9a69b9d9b149ac03f2f078ec0352d96da25466c1cbbfee26a5630ff45647ce6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2d14a0e1387f174b94bf33902b49dcd95ff4aaba9e0c0acee76d2307191aea5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef06947f773b2db6c62278bc28b7dc5a5346131d8cf11e20cd5d88ae2be8fc94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isRegularEpi_of_extremalEpi (f : X ⟶ Y) [ExtremalEpi f] : IsRegularEpi f :=
  ⟨⟨regularEpiOfExtremalEpi f⟩⟩

end StrongEpiMonoFactorisation

section Frobenius

open Subobject

variable {A B : C} (f : A ⟶ B) (A' : Subobject A) (B' : Subobject B)

set_option backward.isDefEq.respectTransparency false in
/--
Given a morphism `f : A ⟶ B` and subobjects `A' ⟶ A` and `B' ⟶ B`, we have a canonical morphism
`(A' ⊓ (Subobject.pullback f).obj B') ⟶ ((«exists» f).obj A' ⊓ B')`.
This morphism is part of a `StrongEpiMonoFactorisation` of
`(A' ⊓ (Subobject.pullback f).obj B').arrow ≫ f`, see `frobeniusStrongEpiMonoFactorisation`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2d14a0e1387f174b94bf33902b49dcd95ff4aaba9e0c0acee76d2307191aea5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2d14a0e1387f174b94bf33902b49dcd95ff4aaba9e0c0acee76d2307191aea5.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b47e0f5670124be88f67a116a184ec4c4188bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
