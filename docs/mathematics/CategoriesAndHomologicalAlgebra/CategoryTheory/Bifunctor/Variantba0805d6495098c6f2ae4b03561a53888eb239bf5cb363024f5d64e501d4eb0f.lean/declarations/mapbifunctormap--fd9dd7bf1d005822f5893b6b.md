# mapBifunctorMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ad0700a4a2243f9db16e8ec08d1feabe507f0027f367548d74cc1ef4f690c42",
  "kind": "def",
  "lexical_name": "mapBifunctorMap",
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
  "slug": "mapbifunctormap--fd9dd7bf1d005822f5893b6b",
  "source": {
    "blob": "bf8bdd713a6a2a9089f5234ef8fd8921082849e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd9dd7bf1d005822f5893b6be43da8e27482cd6a6f16f704206d172604c0cf8c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ad0700a4a2243f9db16e8ec08d1feabe507f0027f367548d74cc1ef4f690c42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapBifunctorMap [∀ X Y, HasMap (((mapBifunctor F I J).obj X).obj Y) p] :
    GradedObject I C₁ ⥤ GradedObject J C₂ ⥤ GradedObject K C₃ where
  obj X :=
    { obj := fun Y => mapBifunctorMapObj F p X Y
      map := fun ψ => mapBifunctorMapMap F p (𝟙 X) ψ }
  map {X₁ X₂} φ :=
    { app := fun Y => mapBifunctorMapMap F p φ (𝟙 Y)
      naturality := fun {Y₁ Y₂} ψ => by
        dsimp
        simp only [Functor.map_id, NatTrans.id_app, id_comp, comp_id,
          ← mapMap_comp, NatTrans.naturality] }

end

end GradedObject

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantba0805d6495098c6f2ae4b03561a53888eb239bf5cb363024f5d64e501d4eb0f.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf8bdd713a6a2a9089f5234ef8fd8921082849e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
