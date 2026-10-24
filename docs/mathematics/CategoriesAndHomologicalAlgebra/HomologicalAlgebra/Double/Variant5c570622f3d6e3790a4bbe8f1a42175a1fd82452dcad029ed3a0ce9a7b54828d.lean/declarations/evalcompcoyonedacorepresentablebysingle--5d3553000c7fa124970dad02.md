# evalCompCoyonedaCorepresentableBySingle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24f37d688067dcbb293e0483c36596b8460392bbe8eeb2019ee73d8d36a442b8",
  "kind": "def",
  "lexical_name": "evalCompCoyonedaCorepresentableBySingle",
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
  "slug": "evalcompcoyonedacorepresentablebysingle--5d3553000c7fa124970dad02",
  "source": {
    "blob": "f3d61640d9c9b496636e6e05301bb2f918d50749",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d3553000c7fa124970dad0282da7d20da6db8d593c9685d40fd596dec87eb62",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24f37d688067dcbb293e0483c36596b8460392bbe8eeb2019ee73d8d36a442b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def evalCompCoyonedaCorepresentableBySingle (i : ι) [DecidableEq ι]
    (hi : ∀ (j : ι), ¬ c.Rel i j) (X : C) :
    (eval C c i ⋙ coyoneda.obj (op X)).CorepresentableBy ((single C c i).obj X) where
  homEquiv {K} :=
    { toFun g := (singleObjXSelf c i X).inv ≫ g.f i
      invFun f := mkHomFromSingle f (fun j hj ↦ (hi j hj).elim)
      left_inv g := by aesop_cat
      right_inv f := by simp }
  homEquiv_comp := by simp

variable [c.HasNoLoop]

open Classical in
/-- Given a complex shape `c : ComplexShape ι` (with no loop), `X : C` and `j : ι`,
this is a quite explicit choice of corepresentative of the functor which sends
`K : HomologicalComplex C c` to `X ⟶ K.X j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variant5c570622f3d6e3790a4bbe8f1a42175a1fd82452dcad029ed3a0ce9a7b54828d.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3d61640d9c9b496636e6e05301bb2f918d50749` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
