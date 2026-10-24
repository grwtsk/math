# isRegularEpi_of_extremalEpi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f60b88e464751533d7f59eddd0cba2e496f1f445f96aa82d80a90f59ac49721",
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
  "slug": "isregularepi-of-extremalepi--b72853941ed147389f880ea9",
  "source": {
    "blob": "41d89dde2f167ad0f1ef659bf5948d242a6bfa5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 170,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef403824a333a3e816c010b9c7152eaddbe152a4c91b82b3a7cbe5efc60d6c34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b72853941ed147389f880ea95331096b2bacb151b45780fd00dc2732fea45a8d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef403824a333a3e816c010b9c7152eaddbe152a4c91b82b3a7cbe5efc60d6c34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f60b88e464751533d7f59eddd0cba2e496f1f445f96aa82d80a90f59ac49721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–187.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef403824a333a3e816c010b9c7152eaddbe152a4c91b82b3a7cbe5efc60d6c34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef403824a333a3e816c010b9c7152eaddbe152a4c91b82b3a7cbe5efc60d6c34.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41d89dde2f167ad0f1ef659bf5948d242a6bfa5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
