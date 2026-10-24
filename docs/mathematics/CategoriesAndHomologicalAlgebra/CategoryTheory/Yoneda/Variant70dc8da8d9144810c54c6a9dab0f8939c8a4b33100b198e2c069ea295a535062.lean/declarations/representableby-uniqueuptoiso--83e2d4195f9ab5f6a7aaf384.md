# RepresentableBy.uniqueUpToIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6559ef3e60ce6711e922dbdae0c375b467db0252bdd52714edc3cefb6ff39409",
  "kind": "def",
  "lexical_name": "RepresentableBy.uniqueUpToIso",
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
  "slug": "representableby-uniqueuptoiso--83e2d4195f9ab5f6a7aaf384",
  "source": {
    "blob": "0c52b8b6c7dcfd34a99a67297f6ac4ad565bdab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 351,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83e2d4195f9ab5f6a7aaf38440aa80ecb21e545333c3d9cf92682ee734dcd614",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6559ef3e60ce6711e922dbdae0c375b467db0252bdd52714edc3cefb6ff39409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RepresentableBy.uniqueUpToIso {F : Cᵒᵖ ⥤ Type v} {Y Y' : C} (e : F.RepresentableBy Y)
    (e' : F.RepresentableBy Y') : Y ≅ Y' :=
  let ε {X} := (@e.homEquiv X).trans e'.homEquiv.symm
  Yoneda.ext _ _ ε ε.symm (by simp) (by simp)
    (by simp [ε, comp_homEquiv_symm, homEquiv_comp])

/-- Corepresenting objects are unique up to isomorphism. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant70dc8da8d9144810c54c6a9dab0f8939c8a4b33100b198e2c069ea295a535062.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c52b8b6c7dcfd34a99a67297f6ac4ad565bdab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
