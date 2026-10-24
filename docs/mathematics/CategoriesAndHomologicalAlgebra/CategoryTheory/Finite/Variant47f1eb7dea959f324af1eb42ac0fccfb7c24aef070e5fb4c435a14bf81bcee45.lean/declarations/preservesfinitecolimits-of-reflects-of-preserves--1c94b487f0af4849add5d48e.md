# preservesFiniteColimits_of_reflects_of_preserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:158ec95e-0393-2a85-b70d-a6d4ff0713c5",
  "kind": "lemma",
  "lexical_name": "preservesFiniteColimits_of_reflects_of_preserves",
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
  "slug": "preservesfinitecolimits-of-reflects-of-preserves--1c94b487f0af4849add5d48e",
  "source": {
    "blob": "fe6faf17b43ddf8eb51fa69eb8e2ae7f709f3433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 329,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant47f1eb7dea959f324af1eb42ac0fccfb7c24aef070e5fb4c435a14bf81bcee45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c94b487f0af4849add5d48e3de035feb5a802c32e2613300378f9ff70bec4a4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant47f1eb7dea959f324af1eb42ac0fccfb7c24aef070e5fb4c435a14bf81bcee45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:158ec95e-0393-2a85-b70d-a6d4ff0713c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFiniteColimits_of_reflects_of_preserves (F : C ⥤ D) (G : D ⥤ E)
    [PreservesFiniteColimits (F ⋙ G)] [ReflectsFiniteColimits G] : PreservesFiniteColimits F where
  preservesFiniteColimits _ _ _ := preservesColimitsOfShape_of_reflects_of_preserves F G

/--
If `F ⋙ G` preserves finite coproducts and `G` reflects finite coproducts, then `F` preserves
finite coproducts.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant47f1eb7dea959f324af1eb42ac0fccfb7c24aef070e5fb4c435a14bf81bcee45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant47f1eb7dea959f324af1eb42ac0fccfb7c24aef070e5fb4c435a14bf81bcee45.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe6faf17b43ddf8eb51fa69eb8e2ae7f709f3433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
