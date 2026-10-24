# IsCardinalFilteredGenerator.of_isDense_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a75e00a-c7cc-8e11-103e-383467ca98f4",
  "kind": "lemma",
  "lexical_name": "IsCardinalFilteredGenerator.of_isDense_ι",
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
  "slug": "iscardinalfilteredgenerator-of-isdense--6aa222efe1c07a3f7d218258",
  "source": {
    "blob": "8b94707ed37c1a9c5fa06cb63a019b2eedb22556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variantc580cd5c15b5bea56a9ceec7adc4f541ebd35169917d7126fc1452479f99458c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aa222efe1c07a3f7d218258905b7194a36a17d74ed86a2e91cd75c16fde9eaf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variantc580cd5c15b5bea56a9ceec7adc4f541ebd35169917d7126fc1452479f99458c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a75e00a-c7cc-8e11-103e-383467ca98f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCardinalFilteredGenerator.of_isDense_ι
    (P : ObjectProperty C) [ObjectProperty.EssentiallySmall.{w} P]
    (κ : Cardinal.{w}) [Fact κ.IsRegular] [P.ι.IsDense]
    [LocallySmall.{w} C]
    (hP : P ≤ isCardinalPresentable C κ)
    [∀ (X : C), IsCardinalFiltered (CostructuredArrow P.ι X) κ] :
    P.IsCardinalFilteredGenerator κ := by
  rw [← ObjectProperty.IsCardinalFilteredGenerator.isoClosure_iff]
  have (X : P.FullSubcategory) : IsCardinalPresentable (P.ι.obj X) κ := hP _ X.property
  simpa using IsCardinalFilteredGenerator.of_isDense P.ι κ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variantc580cd5c15b5bea56a9ceec7adc4f541ebd35169917d7126fc1452479f99458c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongGenerator/Variantc580cd5c15b5bea56a9ceec7adc4f541ebd35169917d7126fc1452479f99458c.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b94707ed37c1a9c5fa06cb63a019b2eedb22556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
