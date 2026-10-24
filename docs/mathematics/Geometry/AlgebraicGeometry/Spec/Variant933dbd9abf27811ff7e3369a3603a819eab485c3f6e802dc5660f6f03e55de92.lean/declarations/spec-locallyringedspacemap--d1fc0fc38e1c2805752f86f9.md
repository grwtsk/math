# Spec.locallyRingedSpaceMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f62445b76455ebbfce166bf454ecabc5a406a248e9228ac9b62b39e45215dfd9",
  "kind": "def",
  "lexical_name": "Spec.locallyRingedSpaceMap",
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
  "slug": "spec-locallyringedspacemap--d1fc0fc38e1c2805752f86f9",
  "source": {
    "blob": "a55694b93a90347505922ec61d438411b1348f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 253,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1fc0fc38e1c2805752f86f944a34cbb7f5894ebccc5f79782a3c23cc5bf3c66",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f62445b76455ebbfce166bf454ecabc5a406a248e9228ac9b62b39e45215dfd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Spec.locallyRingedSpaceMap {R S : CommRingCat} (f : R ⟶ S) :
    Spec.locallyRingedSpaceObj S ⟶ Spec.locallyRingedSpaceObj R :=
  LocallyRingedSpace.Hom.mk (Spec.sheafedSpaceMap f) fun p =>
    IsLocalRingHom.mk fun a ha => by
      -- Here, we are showing that the map on prime spectra induced by `f` is really a morphism of
      -- *locally* ringed spaces, i.e. that the induced map on the stalks is a local ring
      -- homomorphism.
      erw [← localRingHom_comp_stalkIso_apply] at ha
      replace ha := (stalkIso S p).hom.isUnit_map ha
      rw [← comp_apply, show localizationToStalk S p = (stalkIso S p).inv from rfl,
        Iso.inv_hom_id, id_apply] at ha
      -- Porting note : `R` had to be made explicit
      replace ha := IsLocalRingHom.map_nonunit
        (R := Localization.AtPrime (PrimeSpectrum.comap f p).asIdeal) _ ha
      convert RingHom.isUnit_map (stalkIso R (PrimeSpectrum.comap f p)).inv ha
      erw [← comp_apply, show stalkToFiberRingHom R _ = (stalkIso _ _).hom from rfl,
        Iso.hom_inv_id, id_apply]
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.Spec.LocallyRingedSpace_map AlgebraicGeometry.Spec.locallyRingedSpaceMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant933dbd9abf27811ff7e3369a3603a819eab485c3f6e802dc5660f6f03e55de92.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55694b93a90347505922ec61d438411b1348f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
