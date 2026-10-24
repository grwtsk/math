# Spec_map_localization_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f92b4cf1-5838-aa90-5390-c39589ce0da5",
  "kind": "theorem",
  "lexical_name": "Spec_map_localization_isIso",
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
  "slug": "spec-map-localization-isiso--fa4ed288d96aad832dc5e5b9",
  "source": {
    "blob": "933c74125d834f873382a29bf9a1b52d92a781b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 318,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa4ed288d96aad832dc5e5b9974455100f6bbbb67da5271e0c056fd53a0e48a4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f92b4cf1-5838-aa90-5390-c39589ce0da5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Spec_map_localization_isIso (R : CommRingCat.{u}) (M : Submonoid R)
    (x : PrimeSpectrum (Localization M)) :
    IsIso
      ((Spec.toPresheafedSpace.map
        (CommRingCat.ofHom (algebraMap R (Localization M))).op).stalkMap x) := by
  dsimp only [Spec.toPresheafedSpace_map, Quiver.Hom.unop_op]
  rw [← localRingHom_comp_stalkIso]
  -- Porting note: replaced `apply (config := { instances := false })`.
  -- See https://github.com/leanprover/lean4/issues/2273
  refine IsIso.comp_isIso' inferInstance (IsIso.comp_isIso' ?_ inferInstance)
  /- I do not know why this is defeq to the goal, but I'm happy to accept that it is. -/
  show
    IsIso (IsLocalization.localizationLocalizationAtPrimeIsoLocalization M
      x.asIdeal).toRingEquiv.toCommRingCatIso.hom
  infer_instance

namespace StructureSheaf

variable {R S : CommRingCat.{u}} (f : R ⟶ S) (p : PrimeSpectrum R)

/-- For an algebra `f : R →+* S`, this is the ring homomorphism `S →+* (f∗ 𝒪ₛ)ₚ` for a `p : Spec R`.
This is shown to be the localization at `p` in `isLocalizedModule_toPushforwardStalkAlgHom`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante5aa23491e9fe58ca252cb594455b37b7c21adf9b3d85d89b6eb9d116b689e0f.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `933c74125d834f873382a29bf9a1b52d92a781b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
