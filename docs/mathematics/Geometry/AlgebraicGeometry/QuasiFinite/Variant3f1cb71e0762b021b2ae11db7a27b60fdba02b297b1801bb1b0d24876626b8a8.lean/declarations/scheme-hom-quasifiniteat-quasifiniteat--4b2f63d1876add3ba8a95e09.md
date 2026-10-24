# Scheme.Hom.QuasiFiniteAt.quasiFiniteAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d5946fe-eafc-062e-b143-231156c4a46d",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.QuasiFiniteAt.quasiFiniteAt",
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
  "slug": "scheme-hom-quasifiniteat-quasifiniteat--4b2f63d1876add3ba8a95e09",
  "source": {
    "blob": "47be796e20c03ee563fa601d2a4a87163338f74c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 344,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b2f63d1876add3ba8a95e0945e47dae604df672577b3f04788b9fc3700c410b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d5946fe-eafc-062e-b143-231156c4a46d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.QuasiFiniteAt.quasiFiniteAt
    {x : X} (hx : f.QuasiFiniteAt x) {V : X.Opens} (hV : IsAffineOpen V) {U : Y.Opens}
    (hU : IsAffineOpen U) (hVU : V ≤ f ⁻¹ᵁ U) (hxV : x ∈ V.1) :
    (f.appLE U V hVU).hom.QuasiFiniteAt (hV.primeIdealOf ⟨x, hxV⟩).asIdeal := by
  algebraize [(f.appLE U V hVU).hom]
  have H : (Y.presheaf.germ U _ (hVU hxV)).hom.QuasiFinite := by
    algebraize [(Y.presheaf.germ U _ (hVU hxV)).hom]
    have := hU.isLocalization_stalk ⟨f x, (hVU hxV)⟩
    rw [← (Y.presheaf.germ U _ (hVU hxV)).hom.algebraMap_toAlgebra,
      RingHom.quasiFinite_algebraMap]
    exact .of_isLocalization (hU.primeIdealOf ⟨_, hVU hxV⟩).asIdeal.primeCompl
  algebraize [(X.presheaf.germ V x hxV).hom]
  have := hV.isLocalization_stalk ⟨x, hxV⟩
  let e := IsLocalization.algEquiv (hV.primeIdealOf ⟨x, hxV⟩).asIdeal.primeCompl
    (X.presheaf.stalk (⟨x, hxV⟩ : V.1)) (Localization.AtPrime (hV.primeIdealOf ⟨x, hxV⟩).asIdeal)
  rw [RingHom.QuasiFiniteAt, Algebra.QuasiFiniteAt, ← RingHom.quasiFinite_algebraMap]
  convert! (RingHom.QuasiFinite.of_finite e.finite).comp (hx.comp H)
  rw [← CommRingCat.hom_comp, f.germ_stalkMap, ← X.presheaf.germ_res (homOfLE hVU) _ hxV,
    Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_map_assoc, CommRingCat.hom_comp, ← RingHom.comp_assoc,
    IsScalarTower.algebraMap_eq Γ(Y, U) Γ(X, V), e.toAlgHom.comp_algebraMap.symm]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant3f1cb71e0762b021b2ae11db7a27b60fdba02b297b1801bb1b0d24876626b8a8.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47be796e20c03ee563fa601d2a4a87163338f74c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
