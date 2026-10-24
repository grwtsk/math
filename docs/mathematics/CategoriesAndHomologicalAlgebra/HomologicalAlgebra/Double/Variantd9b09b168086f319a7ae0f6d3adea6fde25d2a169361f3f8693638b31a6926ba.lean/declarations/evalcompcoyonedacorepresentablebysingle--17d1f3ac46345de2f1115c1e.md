# evalCompCoyonedaCorepresentableBySingle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d73b79b594948d0f481e5865c8fd9af457543d220de6fd762fdc4df8864801f",
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
  "slug": "evalcompcoyonedacorepresentablebysingle--17d1f3ac46345de2f1115c1e",
  "source": {
    "blob": "f92289dd5beaaa06e41a96621752ef3d2abfb31b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 186,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variantd9b09b168086f319a7ae0f6d3adea6fde25d2a169361f3f8693638b31a6926ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17d1f3ac46345de2f1115c1eec3117874e5b3d33728b63782d18ca264b5ff433",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variantd9b09b168086f319a7ae0f6d3adea6fde25d2a169361f3f8693638b31a6926ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d73b79b594948d0f481e5865c8fd9af457543d220de6fd762fdc4df8864801f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def evalCompCoyonedaCorepresentableBySingle (i : ι) [DecidableEq ι]
    (hi : ∀ (j : ι), ¬ c.Rel i j) (X : C) :
    (eval C c i ⋙ coyoneda.obj (op X)).CorepresentableBy ((single C c i).obj X) where
  homEquiv {K} :=
    { toFun g := (singleObjXSelf c i X).inv ≫ g.f i
      invFun f := mkHomFromSingle f (fun j hj ↦ (hi j hj).elim)
      left_inv g := by cat_disch
      right_inv f := by simp }
  homEquiv_comp := by simp

variable [c.HasNoLoop]

open scoped Classical in
/-- Given a complex shape `c : ComplexShape ι` (with no loop), `X : C` and `j : ι`,
this is a quite explicit choice of corepresentative of the functor which sends
`K : HomologicalComplex C c` to `X ⟶ K.X j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variantd9b09b168086f319a7ae0f6d3adea6fde25d2a169361f3f8693638b31a6926ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Double/Variantd9b09b168086f319a7ae0f6d3adea6fde25d2a169361f3f8693638b31a6926ba.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f92289dd5beaaa06e41a96621752ef3d2abfb31b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
