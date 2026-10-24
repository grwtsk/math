# discr_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f2fc380-3f32-87b5-198e-31832801fa4c",
  "kind": "theorem",
  "lexical_name": "discr_prime_pow",
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
  "slug": "discr-prime-pow--b13a257ae608ea3300cbe4a0",
  "source": {
    "blob": "81ebc6903126bdb2878b12e777059b7e27e72787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 138,
    "path": "GRWTSK/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b13a257ae608ea3300cbe4a0b79b746ec0a76bfaa967776d5821e2d48294ab15",
  "verification": {
    "reference": "docs/verification/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f2fc380-3f32-87b5-198e-31832801fa4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discr_prime_pow [hcycl : IsCyclotomicExtension {p ^ k} K L] [hp : Fact (p : ℕ).Prime]
    (hζ : IsPrimitiveRoot ζ ↑(p ^ k)) (hirr : Irreducible (cyclotomic (↑(p ^ k) : ℕ) K)) :
    discr K (hζ.powerBasis K).basis =
      (-1) ^ ((p ^ k : ℕ).totient / 2) * p ^ ((p : ℕ) ^ (k - 1) * ((p - 1) * k - 1)) := by
  rcases k with - | k
  · simp only [coe_basis, _root_.pow_zero, powerBasis_gen _ hζ, totient_one, mul_zero, mul_one,
      show 1 / 2 = 0 by rfl, discr, traceMatrix]
    have hζone : ζ = 1 := by simpa using hζ
    rw [hζ.powerBasis_dim _, hζone, ← (algebraMap K L).map_one,
      minpoly.eq_X_sub_C_of_algebraMap_inj _ (algebraMap K L).injective, natDegree_X_sub_C]
    simp only [traceMatrix, map_one, one_pow, Matrix.det_unique, traceForm_apply, mul_one]
    rw [← (algebraMap K L).map_one, trace_algebraMap, finrank _ hirr]
    norm_num
  · by_cases hk : p ^ (k + 1) = 2
    · have coe_two : 2 = ((2 : ℕ+) : ℕ) := rfl
      have hp : p = 2 := by
        rw [← PNat.coe_inj, PNat.pow_coe, ← pow_one 2] at hk
        replace hk :=
          eq_of_prime_pow_eq (prime_iff.1 hp.out) (prime_iff.1 Nat.prime_two) (succ_pos _) hk
        rwa [coe_two, PNat.coe_inj] at hk
      subst hp
      rw [← PNat.coe_inj, PNat.pow_coe] at hk
      nth_rw 2 [← pow_one 2] at hk
      replace hk := Nat.pow_right_injective rfl.le hk
      rw [add_eq_right] at hk
      subst hk
      rw [pow_one] at hζ hcycl
      have : natDegree (minpoly K ζ) = 1 := by
        rw [hζ.eq_neg_one_of_two_right, show (-1 : L) = algebraMap K L (-1) by simp,
          minpoly.eq_X_sub_C_of_algebraMap_inj _ (FaithfulSMul.algebraMap_injective K L)]
        exact natDegree_X_sub_C (-1)
      rcases Fin.equiv_iff_eq.2 this with ⟨e⟩
      rw [← Algebra.discr_reindex K (hζ.powerBasis K).basis e, coe_basis, powerBasis_gen]; norm_num
      simp_rw [hζ.eq_neg_one_of_two_right, show (-1 : L) = algebraMap K L (-1) by simp]
      convert_to (discr K fun i : Fin 1 ↦ (algebraMap K L) (-1) ^ ↑i) = _
      · congr
        ext i
        simp only [map_neg, map_one, Function.comp_apply, Fin.val_eq_zero, _root_.pow_zero]
        suffices (e.symm i : ℕ) = 0 by simp [this]
        rw [← Nat.lt_one_iff]
        convert (e.symm i).2
        rw [this]
      · simp only [discr, traceMatrix_apply, Matrix.det_unique, Fin.default_eq_zero, Fin.val_zero,
          _root_.pow_zero, traceForm_apply, mul_one]
        rw [← (algebraMap K L).map_one, trace_algebraMap, finrank _ hirr]; norm_num
    · exact discr_prime_pow_ne_two hζ hirr hk

/-- If `p` is a prime and `IsCyclotomicExtension {p ^ k} K L`, then there are `u : ℤˣ` and
`n : ℕ` such that the discriminant of `hζ.powerBasis K` is `u * p ^ n`. Often this is enough and
less cumbersome to use than `IsCyclotomicExtension.discr_prime_pow`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Discriminant/Variant15e37102f62958aadf0206715730bc13a4444e6b42e3cd8a7175224238bc8649.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81ebc6903126bdb2878b12e777059b7e27e72787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
