# isIntegralClosure_adjoin_singleton_of_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c15110d8-71ee-eb6a-cf6a-af56ff6885f3",
  "kind": "theorem",
  "lexical_name": "isIntegralClosure_adjoin_singleton_of_prime_pow",
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
  "slug": "isintegralclosure-adjoin-singleton-of-prime-pow--fa196a117fd69415315f8442",
  "source": {
    "blob": "a8be3adc809a6dd3ed3c063e1dddf2e3ace97cc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa196a117fd69415315f8442a4ad4d34207e2dc2a9956b583de192d30f469385",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c15110d8-71ee-eb6a-cf6a-af56ff6885f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegralClosure_adjoin_singleton_of_prime_pow [hcycl : IsCyclotomicExtension {p ^ k} ℚ K]
    (hζ : IsPrimitiveRoot ζ (p ^ k)) : IsIntegralClosure (adjoin ℤ ({ζ} : Set K)) ℤ K := by
  refine ⟨Subtype.val_injective, @fun x => ⟨fun h => ⟨⟨x, ?_⟩, rfl⟩, ?_⟩⟩
  swap
  · rintro ⟨y, rfl⟩
    exact
      IsIntegral.algebraMap
        ((le_integralClosure_iff_isIntegral.1
          (adjoin_le_integralClosure (hζ.isIntegral (NeZero.pos _)))).isIntegral _)
  let B := hζ.subOnePowerBasis ℚ
  have hint : IsIntegral ℤ B.gen := (hζ.isIntegral (NeZero.pos _)).sub isIntegral_one
  -- This can't be a `local instance` because it has metavariables.
  let := IsCyclotomicExtension.finiteDimensional {p ^ k} ℚ K
  have H := discr_mul_isIntegral_mem_adjoin ℚ hint h
  obtain ⟨u, n, hun⟩ := discr_prime_pow_eq_unit_mul_pow' hζ
  rw [hun] at H
  replace H := Subalgebra.smul_mem _ H u.inv
  rw [← smul_assoc, ← smul_mul_assoc, Units.inv_eq_val_inv, zsmul_eq_mul, ← Int.cast_mul,
    Units.inv_mul, Int.cast_one, one_mul, smul_def, map_pow] at H
  cases k
  · have : IsCyclotomicExtension {1} ℚ K := by simpa using hcycl
    have : x ∈ (⊥ : Subalgebra ℚ K) := by
      rw [singleton_one ℚ K]
      exact mem_top
    obtain ⟨y, rfl⟩ := mem_bot.1 this
    replace h := isIntegral_algebraMap_iff.1 h
    obtain ⟨z, hz⟩ := IsIntegrallyClosed.isIntegral_iff.1 h
    rw [← hz, ← IsScalarTower.algebraMap_apply]
    exact Subalgebra.algebraMap_mem _ _
  · have hmin : (minpoly ℤ B.gen).IsEisensteinAt (Submodule.span ℤ {(p : ℤ)}) := by
      have h₁ := minpoly.isIntegrallyClosed_eq_field_fractions' ℚ hint
      have h₂ := hζ.minpoly_sub_one_eq_cyclotomic_comp (cyclotomic.irreducible_rat (NeZero.pos _))
      rw [IsPrimitiveRoot.subOnePowerBasis_gen] at h₁
      rw [h₁, ← map_cyclotomic_int, ← algebraMap_int_eq,
        show X + 1 = map (algebraMap ℤ ℚ) (X + 1) by simp, ← map_comp] at h₂
      rw [IsPrimitiveRoot.subOnePowerBasis_gen,
        map_injective (algebraMap ℤ ℚ) (algebraMap ℤ ℚ).injective_int h₂]
      exact cyclotomic_prime_pow_comp_X_add_one_isEisensteinAt p _
    refine
      adjoin_le ?_
        (mem_adjoin_of_smul_prime_pow_smul_of_minpoly_isEisensteinAt (n := n)
          (Nat.prime_iff_prime_int.1 hp.out) hint h (by simpa using H) hmin)
    simp only [Set.singleton_subset_iff, SetLike.mem_coe]
    exact Subalgebra.sub_mem _ (self_mem_adjoin_singleton ℤ _) (Subalgebra.one_mem _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantbba9f172587628f8210902e57bbf6da5a66a7419455c76298184db2fd04475e2.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8be3adc809a6dd3ed3c063e1dddf2e3ace97cc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
