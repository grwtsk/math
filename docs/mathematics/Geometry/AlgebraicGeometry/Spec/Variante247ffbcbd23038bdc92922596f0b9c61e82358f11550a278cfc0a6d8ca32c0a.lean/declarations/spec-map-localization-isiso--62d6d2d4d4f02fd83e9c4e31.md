# Spec_map_localization_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbc1a71d05448912e16895aa2debc5c7eacc28d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c8ab783-dd11-1793-9b76-e24dd90d68af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6883127-9613-affa-6c43-5e8a214c9a58",
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
  "slug": "spec-map-localization-isiso--62d6d2d4d4f02fd83e9c4e31",
  "source": {
    "blob": "dbc1a71d05448912e16895aa2debc5c7eacc28d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 310,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62d6d2d4d4f02fd83e9c4e31ad47462aafc30a16598630c7a1680f70250da96a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6883127-9613-affa-6c43-5e8a214c9a58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–332.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variante247ffbcbd23038bdc92922596f0b9c61e82358f11550a278cfc0a6d8ca32c0a.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbc1a71d05448912e16895aa2debc5c7eacc28d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
