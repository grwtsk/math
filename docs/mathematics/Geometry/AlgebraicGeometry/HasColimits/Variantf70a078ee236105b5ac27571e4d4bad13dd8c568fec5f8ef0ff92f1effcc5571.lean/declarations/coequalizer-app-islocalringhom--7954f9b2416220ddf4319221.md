# coequalizer_π_app_isLocalRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a68f9295e79fc732a93eb6a522ed8cf6c873da739458615843b0b09ba6b4e13",
  "kind": "instance",
  "lexical_name": "coequalizer_π_app_isLocalRingHom",
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
  "slug": "coequalizer-app-islocalringhom--7954f9b2416220ddf4319221",
  "source": {
    "blob": "5d1d31b8ff076c8c338694de7c1ab588cd37de0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 153,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7954f9b2416220ddf43192215af56ff7d3dd213bcbc306d1c73558b59dbf718c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a68f9295e79fc732a93eb6a522ed8cf6c873da739458615843b0b09ba6b4e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance coequalizer_π_app_isLocalRingHom
    (U : TopologicalSpace.Opens (coequalizer f.val g.val).carrier) :
    IsLocalRingHom ((coequalizer.π f.val g.val : _).c.app (op U)) := by
  have := ι_comp_coequalizerComparison f.1 g.1 SheafedSpace.forgetToPresheafedSpace
  rw [← PreservesCoequalizer.iso_hom] at this
  erw [SheafedSpace.congr_app this.symm (op U)]
  rw [PresheafedSpace.comp_c_app, ←PresheafedSpace.colimitPresheafObjIsoComponentwiseLimit_hom_π]
  -- Porting note : this instance has to be manually added
  haveI : IsIso (PreservesCoequalizer.iso SheafedSpace.forgetToPresheafedSpace f.val g.val).hom.c :=
    PresheafedSpace.c_isIso_of_iso _
  infer_instance
#align algebraic_geometry.LocallyRingedSpace.has_coequalizer.coequalizer_π_app_is_local_ring_hom AlgebraicGeometry.LocallyRingedSpace.HasCoequalizer.coequalizer_π_app_isLocalRingHom

/-!
We roughly follow the construction given in [MR0302656]. Given a pair `f, g : X ⟶ Y` of morphisms
of locally ringed spaces, we want to show that the stalk map of
`π = coequalizer.π f g` (as sheafed space homs) is a local ring hom. It then follows that
`coequalizer f g` is indeed a locally ringed space, and `coequalizer.π f g` is a morphism of
locally ringed space.

Given a germ `⟨U, s⟩` of `x : coequalizer f g` such that `π꙳ x : Y` is invertible, we ought to show
that `⟨U, s⟩` is invertible. That is, there exists an open set `U' ⊆ U` containing `x` such that the
restriction of `s` onto `U'` is invertible. This `U'` is given by `π '' V`, where `V` is the
basic open set of `π⋆x`.

Since `f ⁻¹' V = Y.basic_open (f ≫ π)꙳ x = Y.basic_open (g ≫ π)꙳ x = g ⁻¹' V`, we have
`π ⁻¹' (π '' V) = V` (as the underlying set map is merely the set-theoretic coequalizer).
This shows that `π '' V` is indeed open, and `s` is invertible on `π '' V` as the components of `π꙳`
are local ring homs.
-/


variable (U : Opens (coequalizer f.1 g.1).carrier)

variable (s : (coequalizer f.1 g.1).presheaf.obj (op U))

/-- (Implementation). The basic open set of the section `π꙳ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d1d31b8ff076c8c338694de7c1ab588cd37de0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
