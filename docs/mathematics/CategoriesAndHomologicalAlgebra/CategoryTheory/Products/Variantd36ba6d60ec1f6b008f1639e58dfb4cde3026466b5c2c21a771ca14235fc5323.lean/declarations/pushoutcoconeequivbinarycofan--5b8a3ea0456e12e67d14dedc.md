# pushoutCoconeEquivBinaryCofan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e92ed564d9e537c892a96b150daffc48b4676ae9a759e7d92106f5682871f2cb",
  "kind": "def",
  "lexical_name": "pushoutCoconeEquivBinaryCofan",
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
  "slug": "pushoutcoconeequivbinarycofan--5b8a3ea0456e12e67d14dedc",
  "source": {
    "blob": "adf58ab901341a543e06ea33c6378a120edc42a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantd36ba6d60ec1f6b008f1639e58dfb4cde3026466b5c2c21a771ca14235fc5323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b8a3ea0456e12e67d14dedceb5d6e3849ae64b081360d7652e54066f3ff7a79",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantd36ba6d60ec1f6b008f1639e58dfb4cde3026466b5c2c21a771ca14235fc5323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e92ed564d9e537c892a96b150daffc48b4676ae9a759e7d92106f5682871f2cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushoutCoconeEquivBinaryCofan : PushoutCocone f g ≌ BinaryCofan (Under.mk f) (.mk g) where
  functor.obj c := .mk (Under.homMk (U := .mk f) (V := .mk (f ≫ c.inl)) c.inl rfl)
      (Under.homMk (U := .mk g) (V := .mk (f ≫ c.inl)) c.inr c.condition.symm)
  functor.map {c₁ c₂} a := { hom := Under.homMk a.hom, w := by rintro (_ | _) <;> cat_disch }
  inverse.obj c := .mk c.inl.right c.inr.right (c.inl.w.trans c.inr.w.symm)
  inverse.map {c₁ c₂} a := {
    hom := a.hom.right
    w := by rintro (_ | _ | _) <;> simp [← Under.comp_right]
  }
  unitIso := NatIso.ofComponents (fun c ↦ c.eta) (fun f ↦ by ext; simp)
  counitIso := NatIso.ofComponents (fun X ↦ BinaryCofan.ext (Under.isoMk (.refl _)
    (by dsimp; simpa using X.inl.w)) (by ext; simp) (by ext; simp))
    (by intros; ext; simp)
  functor_unitIso_comp c := by ext; simp

set_option backward.isDefEq.respectTransparency false in
/-- A binary cofan in `Under X` is a colimit if its corresponding pushout cocone from `X` is a
colimit. -/
-- `IsColimit.ofCoconeEquiv` isn't used here because the lift it defines is `pushout.desc ≫ 𝟙 _`.
-- TODO: Define `IsColimit.copy`?
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantd36ba6d60ec1f6b008f1639e58dfb4cde3026466b5c2c21a771ca14235fc5323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantd36ba6d60ec1f6b008f1639e58dfb4cde3026466b5c2c21a771ca14235fc5323.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adf58ab901341a543e06ea33c6378a120edc42a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
