# overMapCompOverEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ce678d5f267162c3339a09df21ee7d21d4eb2affa3441f5b3e4bdb39c48024c",
  "kind": "def",
  "lexical_name": "overMapCompOverEquiv",
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
  "slug": "overmapcompoverequiv--eacd9dab0a440da0b628d683",
  "source": {
    "blob": "8745af7611e0d31a11b9e912b41a5ce13546a17a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 556,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eacd9dab0a440da0b628d683c700d492a0b8f709ba271dc88b0a60dcea93a15d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ce678d5f267162c3339a09df21ee7d21d4eb2affa3441f5b3e4bdb39c48024c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def overMapCompOverEquiv {X : Scheme.{u}} {U V : X.Opens} (f : V ⟶ U) :
    overMap X.ringCatSheaf f ⋙ (overEquiv V).functor ≅
      (overEquiv U).functor ⋙ restrictFunctor (X.homOfLE <| leOfHom f) := by
  haveI : (Hom.opensFunctor (X.homOfLE <| leOfHom f)).IsContinuous
      (Opens.grothendieckTopology V.toScheme) (Opens.grothendieckTopology U.carrier) :=
    inferInstanceAs <|
      (Hom.opensFunctor (X.homOfLE <| leOfHom f)).IsContinuous _
      (Opens.grothendieckTopology U.toScheme)
  haveI := U.instIsDenseSubsiteSubtypeMemOverGrothendieckTopologyOverInverseOverEquivalence
  haveI : (Hom.opensFunctor (X.homOfLE <| leOfHom f)).IsContinuous
      (Opens.grothendieckTopology ↥V) (Opens.grothendieckTopology U.toScheme) :=
    inferInstanceAs <| (X.homOfLE <| leOfHom f).opensFunctor.IsContinuous
      (Opens.grothendieckTopology V.toScheme) (Opens.grothendieckTopology U.toScheme)
  haveI : ((Opens.overEquivalence V).symm.functor ⋙ Over.map f).IsContinuous
      (Opens.grothendieckTopology ↥V) ((Opens.grothendieckTopology X).over U) :=
    Functor.isContinuous_comp _ _ _ (.over (Opens.grothendieckTopology _) _) _
  haveI : (Opens.overEquivalence U).symm.functor.IsContinuous (Opens.grothendieckTopology U)
      ((Opens.grothendieckTopology X).over U) :=
    inferInstanceAs <| U.overEquivalence.inverse.IsContinuous (Opens.grothendieckTopology U.carrier)
      ((Opens.grothendieckTopology X).over U)
  haveI : ((X.homOfLE (leOfHom f)).opensFunctor ⋙
        (Opens.overEquivalence U).symm.functor).IsContinuous (Opens.grothendieckTopology ↥V)
      ((Opens.grothendieckTopology ↥X).over U) :=
    Functor.isContinuous_comp _ _ _ (Opens.grothendieckTopology _) _
  refine (SheafOfModules.pushforwardComp _ _) ≪≫ ?_ ≪≫ (SheafOfModules.pushforwardComp _ _).symm
  refine SheafOfModules.pushforwardCongr₂ _ ?_ ?_
  · refine NatIso.ofComponents (fun W ↦ Over.isoMk (eqToIso ?_) ?_) ?_
    · suffices U.ι ''ᵁ ((X.homOfLE (leOfHom f)) ''ᵁ W) = V.ι ''ᵁ W by simpa
      simp [← Scheme.Hom.comp_image]
    · cat_disch
    · cat_disch
  · ext W x
    suffices X.presheaf.map _ x = ((X.homOfLE <| leOfHom f).appIso _).inv x by simpa
    rw [Scheme.Hom.appIso_homOfLE_inv]
    rfl

/-- Up to `Scheme.Modules.overEquiv`, `SheafOfModules.overFunctor` is isomorphic to
`Scheme.Modules.restrictFunctor`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Sheaf/Variant9758ce92e5962b74e1bc9eaba5fd95fe1e34c0bf41e11f0c31312f411e2e1b38.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8745af7611e0d31a11b9e912b41a5ce13546a17a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
