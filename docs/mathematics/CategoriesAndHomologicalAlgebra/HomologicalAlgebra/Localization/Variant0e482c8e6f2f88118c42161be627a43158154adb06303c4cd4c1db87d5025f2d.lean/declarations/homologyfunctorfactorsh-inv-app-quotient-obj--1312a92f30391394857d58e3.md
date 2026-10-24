# homologyFunctorFactorsh_inv_app_quotient_obj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d7e70a7-9422-0bac-ba1e-85a5c1f25acc",
  "kind": "lemma",
  "lexical_name": "homologyFunctorFactorsh_inv_app_quotient_obj",
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
  "slug": "homologyfunctorfactorsh-inv-app-quotient-obj--1312a92f30391394857d58e3",
  "source": {
    "blob": "abf88c7ffddb2b3c52c9375fcc271516a9d29acd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 228,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant0e482c8e6f2f88118c42161be627a43158154adb06303c4cd4c1db87d5025f2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1312a92f30391394857d58e33474ab88c8324ced0347312e7e1050fc75a5604f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant0e482c8e6f2f88118c42161be627a43158154adb06303c4cd4c1db87d5025f2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d7e70a7-9422-0bac-ba1e-85a5c1f25acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma homologyFunctorFactorsh_inv_app_quotient_obj
    (K : HomologicalComplex C c) (i : ι) :
    (homologyFunctorFactorsh C c i).inv.app ((HomotopyCategory.quotient _ _).obj K) =
    (HomotopyCategory.homologyFunctorFactors C c i).hom.app K ≫
      (homologyFunctorFactors C c i).inv.app K ≫
        (homologyFunctor C c i).map ((quotientCompQhIso C c).inv.app K) :=
  (Quotient.natTransLift_app ..).trans (by simp)

section

variable [(HomotopyCategory.quotient C c).IsLocalization
  (HomologicalComplex.homotopyEquivalences C c)]

/-- The category `HomologicalComplexUpToQuasiIso C c` which was defined as a localization of
`HomologicalComplex C c` with respect to quasi-isomorphisms also identifies to a localization
of the homotopy category with respect to quasi-isomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant0e482c8e6f2f88118c42161be627a43158154adb06303c4cd4c1db87d5025f2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Localization/Variant0e482c8e6f2f88118c42161be627a43158154adb06303c4cd4c1db87d5025f2d.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abf88c7ffddb2b3c52c9375fcc271516a9d29acd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
