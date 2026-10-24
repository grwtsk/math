# isColimitLiftCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b74cf0d944025e956242e44939feeb6e88c39a0a0bdaafff0ed2f37f30d8072",
  "kind": "def",
  "lexical_name": "isColimitLiftCocone",
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
  "slug": "iscolimitliftcocone--2573d84704ce3bacf5bd9c6b",
  "source": {
    "blob": "b607f5c5e0efc164049fc7fa33fc1d7e3bba2126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1104,
    "line": 1080,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant08083fc3727a7c26daa94d0a5c48273b537cacf0d3d983d80ff21ab3c174e36e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2573d84704ce3bacf5bd9c6b7370d34d2bcae617cabcb60dc7f5767ad3d5fc09",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant08083fc3727a7c26daa94d0a5c48273b537cacf0d3d983d80ff21ab3c174e36e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b74cf0d944025e956242e44939feeb6e88c39a0a0bdaafff0ed2f37f30d8072`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1080–1104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitLiftCocone {J : Type*} [Category* J] [Nonempty J]
    (D : J ⥤ T) {X : T} (s : (Functor.const J).obj X ⟶ D)
    (c : Cocone D) (p : X ⟶ c.pt) (hp : ∀ j, s.app j ≫ c.ι.app j = p)
    (hc : IsColimit c) :
    IsColimit (liftCocone D s c p hp) where
  desc t := Under.homMk (hc.desc ((Under.forget _).mapCocone t)) (by
    let j : J := Classical.arbitrary _
    simp [← dsimp% (t.ι.app j).w, ← dsimp% (hp j), dsimp% hc.fac ((forget X).mapCocone t)])
  fac t j := by
    ext
    simp [dsimp% hc.fac ((forget X).mapCocone t) j]
  uniq t _ hm := by
    ext
    refine hc.hom_ext (fun j ↦ ?_)
    simp [dsimp% hc.fac ((forget X).mapCocone t) j, ← hm]

end Under

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/--
Restrict a cocone to the diagram under `j`. This preserves being colimiting if the forgetful functor
`Over j ⥤ J` is final (see `CategoryTheory.Limits.IsColimit.underPost`).
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant08083fc3727a7c26daa94d0a5c48273b537cacf0d3d983d80ff21ab3c174e36e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant08083fc3727a7c26daa94d0a5c48273b537cacf0d3d983d80ff21ab3c174e36e.lean#L1080).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b607f5c5e0efc164049fc7fa33fc1d7e3bba2126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
