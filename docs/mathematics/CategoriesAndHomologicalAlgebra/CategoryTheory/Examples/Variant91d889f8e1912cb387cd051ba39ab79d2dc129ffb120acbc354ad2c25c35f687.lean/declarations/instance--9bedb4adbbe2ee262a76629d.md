# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a604834c4c0397ab3c2cb23316aad3f067b89b2a29446369ffb47cdd58ed9f9",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--9bedb4adbbe2ee262a76629d",
  "source": {
    "blob": "57bd30bece99a90129f5524981432082d840e995",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 93,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variant91d889f8e1912cb387cd051ba39ab79d2dc129ffb120acbc354ad2c25c35f687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bedb4adbbe2ee262a76629d1a95e63f15177f05b9ffeea2a4ab1731426d7bb7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variant91d889f8e1912cb387cd051ba39ab79d2dc129ffb120acbc354ad2c25c35f687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a604834c4c0397ab3c2cb23316aad3f067b89b2a29446369ffb47cdd58ed9f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : PreGaloisCategory (Action FintypeCat G) where
  hasQuotientsByFiniteGroups _ _ _ := inferInstance
  monoInducesIsoOnDirectSummand {_ _} i _ :=
    haveI : Mono ((forget (Action FintypeCat G)).map i) := map_mono (forget _) i
    ⟨Action.imageComplement G i, Action.imageComplementIncl G i,
     ⟨isColimitOfReflects (Action.forget _ _ ⋙ FintypeCat.incl) <|
      (isColimitMapCoconeBinaryCofanEquiv (forget _) i _).symm
      (Types.isCoprodOfMono ((forget _).map i))⟩⟩

/-- The forgetful functor from finite `G`-sets to sets is a `FiberFunctor`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variant91d889f8e1912cb387cd051ba39ab79d2dc129ffb120acbc354ad2c25c35f687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Examples/Variant91d889f8e1912cb387cd051ba39ab79d2dc129ffb120acbc354ad2c25c35f687.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bd30bece99a90129f5524981432082d840e995` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
