# equivalenceFunctorEquivFunctorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:818f8bd1a30987fa49d54c38310a6531f9d0f65dfad336a693c042ca309b4ab8",
  "kind": "def",
  "lexical_name": "equivalenceFunctorEquivFunctorIso",
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
  "slug": "equivalencefunctorequivfunctoriso--66b62a5b0590af421cd3df52",
  "source": {
    "blob": "061f27a6c7689d86a1b2fd8b45132bb897662705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 160,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante8b7d7e43ec8d510390292bdb10cd3bb78b92a60d8e67f1f82c2eb9a9fdc4d66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66b62a5b0590af421cd3df5254d4b501e448d5417d798196d9e4bdc93f563205",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante8b7d7e43ec8d510390292bdb10cd3bb78b92a60d8e67f1f82c2eb9a9fdc4d66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:818f8bd1a30987fa49d54c38310a6531f9d0f65dfad336a693c042ca309b4ab8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalenceFunctorEquivFunctorIso :
    ((equivalence A A').congrLeft.trans <| functorEquiv A' A B).functor ≅
      ((functorEquiv A A' B).trans <| Prod.braiding (A ⥤ B) (A' ⥤ B)).functor :=
  NatIso.ofComponents (fun E ↦
    Iso.prod
      ((Functor.associator _ _ E).symm ≪≫ isoWhiskerRight (Sum.swapCompInl A' A) _)
      ((Functor.associator _ _ _).symm ≪≫ isoWhiskerRight (Sum.swapCompInr A' A) _))

end Swap

section CompatibilityWithProductAssociator

variable (T : Type*) [Category* T]

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The equivalence `Sum.functorEquiv` sends associativity of sums to associativity of products -/
@[simps! hom_app_fst hom_app_snd_fst hom_app_snd_snd inv_app_fst inv_app_snd_fst inv_app_snd_snd]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante8b7d7e43ec8d510390292bdb10cd3bb78b92a60d8e67f1f82c2eb9a9fdc4d66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante8b7d7e43ec8d510390292bdb10cd3bb78b92a60d8e67f1f82c2eb9a9fdc4d66.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `061f27a6c7689d86a1b2fd8b45132bb897662705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
