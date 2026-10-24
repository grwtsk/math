# isLimitOfEval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbab4a8d74a285019544706e2bde3f982ef8b25b38188335cc8855807596bdb4",
  "kind": "def",
  "lexical_name": "isLimitOfEval",
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
  "slug": "islimitofeval--cc8475e60fec8b032adf8172",
  "source": {
    "blob": "2d6e6919c0217f2d37fe265221b1e88e420013b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta553f0256efb9d737ca61ed6cda18f1c157556caa320aed7bfa933ce8b855181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc8475e60fec8b032adf81727cf83a83073ae8545bd2aa3caea4f03f59ea633a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta553f0256efb9d737ca61ed6cda18f1c157556caa320aed7bfa933ce8b855181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbab4a8d74a285019544706e2bde3f982ef8b25b38188335cc8855807596bdb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOfEval (s : Cone F)
    (hs : ∀ (i : ι), IsLimit ((eval C c i).mapCone s)) : IsLimit s where
  lift t :=
    { f := fun i => (hs i).lift ((eval C c i).mapCone t)
      comm' := fun i i' _ => by
        apply IsLimit.hom_ext (hs i')
        intro j
        have eq := fun k => (hs k).fac ((eval C c k).mapCone t)
        simp only [Functor.mapCone_π_app, eval_map] at eq
        simp only [Functor.mapCone_π_app, eval_map, assoc]
        rw [eq i', ← Hom.comm, reassoc_of% (eq i), Hom.comm] }
  fac t j := by
    ext i
    apply (hs i).fac
  uniq t m hm := by
    ext i
    apply (hs i).uniq ((eval C c i).mapCone t)
    intro j
    dsimp
    simp only [← comp_f, hm]

variable [∀ (n : ι), HasLimit (F ⋙ eval C c n)]

set_option backward.defeqAttrib.useBackward true in
/-- A cone for a functor `F : J ⥤ HomologicalComplex C c` which is given in degree `n` by
the limit `F ⋙ eval C c n`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta553f0256efb9d737ca61ed6cda18f1c157556caa320aed7bfa933ce8b855181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplexLimits/Varianta553f0256efb9d737ca61ed6cda18f1c157556caa320aed7bfa933ce8b855181.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d6e6919c0217f2d37fe265221b1e88e420013b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
