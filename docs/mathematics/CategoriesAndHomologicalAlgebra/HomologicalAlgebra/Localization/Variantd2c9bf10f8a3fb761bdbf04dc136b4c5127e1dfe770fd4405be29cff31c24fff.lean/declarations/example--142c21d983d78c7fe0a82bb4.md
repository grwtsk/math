# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3e7ead4d0b796f8affbc69abe9b87660e0c4f68470ae9ec71163ff49596ba9a",
  "kind": "example",
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
  "slug": "example--142c21d983d78c7fe0a82bb4",
  "source": {
    "blob": "2294edaab4c544feaf1a3c8c6be7fe1c1dc1b0ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 298,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variantd2c9bf10f8a3fb761bdbf04dc136b4c5127e1dfe770fd4405be29cff31c24fff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:142c21d983d78c7fe0a82bb49c3b29b7f3e8f92ffe8fd9a15bbdaf2256da6f8b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variantd2c9bf10f8a3fb761bdbf04dc136b4c5127e1dfe770fd4405be29cff31c24fff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3e7ead4d0b796f8affbc69abe9b87660e0c4f68470ae9ec71163ff49596ba9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example [(HomologicalComplex.quasiIso C (ComplexShape.down ι)).HasLocalization] :
    HomologicalComplexUpToQuasiIso.Qh.IsLocalization
    (HomotopyCategory.quasiIso C (ComplexShape.down ι)) :=
  inferInstance

/- By duality, the results obtained here for chain complexes could be dualized in
order to obtain similar results for general cochain complexes. However, the case of
interest for the construction of the derived category (cochain complexes indexed by `ℤ`)
can also be obtained directly, which is done below. -/

end ChainComplex

section CochainComplex

variable (C : Type*) [Category* C] [Preadditive C] [HasBinaryBiproducts C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variantd2c9bf10f8a3fb761bdbf04dc136b4c5127e1dfe770fd4405be29cff31c24fff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variantd2c9bf10f8a3fb761bdbf04dc136b4c5127e1dfe770fd4405be29cff31c24fff.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2294edaab4c544feaf1a3c8c6be7fe1c1dc1b0ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
