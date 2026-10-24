# hasInjectiveDimensionLE_iff_forall_maximalSpectrum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17954fbb-985e-dec9-aa69-9dd98abf3fc8",
  "kind": "lemma",
  "lexical_name": "hasInjectiveDimensionLE_iff_forall_maximalSpectrum",
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
  "slug": "hasinjectivedimensionle-iff-forall-maximalspectrum--02882bea088f978696753797",
  "source": {
    "blob": "f02efd21f2b7b98b88f977c0a803868b1a08c2aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 96,
    "path": "GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02882bea088f97869675379771db94bdc4771b678a492aa714225d94b67e1630",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17954fbb-985e-dec9-aa69-9dd98abf3fc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasInjectiveDimensionLE_iff_forall_maximalSpectrum [Small.{v, u} R] [IsNoetherianRing R]
    (n : ℕ) (M : ModuleCat.{v} R) : HasInjectiveDimensionLE M n ↔
    ∀ (m : MaximalSpectrum R), HasInjectiveDimensionLE (M.localizedModule m.1.primeCompl) n := by
  induction n generalizing M with
  | zero =>
    simp only [HasInjectiveDimensionLE, zero_add, ← injective_iff_hasInjectiveDimensionLT_one]
    refine ⟨fun h m ↦ ?_, fun h ↦ ?_⟩
    · let _ : Small.{v} (Localization m.1.primeCompl) :=
        small_of_surjective Localization.mkHom_surjective
      let _ : Module.Injective R M := Module.injective_module_of_injective_object R M
      rw [← Module.injective_iff_injective_object]
      exact Module.injective_of_isLocalizedModule m.1.primeCompl
        (M.localizedModuleMkLinearMap m.1.primeCompl)
    · rw [← Module.injective_iff_injective_object]
      apply Module.injective_of_localization_maximal (fun p hp ↦ ?_)
      let : Small.{v} (Localization.AtPrime p) := small_of_surjective Localization.mkHom_surjective
      have : Module.Injective (Localization.AtPrime p) (M.localizedModule p.primeCompl) := by
        simpa [Module.injective_iff_injective_object] using h ⟨p, hp⟩
      rw [← Module.Baer.iff_injective] at this ⊢
      exact Module.Baer.of_equiv (LinearEquiv.extendScalarsOfIsLocalization p.primeCompl
        (Localization.AtPrime p) (IsLocalizedModule.linearEquiv p.primeCompl
        (M.localizedModuleMkLinearMap p.primeCompl)
        (LocalizedModule.mkLinearMap p.primeCompl M))) this
  | succ n ih =>
    have ei : EnoughInjectives (ModuleCat.{v} R) := inferInstance
    rcases ei.1 M with ⟨I, inj, f, monof⟩
    let S := ShortComplex.mk f (cokernel.π f) (cokernel.condition f)
    have S_exact : S.ShortExact := { exact := ShortComplex.exact_cokernel f }
    let Sp (m : MaximalSpectrum R) := S.map (ModuleCat.localizedModuleFunctor m.1.primeCompl)
    have Sp_exact (m : MaximalSpectrum R) : (Sp m).ShortExact :=
      S_exact.map_of_exact (ModuleCat.localizedModuleFunctor m.1.primeCompl)
    have ih' := ih S.X₃
    simp only [HasInjectiveDimensionLE] at ih' ⊢
    rw [← S_exact.hasInjectiveDimensionLT_X₃_iff n inj, ih']
    have injp (m : MaximalSpectrum R) : Injective (Sp m).X₂ :=
      (ModuleCat.localizedModuleFunctor.{v} m.1.primeCompl).injective_obj _
    exact (forall_congr' (fun p ↦ (Sp_exact p).hasInjectiveDimensionLT_X₃_iff n (injp p)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant7e75078475beb96eb1a7350f6dee4b1e3e3514928e8247705b1b360c0730c6e2.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f02efd21f2b7b98b88f977c0a803868b1a08c2aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
