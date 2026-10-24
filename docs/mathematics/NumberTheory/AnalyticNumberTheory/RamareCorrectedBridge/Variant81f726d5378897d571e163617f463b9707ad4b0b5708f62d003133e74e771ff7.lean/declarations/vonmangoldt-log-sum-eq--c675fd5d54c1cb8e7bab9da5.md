# vonMangoldt_log_sum_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc5d4f7bddc48e8e02422bac8d7b700317c7436c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a011068-703e-a2c9-dd99-848d14558a25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22d5d7fa-257b-e264-b415-95a5f5ada51c",
  "kind": "theorem",
  "lexical_name": "vonMangoldt_log_sum_eq",
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
  "slug": "vonmangoldt-log-sum-eq--c675fd5d54c1cb8e7bab9da5",
  "source": {
    "blob": "fc5d4f7bddc48e8e02422bac8d7b700317c7436c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 276,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c675fd5d54c1cb8e7bab9da570573f0b039564b720eee7152e1d53c000d63cae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22d5d7fa-257b-e264-b415-95a5f5ada51c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vonMangoldt_log_sum_eq (N : Nat) (hN : 1 <= N) :
    (∑ n ∈ Finset.Icc 1 N,
        ArithmeticFunction.vonMangoldt n * Real.log n) =
      Chebyshev.psi (N : Real) * Real.log N -
        ∫ t in (1 : Real)..N, Chebyshev.psi t / t := by
  let f : Real -> Real := Real.log
  have hNreal : (1 : Real) <= N := by exact_mod_cast hN
  have hdiff : ∀ t ∈ Set.Icc (1 : Real) N,
      DifferentiableAt Real f t := by
    intro t ht
    rw [Set.mem_Icc] at ht
    have ht0 : t ≠ 0 := by linarith
    exact (Real.hasDerivAt_log ht0).differentiableAt
  have hint : IntegrableOn (deriv f) (Set.Icc (1 : Real) N) := by
    refine ContinuousOn.integrableOn_Icc fun t ht => ?_
    rw [Set.mem_Icc] at ht
    have ht0 : t ≠ 0 := by
      have ht1 : (1 : Real) <= t := ht.1
      linarith
    refine ContinuousAt.continuousWithinAt (show ContinuousAt (fun u : Real => u⁻¹) t by
      fun_prop) |>.congr ?_ ?_
    · intro u hu
      have hu0 : u ≠ 0 := by linarith [hu.1]
      exact (Real.hasDerivAt_log hu0).deriv
    · exact (Real.hasDerivAt_log ht0).deriv
  have habel := sum_mul_eq_sub_sub_integral_mul
    (c := fun n => (ArithmeticFunction.vonMangoldt n : Real))
    (f := f) (by norm_num : (0 : Real) <= 1) hNreal hdiff hint
  simp only [Nat.floor_one, Nat.floor_natCast] at habel
  have hleft :
      (∑ n ∈ Finset.Ioc 1 N,
        f n * ArithmeticFunction.vonMangoldt n) =
      ∑ n ∈ Finset.Icc 1 N,
        ArithmeticFunction.vonMangoldt n * Real.log n := by
    calc
      (∑ n ∈ Finset.Ioc 1 N,
          f n * ArithmeticFunction.vonMangoldt n) =
          ∑ n ∈ Finset.Icc 1 N,
            f n * ArithmeticFunction.vonMangoldt n := by
              apply Finset.sum_subset
              · intro n hn
                simp only [Finset.mem_Ioc, Finset.mem_Icc] at hn ⊢
                omega
              · intro n hn hnopen
                simp only [Finset.mem_Icc, Finset.mem_Ioc] at hn hnopen
                have hn1 : n = 1 := by omega
                subst n
                simp [f, ArithmeticFunction.vonMangoldt_apply_one]
      _ = ∑ n ∈ Finset.Icc 1 N,
          ArithmeticFunction.vonMangoldt n * Real.log n := by
            apply Finset.sum_congr rfl
            intro n hn
            simp [f, mul_comm]
  have hintegral :
      (∫ t in Set.Ioc (1 : Real) N,
        deriv f t * ∑ k ∈ Finset.Icc 0 ⌊t⌋₊,
          (ArithmeticFunction.vonMangoldt k : Real)) =
        ∫ t in (1 : Real)..N, Chebyshev.psi t / t := by
    rw [← intervalIntegral.integral_of_le hNreal]
    apply intervalIntegral.integral_congr
    intro t ht
    rw [Set.uIcc_of_le hNreal] at ht
    have ht0 : t ≠ 0 := by linarith [ht.1]
    dsimp [f]
    rw [(Real.hasDerivAt_log ht0).deriv]
    rw [← Chebyshev.psi_eq_sum_Icc]
    ring
  rw [hleft, hintegral] at habel
  change
    (∑ n ∈ Finset.Icc 1 N,
        ArithmeticFunction.vonMangoldt n * Real.log n) =
      Real.log N *
          (∑ k ∈ Finset.Icc 0 N,
            (ArithmeticFunction.vonMangoldt k : Real)) -
        Real.log 1 *
          (∑ k ∈ Finset.Icc 0 1,
            (ArithmeticFunction.vonMangoldt k : Real)) -
        ∫ t in (1 : Real)..N, Chebyshev.psi t / t at habel
  have hpsiN :
      (∑ k ∈ Finset.Icc 0 N,
        (ArithmeticFunction.vonMangoldt k : Real)) =
        Chebyshev.psi (N : Real) := by
    rw [Chebyshev.psi_eq_sum_Icc, Nat.floor_natCast]
  rw [hpsiN] at habel
  simpa [mul_comm] using habel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RamareCorrectedBridge/Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc5d4f7bddc48e8e02422bac8d7b700317c7436c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
