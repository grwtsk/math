# openCoverOfLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41af436616144d5f6bbfac6622895315b7a9f8abbe0cbc5dbffb64a224686429",
  "kind": "def",
  "lexical_name": "openCoverOfLeft",
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
  "slug": "opencoverofleft--74514df9c6b7d5b5fcae230a",
  "source": {
    "blob": "fed0f2b6152def8612c8694efa1ef83a71099cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 535,
    "line": 507,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74514df9c6b7d5b5fcae230a6d6297828b083ce3aec2eeb186e7023239ebc4a3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41af436616144d5f6bbfac6622895315b7a9f8abbe0cbc5dbffb64a224686429`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–535.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def openCoverOfLeft (𝒰 : OpenCover.{v} X) (f : X ⟶ Z) (g : Y ⟶ Z) :
    OpenCover (pullback f g) where
  I₀ := 𝒰.I₀
  X i := pullback (𝒰.f i ≫ f) g
  f i := pullback.map (𝒰.f i ≫ f) g f g (𝒰.f i) (𝟙 Y) (𝟙 Z) (by simp) (by simp)
  mem₀ := by
    rw [ofArrows_mem_precoverage_iff]
    refine ⟨fun x ↦ ?_, fun i ↦ ?_⟩
    · let 𝒱 := ((gluing 𝒰.ulift f g).openCover.pushforwardIso
              (limit.isoLimitCone ⟨_, gluedIsLimit 𝒰.ulift f g⟩).inv).copy
          𝒰.ulift.I₀ (fun i => pullback (𝒰.ulift.f i ≫ f) g)
          (fun i => pullback.map _ _ _ _ (𝒰.ulift.f i) (𝟙 _) (𝟙 _) (Category.comp_id _) (by simp))
          (Equiv.refl 𝒰.ulift.I₀) (fun _ => Iso.refl _) fun i ↦ by
        simp_rw [Cover.pushforwardIso_I₀, Cover.pushforwardIso_f, GlueData.openCover_f,
          GlueData.openCover_I₀, gluing_J]
        exact pullback.hom_ext (by simp [p1]) (by simp [p2])
      obtain ⟨i, x, rfl⟩ := 𝒱.exists_eq x
      exact ⟨_, x, rfl⟩
    · dsimp
      have : pullback.map (𝒰.f i ≫ f) g f g (𝒰.f i) (𝟙 Y) (𝟙 Z) (by simp) (by simp) =
        (pullbackSymmetry _ _).hom ≫ (pullbackLeftPullbackSndIso _ _ _).inv ≫
          pullback.fst _ _ ≫ (pullbackSymmetry _ _).hom := by aesop
      rw [this]
      infer_instance

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Given an open cover `{ Yᵢ }` of `Y`, then `X ×[Z] Y` is covered by `X ×[Z] Yᵢ`. -/
@[simps! I₀ X f]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fed0f2b6152def8612c8694efa1ef83a71099cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
