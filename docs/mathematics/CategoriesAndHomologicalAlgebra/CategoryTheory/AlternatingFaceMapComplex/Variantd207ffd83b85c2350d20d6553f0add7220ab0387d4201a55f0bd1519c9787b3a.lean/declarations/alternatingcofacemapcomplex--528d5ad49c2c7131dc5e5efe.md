# alternatingCofaceMapComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6d14769c1afa56bd028ff67434185167a7c449209f8e8acd5083bbc62b37a76",
  "kind": "def",
  "lexical_name": "alternatingCofaceMapComplex",
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
  "slug": "alternatingcofacemapcomplex--528d5ad49c2c7131dc5e5efe",
  "source": {
    "blob": "5c652507079acb80001e58b8483b1f7ad0d2555a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 335,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:528d5ad49c2c7131dc5e5efe6d82b973c474b77241a90526a6d3ce5b49fc0e1b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6d14769c1afa56bd028ff67434185167a7c449209f8e8acd5083bbc62b37a76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def alternatingCofaceMapComplex : CosimplicialObject C ⥤ CochainComplex C ℕ where
  obj := AlternatingCofaceMapComplex.obj
  map f := AlternatingCofaceMapComplex.map f

end AlgebraicTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c652507079acb80001e58b8483b1f7ad0d2555a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
