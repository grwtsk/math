# pullbackComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d4d8fbd67837cd80d0c733ced6ace9dc7c5ab0395a04394d280f502d409bad8",
  "kind": "def",
  "lexical_name": "pullbackComp",
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
  "slug": "pullbackcomp--09b98db3249956d1eb8e0d7c",
  "source": {
    "blob": "b001069f2fce3f3efc933d7a0e48cc12fbe91e7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 533,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant74899b7c45514a03656f25b97a8352530f9c54e1c3db53893aad7926053dc32e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09b98db3249956d1eb8e0d7c9e769eef026c0f2349c804aee66bfe09ee436f3d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant74899b7c45514a03656f25b97a8352530f9c54e1c3db53893aad7926053dc32e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d4d8fbd67837cd80d0c733ced6ace9dc7c5ab0395a04394d280f502d409bad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 533–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackComp {X Y Z : C} (S : J.Cover X) (f : Z ⟶ Y) (g : Y ⟶ X) :
    S.pullback (f ≫ g) ≅ (S.pullback g).pullback f :=
  eqToIso <| Cover.ext _ _ fun Y f => by simp

/-- Combine a family of covers over a cover. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant74899b7c45514a03656f25b97a8352530f9c54e1c3db53893aad7926053dc32e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant74899b7c45514a03656f25b97a8352530f9c54e1c3db53893aad7926053dc32e.lean#L533).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b001069f2fce3f3efc933d7a0e48cc12fbe91e7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
