# uliftEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2249df32acb2b3e7d0083c5527ddda72b3578c8af830ca2555548f48968dddf6",
  "kind": "def",
  "lexical_name": "uliftEquivalence",
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
  "slug": "uliftequivalence--0f89c606cc40a937007e01da",
  "source": {
    "blob": "6ef323c610ca4a235a2eb28de288c0f30e5c8511",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 281,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant1dd0e612a00c6e7211206c6ee04e68bf2fde6e319745eb5fe9ade6df29d155be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f89c606cc40a937007e01dac1f327e337337ce0787f338c651ce18a36510930",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant1dd0e612a00c6e7211206c6ee04e68bf2fde6e319745eb5fe9ade6df29d155be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2249df32acb2b3e7d0083c5527ddda72b3578c8af830ca2555548f48968dddf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uliftEquivalence :
    ULiftHom.{w'} (ULift.{w'} (WidePushoutShape J)) ≌ WidePushoutShape (ULift J) :=
  (ULiftHomULiftCategory.equiv.{w', w', w, w} (WidePushoutShape J)).symm.trans
    (equivalenceOfEquiv _ (Equiv.ulift.{w', w}.symm : J ≃ ULift.{w'} J))

end WidePushoutShape

variable (C : Type u) [Category.{v} C]

/-- A category `HasWidePullbacks` if it has all limits of shape `WidePullbackShape J`, i.e. if it
has a wide pullback for every collection of morphisms with the same codomain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant1dd0e612a00c6e7211206c6ee04e68bf2fde6e319745eb5fe9ade6df29d155be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variant1dd0e612a00c6e7211206c6ee04e68bf2fde6e319745eb5fe9ade6df29d155be.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ef323c610ca4a235a2eb28de288c0f30e5c8511` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
