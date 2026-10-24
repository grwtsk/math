# grothendieckPrecompFunctorEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4290446b098b893d24edf440e174503502477f3fe509620d6277dcbcca884929",
  "kind": "def",
  "lexical_name": "grothendieckPrecompFunctorEquivalence",
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
  "slug": "grothendieckprecompfunctorequivalence--62a70c88ce241d445e0d5bd3",
  "source": {
    "blob": "35edf117be79caa843101bfa1dc80f4c7655308d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantaf6de55c2e8126aeb25af399c2f4ab77c5340a07b17cdd4df7886ef3e1baaeae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62a70c88ce241d445e0d5bd3b0f218c4e1f0d2a3cf1dada3f4e563200b48b2f5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantaf6de55c2e8126aeb25af399c2f4ab77c5340a07b17cdd4df7886ef3e1baaeae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4290446b098b893d24edf440e174503502477f3fe509620d6277dcbcca884929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def grothendieckPrecompFunctorEquivalence : Grothendieck (R ⋙ functor L) ≌ Comma L R where
  functor := grothendieckPrecompFunctorToComma _ _
  inverse := commaToGrothendieckPrecompFunctor _ _
  unitIso := NatIso.ofComponents (fun _ => Iso.refl _)
  counitIso := NatIso.ofComponents (fun _ => Iso.refl _)

/-- The functor projecting out the domain of arrows from the Grothendieck construction on
costructured arrows. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantaf6de55c2e8126aeb25af399c2f4ab77c5340a07b17cdd4df7886ef3e1baaeae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantaf6de55c2e8126aeb25af399c2f4ab77c5340a07b17cdd4df7886ef3e1baaeae.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35edf117be79caa843101bfa1dc80f4c7655308d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
