# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cca63fccd60891fb187566889996d7fd6d10671e98d8315a7a5c5b171a018bc",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--aebbe2789f0e0675580deab1",
  "source": {
    "blob": "96d0beb2279d327b104bcd172c4e595e19d4fbe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArrow/Variant5ff15f6a9a02e53a6c2dede5e8265fb541a74f6710a48ebda91038a183fbf384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aebbe2789f0e0675580deab1c584b4cd893af87992e0859d470e72d3b95d7dde",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArrow/Variant5ff15f6a9a02e53a6c2dede5e8265fb541a74f6710a48ebda91038a183fbf384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cca63fccd60891fb187566889996d7fd6d10671e98d8315a7a5c5b171a018bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map {f' : X' ⟶ Y'} {f : X ⟶ Y} (r : RetractArrow₁ f' f)
    {D : Type*} [Bicategory D] (F : C ⥤ᵖ D) :
    RetractArrow₁ (F.map f') (F.map f) where
  i₁ := F.map r.i₁
  i₂ := F.map r.i₂
  r₁ := F.map r.r₁
  r₂ := F.map r.r₂
  id₁ := (F.mapComp _ _).symm ≪≫ F.map₂Iso r.id₁ ≪≫ F.mapId _
  id₂ := (F.mapComp _ _).symm ≪≫ F.map₂Iso r.id₂ ≪≫ F.mapId _
  commi := (F.mapComp _ _).symm ≪≫ F.map₂Iso r.commi ≪≫ F.mapComp _ _
  commr := (F.mapComp _ _).symm ≪≫ F.map₂Iso r.commr ≪≫ F.mapComp _ _
  comm := by
    have := congr_arg (fun f ↦ F.map₂ f) r.comm
    simp at this
    simp [← cancel_mono (F.map r.i₁ ◁ (F.mapComp r.r₁ f').inv),
      ← cancel_mono ((F.mapComp r.i₁ (r.r₁ ≫ f')).inv),
      this, dsimp% F.toLax.map₂_leftUnitor_assoc f']

/-- In a bicategory, a `1`-morphism that is a retract
of an equivalence is an equivalence. -/
@[implicit_reducible, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArrow/Variant5ff15f6a9a02e53a6c2dede5e8265fb541a74f6710a48ebda91038a183fbf384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArrow/Variant5ff15f6a9a02e53a6c2dede5e8265fb541a74f6710a48ebda91038a183fbf384.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96d0beb2279d327b104bcd172c4e595e19d4fbe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
