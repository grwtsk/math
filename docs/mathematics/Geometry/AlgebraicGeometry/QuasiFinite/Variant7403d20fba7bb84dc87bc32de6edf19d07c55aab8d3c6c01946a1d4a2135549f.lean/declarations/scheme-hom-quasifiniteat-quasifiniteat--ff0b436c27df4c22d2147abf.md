# Scheme.Hom.QuasiFiniteAt.quasiFiniteAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3f575d0a932f217a6c1886b72cd63390cff0255",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/7403d20fba7bb84dc87bc32de6edf19d07c55aab8d3c6c01946a1d4a2135549f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d05a4816-fa4c-51ea-164d-9483620b1b24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea70b092-a6ff-5936-a96e-b5115db8c494",
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
  "slug": "scheme-hom-quasifiniteat-quasifiniteat--ff0b436c27df4c22d2147abf",
  "source": {
    "blob": "b3f575d0a932f217a6c1886b72cd63390cff0255",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 336,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant7403d20fba7bb84dc87bc32de6edf19d07c55aab8d3c6c01946a1d4a2135549f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff0b436c27df4c22d2147abfac7a68cec9a139b4faa4885ea02fd744781cb008",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant7403d20fba7bb84dc87bc32de6edf19d07c55aab8d3c6c01946a1d4a2135549f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea70b092-a6ff-5936-a96e-b5115db8c494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–357.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiFinite/Variant7403d20fba7bb84dc87bc32de6edf19d07c55aab8d3c6c01946a1d4a2135549f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiFinite/Variant7403d20fba7bb84dc87bc32de6edf19d07c55aab8d3c6c01946a1d4a2135549f.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f575d0a932f217a6c1886b72cd63390cff0255` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
