# isColimitSheafifyCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d93d45330e890076f7408e8f05fb8da3a3febb2da09c7ec44be5bb97a3ca7951",
  "kind": "def",
  "lexical_name": "isColimitSheafifyCocone",
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
  "slug": "iscolimitsheafifycocone--49002e9993b6c921ce47e775",
  "source": {
    "blob": "34ed4d806c31d3b3c30d209812991d87b6293bf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 231,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49002e9993b6c921ce47e77531764edf494e8bbcaf98aae7b5acb864dbc7f604",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d93d45330e890076f7408e8f05fb8da3a3febb2da09c7ec44be5bb97a3ca7951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitSheafifyCocone {F : K ⥤ Sheaf J D}
    (E : Cocone (F ⋙ sheafToPresheaf J D)) (hE : IsColimit E) : IsColimit (sheafifyCocone E) where
  desc S := ⟨J.sheafifyLift (hE.desc ((sheafToPresheaf J D).mapCocone S)) S.pt.2⟩
  fac := by
    intro S j
    ext1
    dsimp [sheafifyCocone]
    erw [Category.assoc, J.toSheafify_sheafifyLift, hE.fac]
    rfl
  uniq := by
    intro S m hm
    ext1
    apply J.sheafifyLift_unique
    apply hE.uniq ((sheafToPresheaf J D).mapCocone S)
    intro j
    dsimp
    simp only [← Category.assoc, ← hm] -- Porting note: was `simpa only [...]`
    rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.is_colimit_sheafify_cocone CategoryTheory.Sheaf.isColimitSheafifyCocone

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant46314ddd951e53a244d51560f2dfd2fd8b76c856f78cbeea44fba6747d17c67a.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ed4d806c31d3b3c30d209812991d87b6293bf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
