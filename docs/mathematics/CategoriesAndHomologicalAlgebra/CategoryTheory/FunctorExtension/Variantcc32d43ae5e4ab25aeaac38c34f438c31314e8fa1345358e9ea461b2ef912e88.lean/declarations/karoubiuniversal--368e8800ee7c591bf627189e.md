# karoubiUniversal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:200da4626d8bb27a14f584e27bab2ebe90c23c5663186acb2ae5367a43083f41",
  "kind": "def",
  "lexical_name": "karoubiUniversal",
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
  "slug": "karoubiuniversal--368e8800ee7c591bf627189e",
  "source": {
    "blob": "c7fbd1d5adfffe679b160631fd8b3d788433963c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 255,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:368e8800ee7c591bf627189e237e17cdf75ca967d214305b4dda05b5c8ebe460",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:200da4626d8bb27a14f584e27bab2ebe90c23c5663186acb2ae5367a43083f41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def karoubiUniversal : C ⥤ D ≌ Karoubi C ⥤ D :=
  (karoubiUniversal₂ C D).trans (Equivalence.congrRight (toKaroubi D).asEquivalence.symm)
#align category_theory.idempotents.karoubi_universal CategoryTheory.Idempotents.karoubiUniversal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcc32d43ae5e4ab25aeaac38c34f438c31314e8fa1345358e9ea461b2ef912e88.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7fbd1d5adfffe679b160631fd8b3d788433963c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
