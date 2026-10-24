# twistedPsiKernel_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "290f5ffc4bea1385f961f99cf14b89fcba315c8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 320,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64b24666-ad64-9910-f028-9cf82177fffc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:943dc890-6451-3209-2154-a19de61c56cd",
  "kind": "theorem",
  "lexical_name": "twistedPsiKernel_integrable",
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
  "slug": "twistedpsikernel-integrable--24be713cceecbd1805c5578f",
  "source": {
    "blob": "290f5ffc4bea1385f961f99cf14b89fcba315c8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 320,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24be713cceecbd1805c5578ff43d2ef1f5d81a387e8a6d7482147845babc07eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:943dc890-6451-3209-2154-a19de61c56cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem twistedPsiKernel_integrable
    {q : ℕ} (χ : DirichletCharacter ℂ q)
    {s : ℂ} (hs : 1 < s.re) :
    IntegrableOn
      (fun t : ℝ ↦ twistedPsi χ ⌊t⌋₊ * (t : ℂ) ^ (-(s + 1)))
      (Ioi 1) := by
  have hlocal : LocallyIntegrableOn
      (fun t : ℝ ↦ twistedPsi χ ⌊t⌋₊ * (t : ℂ) ^ (-(s + 1)))
      (Ici 1) := by
    simp_rw [mul_comm]
    refine locallyIntegrableOn_mul_sum_Icc
      ((fun n : ℕ ↦ χ n) *
        (fun n : ℕ ↦ (ArithmeticFunction.vonMangoldt n : ℂ)))
      zero_le_one ?_
    refine ContinuousOn.locallyIntegrableOn (fun t ht ↦ ?_) measurableSet_Ici
    exact (continuousAt_ofReal_cpow_const _ _
      (Or.inr (zero_lt_one.trans_le ht).ne')).continuousWithinAt
  have hpartial :
      (fun t : ℝ ↦ twistedPsi χ ⌊t⌋₊) =O[atTop]
        (fun t : ℝ ↦ t ^ (1 : ℝ)) := by
    rw [isBigO_iff]
    refine ⟨Real.log 4 + 4, ?_⟩
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with t ht
    have hfloor : (⌊t⌋₊ : ℝ) ≤ t := Nat.floor_le (zero_le_one.trans ht)
    calc
      ‖twistedPsi χ ⌊t⌋₊‖ ≤ Chebyshev.psi ⌊t⌋₊ := by
        rw [twistedPsi]
        calc
          ‖∑ k ∈ Finset.Icc 1 ⌊t⌋₊,
              χ (k : ZMod q) * (ArithmeticFunction.vonMangoldt k : ℂ)‖ ≤
              ∑ k ∈ Finset.Icc 1 ⌊t⌋₊,
                ‖χ (k : ZMod q) *
                  (ArithmeticFunction.vonMangoldt k : ℂ)‖ := norm_sum_le _ _
          _ ≤ ∑ k ∈ Finset.Icc 1 ⌊t⌋₊,
                ArithmeticFunction.vonMangoldt k := by
            gcongr with k hk
            rw [norm_mul, Complex.norm_real,
              Real.norm_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
            exact mul_le_of_le_one_left ArithmeticFunction.vonMangoldt_nonneg
              (χ.norm_le_one (k : ZMod q))
          _ = Chebyshev.psi ⌊t⌋₊ := by
            have hsets : Finset.Icc 1 ⌊t⌋₊ = Finset.Ioc 0 ⌊t⌋₊ := by
              ext k
              simp only [Finset.mem_Icc, Finset.mem_Ioc]
              omega
            rw [hsets]
            simp [Chebyshev.psi]
      _ ≤ (Real.log 4 + 4) * (⌊t⌋₊ : ℝ) :=
        Chebyshev.psi_le_const_mul_self (Nat.cast_nonneg ⌊t⌋₊)
      _ ≤ (Real.log 4 + 4) * t := by
        exact mul_le_mul_of_nonneg_left hfloor (by positivity)
      _ = (Real.log 4 + 4) * ‖t ^ (1 : ℝ)‖ := by
        simp [Real.rpow_one, Real.norm_of_nonneg (zero_le_one.trans ht)]
  apply IntegrableOn.mono_set
    (hlocal.integrableOn_of_isBigO_atTop
      (g := fun t : ℝ ↦ t ^ (-s.re)) ?_ ?_)
    Ioi_subset_Ici_self
  · refine IsBigO.mul_atTop_rpow_of_isBigO_rpow
      1 (-(s + 1)).re (-s.re) hpartial ?_
        (by simp only [neg_re, add_re, one_re]; linarith)
    exact (norm_ofReal_cpow_eventually_eq_atTop _).isBigO.of_norm_left
  · rwa [integrableAtFilter_rpow_atTop_iff, neg_lt_neg_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290f5ffc4bea1385f961f99cf14b89fcba315c8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
