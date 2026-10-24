# hasInjectiveDimensionLE_iff_of_semiLinearEquiv_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:690a96c0-3aaa-4f60-eab5-b2e831829300",
  "kind": "lemma",
  "lexical_name": "hasInjectiveDimensionLE_iff_of_semiLinearEquiv_aux",
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
  "slug": "hasinjectivedimensionle-iff-of-semilinearequiv-aux--f58f1b03c65afa701c7fd71e",
  "source": {
    "blob": "b432baad61cec6a7bdead803498df415ff09c635",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant17c73b944300cef37f17f60660bed5de67c77136fd6090c2a3407354e0cb672f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f58f1b03c65afa701c7fd71e8a7f2ab9d24eac6542e559078eb5de9208ca028e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InjectiveDimension/Variant17c73b944300cef37f17f60660bed5de67c77136fd6090c2a3407354e0cb672f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:690a96c0-3aaa-4f60-eab5-b2e831829300`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma hasInjectiveDimensionLE_iff_of_semiLinearEquiv_aux [Small.{v} R']
    {M : ModuleCat.{v} R} {N : ModuleCat.{v} R'} (e : M ≃ₛₗ[RingHomClass.toRingHom eR] N)
    (n : ℕ) : HasInjectiveDimensionLE M n ↔ HasInjectiveDimensionLE N n := by
  induction n generalizing M N with
  | zero =>
    simp only [HasInjectiveDimensionLE, zero_add, ← injective_iff_hasInjectiveDimensionLT_one,
      ← Module.injective_iff_injective_object R M, ← Module.injective_iff_injective_object R' N]
    exact ⟨fun _ ↦ Module.Injective.of_ringEquiv eR e,
      fun _ ↦ Module.Injective.of_ringEquiv eR.symm e.symm⟩
  | succ n ih =>
    let ⟨I', _, f', _⟩ := EnoughInjectives.presentation N
    have : Module.Injective R' I' := Module.injective_module_of_injective_object R' I'
    have injf' : Function.Injective f'.hom := (mono_iff_injective f').mp ‹_›
    let S' : ShortComplex (ModuleCat.{v} R') :=
      ModuleCat.shortComplexOfCompEqZero _ _ f'.hom.exact_map_mkQ_range.linearMap_comp_eq_zero
    have exactS' := ModuleCat.shortComplex_shortExact S'
      f'.hom.exact_map_mkQ_range injf' (Submodule.mkQ_surjective _)
    let I : ModuleCat.{v} R :=
      let := Module.compHom I' eR.toRingHom
      ↧I'
    let eI : I ≃ₛₗ[RingHomClass.toRingHom eR] I' := {
      __ := AddEquiv.refl I
      map_smul' r i := rfl }
    have : Injective (ModuleCat.of R I) := by
      rw [← Module.injective_iff_injective_object]
      exact Module.Injective.of_ringEquiv eR.symm eI.symm
    let f : M →ₗ[R] I := eI.symm.toLinearMap.comp (f'.hom.comp e.toLinearMap)
    have injf : Function.Injective f := by simpa [f]
    let S : ShortComplex (ModuleCat.{v} R) :=
      ModuleCat.shortComplexOfCompEqZero _ _ f.exact_map_mkQ_range.linearMap_comp_eq_zero
    have exactS := ModuleCat.shortComplex_shortExact S
      f.exact_map_mkQ_range injf (Submodule.mkQ_surjective _)
    let eCoker : ModuleCat.of R (I ⧸ f.range) ≃ₛₗ[RingHomClass.toRingHom eR]
      ModuleCat.of R' (I' ⧸ f'.hom.range) :=
      Submodule.Quotient.equiv _ _ eI
        (by simp [f, ← Submodule.map_symm_eq_iff eI, LinearMap.range_comp])
    exact (exactS.hasInjectiveDimensionLT_X₃_iff n inferInstance).symm.trans
      ((ih eCoker).trans (exactS'.hasInjectiveDimensionLT_X₃_iff n inferInstance))

attribute [local instance] small_lift in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InjectiveDimension/Variant17c73b944300cef37f17f60660bed5de67c77136fd6090c2a3407354e0cb672f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InjectiveDimension/Variant17c73b944300cef37f17f60660bed5de67c77136fd6090c2a3407354e0cb672f.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b432baad61cec6a7bdead803498df415ff09c635` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
