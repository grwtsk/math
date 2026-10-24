# isColimitFiniteSubproductsCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a93a40a96e564ebaf7461a8fc27fa3c91b2a52071b651eaca850e1e62c30dab",
  "kind": "def",
  "lexical_name": "isColimitFiniteSubproductsCocone",
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
  "slug": "iscolimitfinitesubproductscocone--660b36fca394e67abf618013",
  "source": {
    "blob": "3bdaa597e27cf774ff3b72e03384aca2164b75f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Varianta88ae9326eeab2b8428b36b555d61f3ba0cbd6ea9f59d46e1c78ee6a360338ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:660b36fca394e67abf6180134935f94472e8c3d6189dbaf0948cda81baee9f44",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Varianta88ae9326eeab2b8428b36b555d61f3ba0cbd6ea9f59d46e1c78ee6a360338ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a93a40a96e564ebaf7461a8fc27fa3c91b2a52071b651eaca850e1e62c30dab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitFiniteSubproductsCocone (f : α → C) [HasColimitsOfShape (Finset (Discrete α)) C]
    [HasCoproduct f] : IsColimit (finiteSubcoproductsCocone f) :=
  IsColimit.ofIsoColimit (colimit.isColimit _)
    (Cocone.ext (IsColimit.coconePointUniqueUpToIso
      (liftToFinsetColimitCocone (Discrete.functor f)).isColimit (colimit.isColimit _) :) (by
    intro S
    simp only [liftToFinsetObj_obj, Discrete.functor_obj_eq_as, finiteSubcoproductsCocone_pt,
      colimit.cocone_x, colimit.cocone_ι, finiteSubcoproductsCocone_ι_app]
    ext j
    rw [← Category.assoc]
    convert!
      IsColimit.comp_coconePointUniqueUpToIso_hom
        (liftToFinsetColimitCocone (Discrete.functor f)).isColimit (colimit.isColimit _) j
    · simp [← colimit.w (liftToFinsetObj _) (homOfLE (x := {j.1}) (y := S) (by simp))]
    · simp))

end CoproductsFromFiniteFiltered

open CoproductsFromFiniteFiltered

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Varianta88ae9326eeab2b8428b36b555d61f3ba0cbd6ea9f59d46e1c78ee6a360338ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Varianta88ae9326eeab2b8428b36b555d61f3ba0cbd6ea9f59d46e1c78ee6a360338ce.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bdaa597e27cf774ff3b72e03384aca2164b75f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
