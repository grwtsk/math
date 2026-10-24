# PreservesCoproduct.of_iso_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98424b3e-f227-17e7-9200-99b906cd7e32",
  "kind": "lemma",
  "lexical_name": "PreservesCoproduct.of_iso_comparison",
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
  "slug": "preservescoproduct-of-iso-comparison--3e13dee9a961c0294af699e0",
  "source": {
    "blob": "76e7b54e32c94b9deadfc5e7877853a69f8dbb48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante0de1586b0ffa0697a0204d2e35e33db5c212fdb8a8b50d992d88fbb91a480e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e13dee9a961c0294af699e04f6ad0bd21b5c85c7bcdb6db7c5b2459ab7486a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante0de1586b0ffa0697a0204d2e35e33db5c212fdb8a8b50d992d88fbb91a480e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98424b3e-f227-17e7-9200-99b906cd7e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PreservesCoproduct.of_iso_comparison [i : IsIso (sigmaComparison G f)] :
    PreservesColimit (Discrete.functor f) G := by
  apply preservesColimit_of_preserves_colimit_cocone (coproductIsCoproduct f)
  apply (isColimitMapCoconeCofanMkEquiv _ _ _).symm _
  exact @IsColimit.ofPointIso _ _ _ _ _ _ _
    (colimit.isColimit (Discrete.functor fun j : J => G.obj (f j))) i

variable [PreservesColimit (Discrete.functor f) G]

/-- If `G` preserves colimits,
we have an isomorphism from the image of a coproduct to the coproduct of the images.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante0de1586b0ffa0697a0204d2e35e33db5c212fdb8a8b50d992d88fbb91a480e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante0de1586b0ffa0697a0204d2e35e33db5c212fdb8a8b50d992d88fbb91a480e6.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76e7b54e32c94b9deadfc5e7877853a69f8dbb48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
