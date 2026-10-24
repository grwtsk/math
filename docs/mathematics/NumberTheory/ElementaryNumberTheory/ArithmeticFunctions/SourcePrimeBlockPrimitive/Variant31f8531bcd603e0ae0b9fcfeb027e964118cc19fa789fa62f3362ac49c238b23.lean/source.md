# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SourcePrimeBlockPrimitive.Variant31f8531bcd603e0ae0b9fcfeb027e964118cc19fa789fa62f3362ac49c238b23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67289dea2ba4aa6455f16a55036e53bc767a9222` · SHA-256 `a250edaa964f58bd862afaa10febe075cec19e916ea3b9de2918950e5e22167f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.BetaEqMoebiusFirstBlock.Variante56d667fb6f1001885ae7064ea8e78a7adf62619cb69a86140bb9902efd1f915","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e56d667fb6f1001885ae7064ea8e78a7adf62619cb69a86140bb9902efd1f915","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.BetaEqMoebiusFirstBlock.Variante56d667fb6f1001885ae7064ea8e78a7adf62619cb69a86140bb9902efd1f915","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"e56d667fb6f1001885ae7064ea8e78a7adf62619cb69a86140bb9902efd1f915","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/prime-block-primitive/native/attempt01/SourcePrimeBlockPrimitive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCutoffFlux

/-!
Literal first long block of the actual Vaughan row and physical prime-power column.
The far block is retained by the consuming split, never discarded.
Direction and conceptual origin: grwtsk contributors.
Native construction: OpenAI Codex graph/review analyst.
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.BetaEqMoebiusFirstBlock.Variante56d667fb6f1001885ae7064ea8e78a7adf62619cb69a86140bb9902efd1f915

set_option autoImplicit false
noncomputable section
namespace RH16PrimeBlockPrimitive
open ArithmeticFunction
open FormalResearch.RiemannHypothesis.SourceCutoffFlux
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateBetaCentering

/-- Before the first possible proper long divisor, the literal long row is mu itself. -/
theorem beta_eq_moebius_first_block (U n : ℕ) (hU : 1 ≤ U)
    (hUn : U < n) (hn : n ≤ 2 * U + 1) : beta U n = (moebius n : ℝ) := by
  have hn0 : n ≠ 0 := by omega
  have hs : n.divisors.filter (fun d => U < d) = {n} := by
    ext d
    simp only [Finset.mem_filter, Nat.mem_divisors, Finset.mem_singleton]
    constructor
    · rintro ⟨⟨hdn, _⟩, hUd⟩
      obtain ⟨k, hk⟩ := hdn
      have hk0 : k ≠ 0 := by
        intro hz
        rw [hz, mul_zero] at hk
        exact hn0 hk
      have hk1 : k ≤ 1 := by
        by_contra hnot
        have h2 : 2 ≤ k := by omega
        have hm : 2 * d ≤ n := by
          calc
            2 * d = d * 2 := Nat.mul_comm _ _
            _ ≤ d * k := Nat.mul_le_mul_left _ h2
            _ = n := hk.symm
        omega
      have hkEq : k = 1 := by omega
      simpa [hkEq] using hk.symm
    · intro heq
      subst d
      exact ⟨⟨dvd_rfl, hn0⟩, hUn⟩
  rw [beta, hs, Finset.sum_singleton]

theorem centeredBeta_eq_moebius_add_alpha_first_block (U n : ℕ) (hU : 1 ≤ U)
    (hUn : U < n) (hn : n ≤ 2 * U + 1) :
    centeredBeta U n = (moebius n : ℝ) + alpha U := by
  rw [centeredBeta, beta_eq_moebius_first_block U n hU hUn hn]

/-- Actual source and its deleted physical diagonal survive the zero-cost first-block adapter. -/
theorem actual_first_block_off_column_eq_moebius (A : ℝ) (U V m : ℕ)
    (hU : 1 ≤ U) (hUV : U ≤ V) (hV : V ≤ 2 * U + 1) :
    (∑ n ∈ Finset.Ioc U V, sourceKernel A m n * beta U n) -
        (if m ∈ Finset.Ioc U V then sourceKernel A m m * beta U m else 0) =
      (∑ n ∈ Finset.Ioc U V, sourceKernel A m n * (moebius n : ℝ)) -
        (if m ∈ Finset.Ioc U V then sourceKernel A m m * (moebius m : ℝ) else 0) := by
  have hs : (∑ n ∈ Finset.Ioc U V, sourceKernel A m n * beta U n) =
      ∑ n ∈ Finset.Ioc U V, sourceKernel A m n * (moebius n : ℝ) := by
    apply Finset.sum_congr rfl
    intro n hn
    rw [beta_eq_moebius_first_block U n hU (Finset.mem_Ioc.mp hn).1
      ((Finset.mem_Ioc.mp hn).2.trans hV)]
  rw [hs]
  by_cases hm : m ∈ Finset.Ioc U V
  · rw [if_pos hm, if_pos hm,
      beta_eq_moebius_first_block U m hU (Finset.mem_Ioc.mp hm).1
        ((Finset.mem_Ioc.mp hm).2.trans hV)]
  · rw [if_neg hm, if_neg hm]
end RH16PrimeBlockPrimitive
```
