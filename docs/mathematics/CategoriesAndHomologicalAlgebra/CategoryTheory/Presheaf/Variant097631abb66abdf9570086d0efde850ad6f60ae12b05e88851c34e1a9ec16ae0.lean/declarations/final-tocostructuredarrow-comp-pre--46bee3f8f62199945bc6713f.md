# final_toCostructuredArrow_comp_pre

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df46ac00-e4ca-0f89-05ed-2536162f4633",
  "kind": "theorem",
  "lexical_name": "final_toCostructuredArrow_comp_pre",
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
  "slug": "final-tocostructuredarrow-comp-pre--46bee3f8f62199945bc6713f",
  "source": {
    "blob": "8ddb46af21d198d628c869af60087d04d52b185e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 740,
    "line": 713,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46bee3f8f62199945bc6713f9d752b42e437ba68d1d476f2d98f56be45f60dad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df46ac00-e4ca-0f89-05ed-2536162f4633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–740.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem final_toCostructuredArrow_comp_pre {c : Cocone (F ⋙ yoneda)} (hc : IsColimit c) :
    Functor.Final (c.toCostructuredArrow ⋙ CostructuredArrow.pre F yoneda c.pt) := by
  apply Functor.final_of_isTerminal_colimit_comp_yoneda
  suffices IsTerminal (colimit ((c.toCostructuredArrow ⋙ CostructuredArrow.pre F yoneda c.pt) ⋙
      CostructuredArrow.toOver yoneda c.pt)) by
    apply IsTerminal.isTerminalOfObj (overEquivPresheafCostructuredArrow c.pt).inverse
    apply IsTerminal.ofIso this
    refine ?_ ≪≫ (preservesColimitIso (overEquivPresheafCostructuredArrow c.pt).inverse _).symm
    apply HasColimit.isoOfNatIso
    exact Functor.isoWhiskerLeft _
      (CostructuredArrow.toOverCompOverEquivPresheafCostructuredArrow c.pt).isoCompInverse
  apply IsTerminal.ofIso Over.mkIdTerminal
  let isc : IsColimit ((Over.forget _).mapCocone _) := isColimitOfPreserves _
    (colimit.isColimit ((c.toCostructuredArrow ⋙ CostructuredArrow.pre F yoneda c.pt) ⋙
      CostructuredArrow.toOver yoneda c.pt))
  exact Over.isoMk (hc.coconePointUniqueUpToIso isc) (hc.hom_ext fun i => by simp)

end Presheaf

namespace Functor.Elements

variable [LocallySmall.{w} C] (F : C ⥤ Type w)

set_option backward.defeqAttrib.useBackward true in
/-- If `F : C ⥤ Type w` and `C` is locally `w`-small, then for any `X : C`,
this is the colimit cocone which identifies `F.obj X` to the colimit of
`(CategoryOfElements.π F).op ⋙ shrinkYoneda.obj X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant097631abb66abdf9570086d0efde850ad6f60ae12b05e88851c34e1a9ec16ae0.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ddb46af21d198d628c869af60087d04d52b185e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
