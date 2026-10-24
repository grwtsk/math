# Algebra.trace_quotient_eq_of_isDedekindDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54bb340675a08f2a95a6f566b0ef31d11175e188",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d465c978-7541-0b3d-7ce3-89948f1f96fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:340de589-c7e2-029e-90bb-d055e63996b4",
  "kind": "lemma",
  "lexical_name": "Algebra.trace_quotient_eq_of_isDedekindDomain",
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
  "slug": "algebra-trace-quotient-eq-of-isdedekinddomain--9eab7b80c168cc2474b73c00",
  "source": {
    "blob": "54bb340675a08f2a95a6f566b0ef31d11175e188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 189,
    "path": "GRWTSK/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eab7b80c168cc2474b73c007fe901bb0ae226587dca0c0efe9eb704fde3e8a2",
  "verification": {
    "reference": "docs/verification/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:340de589-c7e2-029e-90bb-d055e63996b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.trace_quotient_eq_of_isDedekindDomain (x) [IsDedekindDomain R] [IsDomain S]
    [NoZeroSMulDivisors R S] [Module.Finite R S] [IsIntegrallyClosed S] :
    Algebra.trace (R ⧸ p) (S ⧸ pS) (Ideal.Quotient.mk pS x) =
      Ideal.Quotient.mk p (Algebra.intTrace R S x) := by
  let Rₚ := Localization.AtPrime p
  let Sₚ := Localization (Algebra.algebraMapSubmonoid S p.primeCompl)
  letI : Algebra Rₚ Sₚ := localizationAlgebra p.primeCompl S
  haveI : IsScalarTower R Rₚ Sₚ := IsScalarTower.of_algebraMap_eq'
    (by rw [RingHom.algebraMap_toAlgebra, IsLocalization.map_comp, ← IsScalarTower.algebraMap_eq])
  haveI : IsLocalization (Submonoid.map (algebraMap R S) (Ideal.primeCompl p)) Sₚ :=
    inferInstanceAs (IsLocalization (Algebra.algebraMapSubmonoid S p.primeCompl) Sₚ)
  have e : Algebra.algebraMapSubmonoid S p.primeCompl ≤ S⁰ :=
    Submonoid.map_le_of_le_comap _ <| p.primeCompl_le_nonZeroDivisors.trans
      (nonZeroDivisors_le_comap_nonZeroDivisors_of_injective _
        (FaithfulSMul.algebraMap_injective _ _))
  haveI : IsDomain Sₚ := IsLocalization.isDomain_of_le_nonZeroDivisors S e
  haveI : NoZeroSMulDivisors Rₚ Sₚ := by
    rw [NoZeroSMulDivisors.iff_algebraMap_injective, RingHom.injective_iff_ker_eq_bot,
      RingHom.ker_eq_bot_iff_eq_zero]
    intro x hx
    obtain ⟨x, s, rfl⟩ := IsLocalization.mk'_surjective p.primeCompl x
    simp only [Sₚ, RingHom.algebraMap_toAlgebra, IsLocalization.map_mk',
      IsLocalization.mk'_eq_zero_iff, mul_eq_zero, Subtype.exists, exists_prop] at hx ⊢
    obtain ⟨_, ⟨a, ha, rfl⟩, H⟩ := hx
    simp only [(injective_iff_map_eq_zero' _).mp (FaithfulSMul.algebraMap_injective R S)] at H
    refine ⟨a, ha, H⟩
  haveI : Module.Finite Rₚ Sₚ := Module.Finite_of_isLocalization R S _ _ p.primeCompl
  haveI : IsIntegrallyClosed Sₚ := isIntegrallyClosed_of_isLocalization _ _ e
  have : IsPrincipalIdealRing Rₚ := by
    by_cases hp : p = ⊥
    · infer_instance
    · have := (IsDedekindDomain.isDedekindDomainDvr R).2 p hp inferInstance
      infer_instance
  haveI : Module.Free Rₚ Sₚ := Module.free_of_finite_type_torsion_free'
  apply (equivQuotMaximalIdealOfIsLocalization p Rₚ).injective
  rw [trace_quotient_eq_trace_localization_quotient S p Rₚ Sₚ, IsScalarTower.algebraMap_eq S Sₚ,
    RingHom.comp_apply, Ideal.Quotient.algebraMap_eq, Algebra.trace_quotient_mk,
    RingEquiv.apply_symm_apply, ← Algebra.intTrace_eq_trace,
    ← Algebra.intTrace_eq_of_isLocalization R S p.primeCompl (Aₘ := Rₚ) (Bₘ := Sₚ) x,
    ← Ideal.Quotient.algebraMap_eq, ← IsScalarTower.algebraMap_apply]
  simp only [equivQuotMaximalIdealOfIsLocalization, RingHom.quotientKerEquivOfSurjective,
    RingEquiv.coe_trans, Function.comp_apply, Ideal.quotEquivOfEq_mk,
    RingHom.quotientKerEquivOfRightInverse.apply, RingHom.kerLift_mk]

end IsDedekindDomain
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54bb340675a08f2a95a6f566b0ef31d11175e188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
