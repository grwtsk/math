# spanNorm_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fb25072-c9f4-fa77-31c3-d21140849a79",
  "kind": "theorem",
  "lexical_name": "spanNorm_mul",
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
  "slug": "spannorm-mul--f6f2ad3dadae46b025ff14ac",
  "source": {
    "blob": "117d689eb4f609ae648664333824bcc5b33e5350",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 191,
    "path": "GRWTSK/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6f2ad3dadae46b025ff14aced15c92bc46af02f75b040174e9d21e9b6c18f1a",
  "verification": {
    "reference": "docs/verification/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fb25072-c9f4-fa77-31c3-d21140849a79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spanNorm_mul (I J : Ideal S) : spanNorm R (I * J) = spanNorm R I * spanNorm R J := by
  nontriviality R
  cases subsingleton_or_nontrivial S
  · have : ∀ I : Ideal S, I = ⊤ := fun I ↦ Subsingleton.elim I ⊤
    simp [this I, this J, this (I * J)]
  refine eq_of_localization_maximal (fun P hP ↦ ?_)
  by_cases hP0 : P = ⊥
  · subst hP0
    rw [spanNorm_mul_of_bot_or_top]
    intro I
    exact or_iff_not_imp_right.mpr fun hI ↦ (hP.eq_of_le hI bot_le).symm
  let P' := Algebra.algebraMapSubmonoid S P.primeCompl
  let Rₚ := Localization.AtPrime P
  let Sₚ := Localization P'
  let _ : Algebra Rₚ Sₚ := localizationAlgebra P.primeCompl S
  have : IsScalarTower R Rₚ Sₚ :=
    IsScalarTower.of_algebraMap_eq (fun x =>
      (IsLocalization.map_eq (T := P') (Q := Localization P') P.primeCompl.le_comap_map x).symm)
  have h : P' ≤ S⁰ :=
    map_le_nonZeroDivisors_of_injective _ (FaithfulSMul.algebraMap_injective _ _)
      P.primeCompl_le_nonZeroDivisors
  have : IsDomain Sₚ := IsLocalization.isDomain_localization h
  have : IsDedekindDomain Sₚ := IsLocalization.isDedekindDomain S h _
  have : IsPrincipalIdealRing Sₚ :=
    IsDedekindDomain.isPrincipalIdealRing_localization_over_prime S P hP0
  have := NoZeroSMulDivisors_of_isLocalization R S Rₚ Sₚ P.primeCompl_le_nonZeroDivisors
  have := Module.Finite_of_isLocalization R S Rₚ Sₚ P.primeCompl
  let L := FractionRing S
  let g : Sₚ →+* L := IsLocalization.map _ (M := P') (T := S⁰) (RingHom.id S) h
  algebraize [g]
  have : IsScalarTower S Sₚ (FractionRing S) := IsScalarTower.of_algebraMap_eq'
    (by rw [RingHom.algebraMap_toAlgebra, IsLocalization.map_comp, RingHom.comp_id])
  have := IsFractionRing.isFractionRing_of_isDomain_of_isLocalization P' Sₚ (FractionRing S)
  have : Algebra.IsSeparable (FractionRing Rₚ) (FractionRing Sₚ) := by
    apply Algebra.IsSeparable.of_equiv_equiv
      (FractionRing.algEquiv Rₚ (FractionRing R)).symm.toRingEquiv
      (FractionRing.algEquiv Sₚ (FractionRing S)).symm.toRingEquiv
    apply IsLocalization.ringHom_ext R⁰
    ext
    simp only [AlgEquiv.toRingEquiv_eq_coe, RingHom.coe_comp,
      RingHom.coe_coe, Function.comp_apply, ← IsScalarTower.algebraMap_apply]
    rw [IsScalarTower.algebraMap_apply R Rₚ (FractionRing R), AlgEquiv.coe_ringEquiv,
      AlgEquiv.commutes, IsScalarTower.algebraMap_apply R S L,
      IsScalarTower.algebraMap_apply S Sₚ L, AlgEquiv.coe_ringEquiv, AlgEquiv.commutes]
    simp only [← IsScalarTower.algebraMap_apply]
  simp only [Ideal.map_mul, ← spanIntNorm_localization (R := R) (S := S)
    (Rₘ := Localization.AtPrime P) (Sₘ := Localization P') _ _ P.primeCompl_le_nonZeroDivisors]
  rw [← (I.map _).span_singleton_generator, ← (J.map _).span_singleton_generator,
    span_singleton_mul_span_singleton, spanNorm_singleton, spanNorm_singleton,
    spanNorm_singleton, span_singleton_mul_span_singleton, map_mul]

/-- The relative norm `Ideal.relNorm R (I : Ideal S)`, where `R` and `S` are Dedekind domains,
and `S` is an extension of `R` that is finite and free as a module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RelNorm/Variant22b32d89ba36ac476c587b650d900986a6524cc101e37f323586c481d270af71.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117d689eb4f609ae648664333824bcc5b33e5350` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
