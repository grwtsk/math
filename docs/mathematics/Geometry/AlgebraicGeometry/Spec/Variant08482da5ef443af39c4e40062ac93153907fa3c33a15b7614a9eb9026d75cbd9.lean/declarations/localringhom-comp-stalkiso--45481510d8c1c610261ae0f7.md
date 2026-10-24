# localRingHom_comp_stalkIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "18230a358725ee8a60d2fe0f6956d80bfcf2184d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28629ae4-f1ce-8a5f-206b-964fdccdf209",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:471cf585-ccf3-ea50-d0a6-aaa51bed513d",
  "kind": "theorem",
  "lexical_name": "localRingHom_comp_stalkIso",
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
  "slug": "localringhom-comp-stalkiso--45481510d8c1c610261ae0f7",
  "source": {
    "blob": "18230a358725ee8a60d2fe0f6956d80bfcf2184d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 226,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45481510d8c1c610261ae0f75fb3708b4bf3c322c453e0609ac35fc59cd82c19",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:471cf585-ccf3-ea50-d0a6-aaa51bed513d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localRingHom_comp_stalkIso {R S : CommRingCat.{u}} (f : R ⟶ S) (p : PrimeSpectrum S) :
    CommRingCat.ofHom (stalkIso R (PrimeSpectrum.comap f.hom p)).symm.toRingHom ≫
      (CommRingCat.ofHom (Localization.localRingHom (PrimeSpectrum.comap f.hom p).asIdeal p.asIdeal
          f.hom rfl)) ≫
        CommRingCat.ofHom (stalkIso S p).toRingHom =
      (Spec.sheafedSpaceMap f).hom.stalkMap p :=
  (stalkIso R (PrimeSpectrum.comap f.hom p)).toCommRingCatIso.symm.eq_inv_comp.mp <|
    (stalkIso S p).toCommRingCatIso.symm.comp_inv_eq.mpr <| CommRingCat.hom_ext <|
      Localization.localRingHom_unique _ _ _ (PrimeSpectrum.comap_asIdeal _ _) fun x => by
  dsimp [-RingEquiv.symm_mk]
  simp only [AlgEquiv.commutes, RingEquiv.symm_apply_eq, AlgEquiv.coe_ringEquiv]
  exact stalkMap_toStalk_apply f p x

set_option backward.isDefEq.respectTransparency false in
/--
The induced map of a ring homomorphism on the prime spectra, as a morphism of locally ringed spaces.
-/
@[simps! toHom]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant08482da5ef443af39c4e40062ac93153907fa3c33a15b7614a9eb9026d75cbd9.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18230a358725ee8a60d2fe0f6956d80bfcf2184d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
