# colimitCoconeIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc93b0829f1c7829647f6bd634696766f579bf3b400b648f4d64f7543fe2d00d",
  "kind": "def",
  "lexical_name": "colimitCoconeIsColimit",
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
  "slug": "colimitcoconeiscolimit--e108767237e795dd2354b03e",
  "source": {
    "blob": "b3636933af6878df0530175fd8a3bbba55555c8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant0aa74632770bf0372a39ea73ace1f7aaa0cd77fda37d1947a4cfb15e3dbc0483.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e108767237e795dd2354b03e2085b3f8080fc3ced07bbd21d81766a229408841",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant0aa74632770bf0372a39ea73ace1f7aaa0cd77fda37d1947a4cfb15e3dbc0483.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc93b0829f1c7829647f6bd634696766f579bf3b400b648f4d64f7543fe2d00d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def colimitCoconeIsColimit (X : Cᵒᵖ) : IsColimit (colimitCocone X)
    where
  desc s _ := s.ι.app (unop X) (𝟙 _)
  fac s Y := by
    funext f
    convert congr_fun (s.w f).symm (𝟙 (unop X))
    simp only [coyoneda_obj_obj, Functor.const_obj_obj, types_comp_apply,
      coyoneda_obj_map, Category.id_comp]
  uniq s m w := by
    apply funext; rintro ⟨⟩
    dsimp
    rw [← w]
    simp
#align category_theory.coyoneda.colimit_cocone_is_colimit CategoryTheory.Coyoneda.colimitCoconeIsColimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant0aa74632770bf0372a39ea73ace1f7aaa0cd77fda37d1947a4cfb15e3dbc0483.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant0aa74632770bf0372a39ea73ace1f7aaa0cd77fda37d1947a4cfb15e3dbc0483.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3636933af6878df0530175fd8a3bbba55555c8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
