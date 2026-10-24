# ran_isSheaf_of_coverLifting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2052eafd-eef3-ba55-7464-418969eab0bf",
  "kind": "theorem",
  "lexical_name": "ran_isSheaf_of_coverLifting",
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
  "slug": "ran-issheaf-of-coverlifting--569bee29478a5a74bffea9d8",
  "source": {
    "blob": "90df3d8e1c30bd94d6bc6a41dd4ded8652b18a53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:569bee29478a5a74bffea9d828b88049b6148d60686f47d6c9cbc134016ca14a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2052eafd-eef3-ba55-7464-418969eab0bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ran_isSheaf_of_coverLifting {G : C ⥤ D} (hG : CoverLifting J K G) (ℱ : Sheaf J A) :
    Presheaf.IsSheaf K ((ran G.op).obj ℱ.val) := by
  intro X U S hS x hx
  constructor; swap
  · apply RanIsSheafOfCoverLifting.gluedSection hG ℱ hS hx
  constructor
  · apply RanIsSheafOfCoverLifting.gluedSection_isAmalgamation
  · apply RanIsSheafOfCoverLifting.gluedSection_is_unique
set_option linter.uppercaseLean3 false in
#align category_theory.Ran_is_sheaf_of_cover_lifting CategoryTheory.ran_isSheaf_of_coverLifting

variable (A)

/-- A cover-lifting functor induces a morphism of sites in the same direction as the functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90df3d8e1c30bd94d6bc6a41dd4ded8652b18a53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
