# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Pi.Variant91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a84b5a464423294b59a3a504171c295a97a42a2` · SHA-256 `91c8cccb4221581daf76f04d8eb2998a8f95ab262d16a0dbf21edcd21149c42c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot
-/
import Mathlib.MeasureTheory.Constructions.Pi
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Integration with respect to a finite product of measures

On a finite product of measure spaces, we show that a product of integrable functions each
depending on a single coordinate is integrable, in `MeasureTheory.integrable_fintype_prod`, and
that its integral is the product of the individual integrals,
in `MeasureTheory.integral_fintype_prod_eq_prod`.
-/

open Fintype MeasureTheory MeasureTheory.Measure

namespace MeasureTheory

namespace Integrable

variable {𝕜 : Type*} [NormedCommRing 𝕜]

/-- On a finite product space in `n` variables, for a natural number `n`, a product of integrable
functions depending on each coordinate is integrable. -/
theorem fin_nat_prod {n : ℕ} {E : Fin n → Type*}
    [∀ i, MeasureSpace (E i)] [∀ i, SigmaFinite (volume : Measure (E i))]
    {f : (i : Fin n) → E i → 𝕜} (hf : ∀ i, Integrable (f i)) :
    Integrable (fun (x : (i : Fin n) → E i) ↦ ∏ i, f i (x i)) := by
  induction n with
  | zero => simp only [Finset.univ_eq_empty, Finset.prod_empty, volume_pi, isFiniteMeasure_iff,
      integrable_const_iff, one_ne_zero, pi_empty_univ, ENNReal.one_lt_top, or_true]
  | succ n n_ih =>
      have := ((measurePreserving_piFinSuccAbove (fun i => (volume : Measure (E i))) 0).symm)
      rw [volume_pi, ← this.integrable_comp_emb (MeasurableEquiv.measurableEmbedding _)]
      simp_rw [MeasurableEquiv.piFinSuccAbove_symm_apply, Fin.insertNthEquiv,
        Fin.prod_univ_succ, Fin.insertNth_zero]
      simp only [Fin.zero_succAbove, cast_eq, Function.comp_def, Fin.cons_zero, Fin.cons_succ]
      have : Integrable (fun (x : (j : Fin n) → E (Fin.succ j)) ↦ ∏ j, f (Fin.succ j) (x j)) :=
        n_ih (fun i ↦ hf _)
      exact Integrable.mul_prod (hf 0) this

/-- On a finite product space, a product of integrable functions depending on each coordinate is
integrable. Version with dependent target. -/
theorem fintype_prod_dep {ι : Type*} [Fintype ι] {E : ι → Type*}
    {f : (i : ι) → E i → 𝕜} [∀ i, MeasureSpace (E i)] [∀ i, SigmaFinite (volume : Measure (E i))]
    (hf : ∀ i, Integrable (f i)) :
    Integrable (fun (x : (i : ι) → E i) ↦ ∏ i, f i (x i)) := by
  let e := (equivFin ι).symm
  simp_rw [← (volume_measurePreserving_piCongrLeft _ e).integrable_comp_emb
    (MeasurableEquiv.measurableEmbedding _),
    ← e.prod_comp, MeasurableEquiv.coe_piCongrLeft, Function.comp_def,
    Equiv.piCongrLeft_apply_apply]
  exact .fin_nat_prod (fun i ↦ hf _)

/-- On a finite product space, a product of integrable functions depending on each coordinate is
integrable. -/
theorem fintype_prod {ι : Type*} [Fintype ι] {E : Type*}
    {f : ι → E → 𝕜} [MeasureSpace E] [SigmaFinite (volume : Measure E)]
    (hf : ∀ i, Integrable (f i)) :
    Integrable (fun (x : ι → E) ↦ ∏ i, f i (x i)) :=
  Integrable.fintype_prod_dep hf

end Integrable

variable {𝕜 : Type*} [RCLike 𝕜]

/-- A version of **Fubini's theorem** in `n` variables, for a natural number `n`. -/
theorem integral_fin_nat_prod_eq_prod {n : ℕ} {E : Fin n → Type*}
    [∀ i, MeasureSpace (E i)] [∀ i, SigmaFinite (volume : Measure (E i))]
    (f : (i : Fin n) → E i → 𝕜) :
    ∫ x : (i : Fin n) → E i, ∏ i, f i (x i) = ∏ i, ∫ x, f i x := by
  induction n with
  | zero =>
      simp [volume_pi, measureReal_def]
  | succ n n_ih =>
      calc
        _ = ∫ x : E 0 × ((i : Fin n) → E (Fin.succ i)),
            f 0 x.1 * ∏ i : Fin n, f (Fin.succ i) (x.2 i) := by
          rw [volume_pi, ← ((measurePreserving_piFinSuccAbove
            (fun i => (volume : Measure (E i))) 0).symm).integral_comp']
          simp_rw [MeasurableEquiv.piFinSuccAbove_symm_apply, Fin.insertNthEquiv,
            Fin.prod_univ_succ, Fin.insertNth_zero, Equiv.coe_fn_mk, Fin.cons_succ, volume_eq_prod,
            volume_pi, Fin.zero_succAbove, cast_eq, Fin.cons_zero]
        _ = (∫ x, f 0 x) * ∏ i : Fin n, ∫ (x : E (Fin.succ i)), f (Fin.succ i) x := by
          rw [← n_ih, ← integral_prod_mul, volume_eq_prod]
        _ = ∏ i, ∫ x, f i x := by rw [Fin.prod_univ_succ]

/-- A version of **Fubini's theorem** with the variables indexed by a general finite type. -/
theorem integral_fintype_prod_eq_prod (ι : Type*) [Fintype ι] {E : ι → Type*}
    (f : (i : ι) → E i → 𝕜) [∀ i, MeasureSpace (E i)] [∀ i, SigmaFinite (volume : Measure (E i))] :
    ∫ x : (i : ι) → E i, ∏ i, f i (x i) = ∏ i, ∫ x, f i x := by
  let e := (equivFin ι).symm
  rw [← (volume_measurePreserving_piCongrLeft _ e).integral_comp']
  simp_rw [← e.prod_comp, MeasurableEquiv.coe_piCongrLeft, Equiv.piCongrLeft_apply_apply,
    MeasureTheory.integral_fin_nat_prod_eq_prod]

theorem integral_fintype_prod_eq_pow {E : Type*} (ι : Type*) [Fintype ι] (f : E → 𝕜)
    [MeasureSpace E] [SigmaFinite (volume : Measure E)] :
    ∫ x : ι → E, ∏ i, f (x i) = (∫ x, f x) ^ (card ι) := by
  rw [integral_fintype_prod_eq_prod, Finset.prod_const, card]

end MeasureTheory
```
