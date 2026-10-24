# finitePresentation_localizationPreserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c98dab35ce570eba1bd498d5d551a8cfd0dee71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c7064df-ce6c-8151-f3c5-789018067ab8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1513f50-4095-cb86-8a2c-510d81529b57",
  "kind": "theorem",
  "lexical_name": "finitePresentation_localizationPreserves",
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
  "slug": "finitepresentation-localizationpreserves--4cd76783b0ee7e95db692f95",
  "source": {
    "blob": "5c98dab35ce570eba1bd498d5d551a8cfd0dee71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 26,
    "path": "GRWTSK/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cd76783b0ee7e95db692f9544e82208266987c95a909425995cf1af70a55328",
  "verification": {
    "reference": "docs/verification/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1513f50-4095-cb86-8a2c-510d81529b57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finitePresentation_localizationPreserves : LocalizationPreserves @FinitePresentation := by
  introv R hf
  letI := f.toAlgebra
  letI := ((algebraMap S S').comp f).toAlgebra
  let f' : R' →+* S' := IsLocalization.map S' f M.le_comap_map
  letI := f'.toAlgebra
  haveI : IsScalarTower R R' S' :=
    IsScalarTower.of_algebraMap_eq' (IsLocalization.map_comp M.le_comap_map).symm
  obtain ⟨n, g, hgsurj, hgker⟩ := hf
  let MX : Submonoid (MvPolynomial (Fin n) R) :=
    Algebra.algebraMapSubmonoid (MvPolynomial (Fin n) R) M
  haveI : IsLocalization MX (MvPolynomial (Fin n) R') :=
    inferInstanceAs <| IsLocalization (M.map MvPolynomial.C) (MvPolynomial (Fin n) R')
  haveI : IsScalarTower R S S' := IsScalarTower.of_algebraMap_eq' rfl
  haveI : IsLocalization (Algebra.algebraMapSubmonoid S M) S' :=
    inferInstanceAs <| IsLocalization (M.map f) S'
  let g' : MvPolynomial (Fin n) R' →ₐ[R'] S' := IsLocalization.mapₐ M R' _ S' g
  let k : RingHom.ker g →ₗ[MvPolynomial (Fin n) R] RingHom.ker g' :=
    AlgHom.toKerIsLocalization M R' _ S' g
  have : IsLocalizedModule MX k := AlgHom.toKerIsLocalization_isLocalizedModule M _ _ _ g
  have : Module.Finite (MvPolynomial (Fin n) R) (ker g) := Module.Finite.iff_fg.mpr hgker
  exact ⟨n, g', IsLocalization.mapₐ_surjective_of_surjective M R' _ S' g hgsurj,
    Module.Finite.iff_fg.mp (Module.Finite.of_isLocalizedModule MX k)⟩

/-- Being finitely-presented is stable under composition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FinitePresentation/Variant31799361c694b91b4f3d2d1165c6325a84a6a451104c5a0be7bff6595fe6d719.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c98dab35ce570eba1bd498d5d551a8cfd0dee71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
