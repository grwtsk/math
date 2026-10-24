# arrowStalkMapIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c90b3fc4bf130346ca98f570a0fb3ce67636110c690f38c929ccdf3738e8cfce",
  "kind": "def",
  "lexical_name": "arrowStalkMapIso",
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
  "slug": "arrowstalkmapiso--41f533ddcf04bd702f63fb4b",
  "source": {
    "blob": "6f17ae9ced7fa1b29dd8082e579a7ec248a5ed4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 914,
    "line": 884,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variante1d1dc6eb97ef22043207da61709f1c92f5dc7d1a768a111441d6db5d74dae36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41f533ddcf04bd702f63fb4b0c76e19130a97ca49f94bca0db7432abbaceab67",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variante1d1dc6eb97ef22043207da61709f1c92f5dc7d1a768a111441d6db5d74dae36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c90b3fc4bf130346ca98f570a0fb3ce67636110c690f38c929ccdf3738e8cfce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 884–914.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def arrowStalkMapIso (f : X ⟶ Y) {x : X} (U : Y.Opens)
      (hU : IsAffineOpen U) (V : X.Opens) (hV : IsAffineOpen V) (hVU : V ≤ f ⁻¹ᵁ U)
      (hx : x ∈ V) :
    Arrow.mk (f.stalkMap x) ≅ Arrow.mk (CommRingCat.ofHom <|
      Localization.localRingHom _ _ (f.appLE U V hVU).hom
        congr($(IsAffineOpen.comap_primeIdealOf_appLE U hU V hV hVU hx).1).symm) := by
  let := Y.presheaf.algebra_section_stalk ⟨f x, hVU hx⟩
  have := hU.isLocalization_stalk ⟨f x, hVU hx⟩
  let := X.presheaf.algebra_section_stalk ⟨x, hx⟩
  have := hV.isLocalization_stalk ⟨x, hx⟩
  refine Arrow.isoMk' _ _ ?_ ?_ ?_
  · exact ((IsLocalization.algEquiv (hU.primeIdealOf ⟨f x, hVU hx⟩).asIdeal.primeCompl
      (Y.presheaf.stalk (f x))
      (Localization.AtPrime (hU.primeIdealOf ⟨f x, hVU hx⟩).asIdeal)).toCommRingCatIso:)
  · exact ((IsLocalization.algEquiv (hV.primeIdealOf ⟨x, hx⟩).asIdeal.primeCompl
      (X.presheaf.stalk x)
      (Localization.AtPrime (hV.primeIdealOf ⟨x, hx⟩).asIdeal)).toCommRingCatIso:)
  · rw [← Iso.comp_inv_eq]
    ext1
    apply IsLocalization.ringHom_ext
      (hU.primeIdealOf ⟨f x, hVU hx⟩).asIdeal.primeCompl
    ext a
    dsimp [← AlgEquiv.symm_toRingEquiv]
    simp only [IsLocalization.map_eq, RingHom.id_apply, Localization.localRingHom_to_map,
      RingHomCompTriple.comp_apply]
    simp only [RingHom.algebraMap_toAlgebra, Scheme.Hom.germ_stalkMap_apply, Scheme.Hom.appLE,
      homOfLE_leOfHom, CommRingCat.hom_comp, RingHom.coe_comp, Function.comp_apply,
      X.presheaf.germ_res_apply]

/-- The basic open set of a section `f` on an affine open as an `X.affineOpens`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variante1d1dc6eb97ef22043207da61709f1c92f5dc7d1a768a111441d6db5d74dae36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variante1d1dc6eb97ef22043207da61709f1c92f5dc7d1a768a111441d6db5d74dae36.lean#L884).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f17ae9ced7fa1b29dd8082e579a7ec248a5ed4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
