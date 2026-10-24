# pushoutCoconeEquivBinaryCofan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2bec0074ae6eaa81ad33a18eba0b027fbddb26861682b0e2a5249fdcf63e42e",
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
  "slug": "pushoutcoconeequivbinarycofan--c401bdcb5b2e8f1b7496cc03",
  "source": {
    "blob": "7b8b2457dd34dc858e2f0ce7d44b0ef6e35d31cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant2aa8b46628df76598c6a35a49ab2327e2c06b4e5355b5c55b3bd1ca9a5ce43eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c401bdcb5b2e8f1b7496cc031147cbe2ef7bb731bdd40b27b981481b2db93f79",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant2aa8b46628df76598c6a35a49ab2327e2c06b4e5355b5c55b3bd1ca9a5ce43eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2bec0074ae6eaa81ad33a18eba0b027fbddb26861682b0e2a5249fdcf63e42e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–142.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant2aa8b46628df76598c6a35a49ab2327e2c06b4e5355b5c55b3bd1ca9a5ce43eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant2aa8b46628df76598c6a35a49ab2327e2c06b4e5355b5c55b3bd1ca9a5ce43eb.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b8b2457dd34dc858e2f0ce7d44b0ef6e35d31cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
