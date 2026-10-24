# isIso_SpecMap_stakMap_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8db386a-8b9c-d0da-db75-f94509ecb39a",
  "kind": "theorem",
  "lexical_name": "isIso_SpecMap_stakMap_localization",
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
  "slug": "isiso-specmap-stakmap-localization--4952d9bda0f8f867b0dfade3",
  "source": {
    "blob": "9ac453242eb7302787134cbd79e9206f93f7bad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 317,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4952d9bda0f8f867b0dfade36b6f1e78529518fbc8ebb660e79b1a25512192b5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8db386a-8b9c-d0da-db75-f94509ecb39a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIso_SpecMap_stakMap_localization (R : CommRingCat.{u}) (M : Submonoid R)
    (x : PrimeSpectrum (Localization M)) :
    IsIso
      ((Spec.toPresheafedSpace.map
        (CommRingCat.ofHom (algebraMap R (Localization M))).op).stalkMap x) := by
  dsimp only [Spec.toPresheafedSpace_map, Quiver.Hom.unop_op]
  rw [← localRingHom_comp_stalkIso, ConcreteCategory.isIso_iff_bijective]
  dsimp
  simp only [EquivLike.bijective_comp]
  refine (stalkIso (Localization M) x).bijective.comp ?_
  suffices
    IsIso (IsLocalization.localizationLocalizationAtPrimeIsoLocalization M
        x.asIdeal).toRingEquiv.toCommRingCatIso.hom by
    rwa [ConcreteCategory.isIso_iff_bijective] at this
  infer_instance

namespace StructureSheaf

variable {R S : CommRingCat.{u}} (f : R ⟶ S) (p : PrimeSpectrum R)

set_option backward.isDefEq.respectTransparency.types false in
/-- For an algebra `f : R →+* S`, this is the ring homomorphism `S →+* (f∗ 𝒪ₛ)ₚ` for a `p : Spec R`.
This is shown to be the localization at `p` in `isLocalizedModule_toPushforwardStalkAlgHom`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant64f777a0000556d0eb4f4dccc9b9b186f87d8a06d58d5c4942b8500330370368.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ac453242eb7302787134cbd79e9206f93f7bad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
