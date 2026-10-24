# mem_locallyConstant_essImage_of_isColimit_mapCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:215a4073-9c19-9386-f13c-c801686af2f0",
  "kind": "lemma",
  "lexical_name": "mem_locallyConstant_essImage_of_isColimit_mapCocone",
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
  "slug": "mem-locallyconstant-essimage-of-iscolimit-mapcocone--5312aa0121a81d4e2b6d687c",
  "source": {
    "blob": "2a774f98d4f8fa76de45c56997cd262f6f27ee31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5312aa0121a81d4e2b6d687cb292c9b0925d369c27af134c080fb02d06dbe7dd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:215a4073-9c19-9386-f13c-c801686af2f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_locallyConstant_essImage_of_isColimit_mapCocone (X : CondensedSet.{u})
    (h : ∀ S : Profinite.{u}, IsColimit <|
      (profiniteToCompHaus.op ⋙ X.val).mapCocone S.asLimitCone.op) :
    CondensedSet.LocallyConstant.functor.essImage X := by
  let e : CondensedSet.{u} ≌ Sheaf (coherentTopology Profinite) _ :=
    (Condensed.ProfiniteCompHaus.equivalence (Type (u + 1))).symm
  let i : (e.functor.obj X).val ≅ (e.functor.obj (LocallyConstant.functor.obj _)).val :=
    Condensed.isoLocallyConstantOfIsColimit _ h
  exact ⟨_, ⟨e.functor.preimageIso ((sheafToPresheaf _ _).preimageIso i.symm)⟩⟩

@[deprecated (since := "2024-12-25")]
alias mem_locallyContant_essImage_of_isColimit_mapCocone :=
  mem_locallyConstant_essImage_of_isColimit_mapCocone

/--
`CondensedSet.LocallyConstant.functor` is left adjoint to the forgetful functor from condensed
sets to sets.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Characterization/Variantbc2ac60745fb11978b3e72283a83df35936634e024791bf37be63e4e47ba9bec.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a774f98d4f8fa76de45c56997cd262f6f27ee31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
