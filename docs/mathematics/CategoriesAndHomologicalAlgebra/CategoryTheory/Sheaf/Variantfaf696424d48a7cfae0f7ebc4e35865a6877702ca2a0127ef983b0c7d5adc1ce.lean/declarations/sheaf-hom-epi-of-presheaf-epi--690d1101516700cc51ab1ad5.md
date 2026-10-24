# Sheaf.Hom.epi_of_presheaf_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a77695637001f96640d39875fd66b7f49f194c917994e7d7eb35a0924ed1b2ed",
  "kind": "instance",
  "lexical_name": "Sheaf.Hom.epi_of_presheaf_epi",
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
  "slug": "sheaf-hom-epi-of-presheaf-epi--690d1101516700cc51ab1ad5",
  "source": {
    "blob": "a3c35e2a64a836226141760d9b33c9d8c8047bcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 335,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:690d1101516700cc51ab1ad59fead8991f73a7381cc9351df11f11f9499252e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a77695637001f96640d39875fd66b7f49f194c917994e7d7eb35a0924ed1b2ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Sheaf.Hom.epi_of_presheaf_epi {F G : Sheaf J A} (f : F ⟶ G) [h : Epi f.1] : Epi f :=
  (sheafToPresheaf J A).epi_of_epi_map h
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.hom.epi_of_presheaf_epi CategoryTheory.Sheaf.Hom.epi_of_presheaf_epi

/-- The sheaf of sections guaranteed by the sheaf condition. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantfaf696424d48a7cfae0f7ebc4e35865a6877702ca2a0127ef983b0c7d5adc1ce.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c35e2a64a836226141760d9b33c9d8c8047bcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
