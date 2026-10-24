# comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21c0693fc0f921b6dcd970867167c03c4d6d1bfa2277d910ad62fcd58396542e",
  "kind": "def",
  "lexical_name": "comp",
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
  "slug": "comp--02643caea8add3c569bd46a2",
  "source": {
    "blob": "a4ffae24dcafb4d3920990271529e5046e2daf27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:02643caea8add3c569bd46a2981a439bd36232e750b331e3811a6ab84ced06a0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21c0693fc0f921b6dcd970867167c03c4d6d1bfa2277d910ad62fcd58396542e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comp (F : PrelaxFunctorStruct B C) (G : PrelaxFunctorStruct C D) : PrelaxFunctorStruct B D where
  toPrefunctor := F.toPrefunctor.comp G.toPrefunctor
  map₂ := fun η => G.map₂ (F.map₂ η)

end PrelaxFunctorStruct

end

/-- A prelax functor between bicategories is a lax prefunctor such that `map₂` is a functor.
This structure will be extended to define `LaxFunctor` and `OplaxFunctor`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4ffae24dcafb4d3920990271529e5046e2daf27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
