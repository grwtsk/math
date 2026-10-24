# equivalenceReflectsNormalMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49bb4b8de79681dcce3b98aed4b1adb1c51f97153ab5cee2ebb20cf9ef6b3ac1",
  "kind": "def",
  "lexical_name": "equivalenceReflectsNormalMono",
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
  "slug": "equivalencereflectsnormalmono--a0cfd25259b21e54a3253765",
  "source": {
    "blob": "3998a97256b84f5237f7f6a151cbd6dc43b86bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 63,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0cfd25259b21e54a3253765e3a0e3b6ddd00b0bce0cd2fc5bb86104d025993c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49bb4b8de79681dcce3b98aed4b1adb1c51f97153ab5cee2ebb20cf9ef6b3ac1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalenceReflectsNormalMono {D : Type u₂} [Category.{v₁} D] [HasZeroMorphisms D] (F : C ⥤ D)
    [IsEquivalence F] {X Y : C} {f : X ⟶ Y} (hf : NormalMono (F.map f)) : NormalMono f where
  Z := F.objPreimage hf.Z
  g := Full.preimage (hf.g ≫ (F.objObjPreimageIso hf.Z).inv)
  w := F.map_injective <| by
    have reassoc' {W : D} (h : hf.Z ⟶ W) : F.map f ≫ hf.g ≫ h = 0 ≫ h := by
      rw [← Category.assoc, eq_whisker hf.w]
    simp [reassoc']
  isLimit :=
    @ReflectsLimit.reflects C _ D _ _ _ _ F _ _ <|
      IsLimit.ofConeEquiv (Cones.postcomposeEquivalence (@compNatIso C _ _ _ _ _ D _ _ F _)) <|
        IsLimit.ofIsoLimit
          (IsLimit.ofIsoLimit
            (IsKernel.ofCompIso _ _ (F.objObjPreimageIso hf.Z) (by
              simp only [Full.witness, Category.assoc, Iso.inv_hom_id, Category.comp_id])
            hf.isLimit)
            (ofιCongr (Category.comp_id _).symm))
        <| by apply Iso.symm; apply isoOfι  -- Porting note: very fiddly unification here
#align category_theory.equivalence_reflects_normal_mono CategoryTheory.equivalenceReflectsNormalMono

end

/-- Every normal monomorphism is a regular monomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8e10b2e3a7d0c15d3fa21d0c8b0110812618fe82a121a51486d10a08749f21b1.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3998a97256b84f5237f7f6a151cbd6dc43b86bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
