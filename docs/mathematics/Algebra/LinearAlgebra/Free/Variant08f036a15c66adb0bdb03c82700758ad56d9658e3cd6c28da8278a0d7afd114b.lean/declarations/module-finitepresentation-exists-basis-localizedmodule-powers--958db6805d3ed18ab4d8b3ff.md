# Module.FinitePresentation.exists_basis_localizedModule_powers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ae7107ebde79e6b9f4c78052d21ecc14e861d22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9885e16-5e95-e6c8-0611-ae0435f669a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed46f28b-50cd-ff2b-1f06-0575d0aad351",
  "kind": "lemma",
  "lexical_name": "Module.FinitePresentation.exists_basis_localizedModule_powers",
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
  "slug": "module-finitepresentation-exists-basis-localizedmodule-powers--958db6805d3ed18ab4d8b3ff",
  "source": {
    "blob": "2ae7107ebde79e6b9f4c78052d21ecc14e861d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:958db6805d3ed18ab4d8b3ffdf5a3ba57c5bc77c4fc0102d707165eecabb0e7c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed46f28b-50cd-ff2b-1f06-0575d0aad351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.FinitePresentation.exists_basis_localizedModule_powers
    (Rₛ) [CommRing Rₛ] [Algebra R Rₛ] [Module Rₛ M'] [IsScalarTower R Rₛ M']
    [IsLocalization S Rₛ] [Module.FinitePresentation R M]
    {I} [Finite I] (b : Basis I Rₛ M') :
    ∃ (r : R) (hr : r ∈ S)
      (b' : Basis I (Localization (.powers r)) (LocalizedModule (.powers r) M)),
      ∀ i, (LocalizedModule.lift (.powers r) f fun s ↦ IsLocalizedModule.map_units f
        ⟨s.1, SetLike.le_def.mp (Submonoid.powers_le.mpr hr) s.2⟩) (b' i) = b i := by
  have : Module.FinitePresentation R (I →₀ R) := Module.finitePresentation_of_projective _ _
  obtain ⟨r, hr, e, he⟩ := Module.FinitePresentation.exists_lift_equiv_of_isLocalizedModule S f
    (Finsupp.mapRange.linearMap (Algebra.linearMap R Rₛ)) (b.repr.restrictScalars R)
  let e' := IsLocalizedModule.iso (.powers r) (Finsupp.mapRange.linearMap (α := I)
    (Algebra.linearMap R (Localization (.powers r))))
  refine ⟨r, hr, .ofRepr (e ≪≫ₗ ?_), ?_⟩
  · exact
    { __ := e',
      toLinearMap := e'.extendScalarsOfIsLocalization (.powers r) (Localization (.powers r)) }
  · intro i
    have : e'.symm _ = _ := LinearMap.congr_fun (IsLocalizedModule.iso_symm_comp (.powers r)
      (Finsupp.mapRange.linearMap (Algebra.linearMap R (Localization (.powers r)))))
      (Finsupp.single i 1)
    simp only [Finsupp.mapRange.linearMap_apply, Finsupp.mapRange_single, Algebra.linearMap_apply,
      map_one, LocalizedModule.mkLinearMap_apply] at this
    show LocalizedModule.lift _ _ _ (e.symm (e'.symm _)) = _
    replace he := LinearMap.congr_fun he (e.symm (e'.symm (Finsupp.single i 1)))
    simp only [LinearMap.coe_comp, LinearMap.coe_restrictScalars, LinearEquiv.coe_coe,
      Function.comp_apply, LinearEquiv.apply_symm_apply, LinearEquiv.restrictScalars_apply] at he
    apply b.repr.injective
    rw [← he, Basis.repr_self, this, LocalizedModule.lift_mk]
    simp

include f in
/--
If `M` is a finitely presented `R`-module
such that `Mₛ` is free over `Rₛ` for some `S : Submonoid R`,
then `Mᵣ` is already free over `Rᵣ` for some `r ∈ S`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ae7107ebde79e6b9f4c78052d21ecc14e861d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
