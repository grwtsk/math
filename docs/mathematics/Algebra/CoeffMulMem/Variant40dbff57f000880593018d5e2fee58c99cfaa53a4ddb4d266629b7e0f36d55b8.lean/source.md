# Complete source: GRWTSK.Algebra.CoeffMulMem.Variant40dbff57f000880593018d5e2fee58c99cfaa53a4ddb4d266629b7e0f36d55b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `538092722d54a2c56323be9a97912d664c7ab98f` · SHA-256 `b6c5ee23c049b2e5658acf3fecf0102970a8ce0fbe21c82ccdb77c8353ecfac2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CoeffMulMemIdealMulIdealOfCoeffMemIdeal.Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CoeffMulMemIdealMulIdealOfCoeffMemIdeal.Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/PowerSeries/CoeffMulMem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.RingTheory.Ideal.Operations
import Mathlib.RingTheory.Ideal.BigOperators
import Mathlib.RingTheory.PowerSeries.Basic

/-!

# Some results on the coefficients of multiplication of two power series

## Main results

- `PowerSeries.coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal`,
  `PowerSeries.coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal'`:
  if for all `i ≤ n` (resp. for all `i`), the `i`-th coefficients of power series `f` and `g` are
  in ideals `I` and `J`, respectively, then for all `i ≤ n` (resp. for all `i`), the `i`-th
  coefficients of `f * g` are in `I * J`.

- `PowerSeries.coeff_mul_mem_ideal_of_coeff_right_mem_ideal`,
  `PowerSeries.coeff_mul_mem_ideal_of_coeff_right_mem_ideal'`:
  if for all `i ≤ n` (resp. for all `i`), the `i`-th coefficients of power series `g` are
  in ideal `I`, then for all `i ≤ n` (resp. for all `i`), the `i`-th coefficients of `f * g` are
  in `I`.

- `PowerSeries.coeff_mul_mem_ideal_of_coeff_left_mem_ideal`,
  `PowerSeries.coeff_mul_mem_ideal_of_coeff_left_mem_ideal'`:
  if for all `i ≤ n` (resp. for all `i`), the `i`-th coefficients of power series `f` are
  in ideal `I`, then for all `i ≤ n` (resp. for all `i`), the `i`-th coefficients of `f * g` are
  in `I`.

-/


namespace GRWTSK.Algebra.CoeffMulMemIdealMulIdealOfCoeffMemIdeal.Variant1b6f25a4dff03b62ffc9eff89670d3c2a009f18d0856edc257d6d309f2be26a6

namespace PowerSeries

variable {A : Type*} [Semiring A] {I J : Ideal A} {f g : A⟦X⟧} (n : ℕ)

theorem coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal (hf : ∀ i ≤ n, coeff A i f ∈ I)
    (hg : ∀ i ≤ n, coeff A i g ∈ J) : ∀ i ≤ n, coeff A i (f * g) ∈ I * J := fun i hi ↦ by
  rw [coeff_mul]
  exact Ideal.sum_mem _ fun p hp ↦ Ideal.mul_mem_mul
    (hf _ ((Finset.antidiagonal.fst_le hp).trans hi))
    (hg _ ((Finset.antidiagonal.snd_le hp).trans hi))

theorem coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal' (hf : ∀ i, coeff A i f ∈ I)
    (hg : ∀ i, coeff A i g ∈ J) : ∀ i, coeff A i (f * g) ∈ I * J :=
  fun i ↦ coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal i
    (fun i _ ↦ hf i) (fun i _ ↦ hg i) i le_rfl

theorem coeff_mul_mem_ideal_of_coeff_right_mem_ideal
    (hg : ∀ i ≤ n, coeff A i g ∈ I) : ∀ i ≤ n, coeff A i (f * g) ∈ I := by
  simpa using coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal (I := ⊤) (f := f) n (by simp) hg

theorem coeff_mul_mem_ideal_of_coeff_right_mem_ideal'
    (hg : ∀ i, coeff A i g ∈ I) : ∀ i, coeff A i (f * g) ∈ I := by
  simpa using coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal' (I := ⊤) (f := f) (by simp) hg

variable [I.IsTwoSided]

theorem coeff_mul_mem_ideal_of_coeff_left_mem_ideal
    (hf : ∀ i ≤ n, coeff A i f ∈ I) : ∀ i ≤ n, coeff A i (f * g) ∈ I := by
  simpa only [Ideal.IsTwoSided.mul_one] using
    coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal (J := 1) (g := g) n hf (by simp)

theorem coeff_mul_mem_ideal_of_coeff_left_mem_ideal'
    (hf : ∀ i, coeff A i f ∈ I) : ∀ i, coeff A i (f * g) ∈ I := by
  simpa only [Ideal.IsTwoSided.mul_one] using
    coeff_mul_mem_ideal_mul_ideal_of_coeff_mem_ideal' (J := 1) (g := g) hf (by simp)

end PowerSeries
```
