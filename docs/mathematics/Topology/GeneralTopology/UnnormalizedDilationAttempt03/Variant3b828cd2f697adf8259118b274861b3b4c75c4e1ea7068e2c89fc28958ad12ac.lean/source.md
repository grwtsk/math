# Complete source: GRWTSK.Topology.GeneralTopology.UnnormalizedDilationAttempt03.Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e413926285646651a15a4be4c6be333e54ca86bc` · SHA-256 `3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualComplexDilation
import Mathlib.Topology.Algebra.Module.ClosedSubmodule

/-! Literal unnormalized positive dilation and honest normalization transport.
Research direction grwtsk contributors; focused scratch proof OpenAI Codex.
No integer density, target membership or actual arithmetic correspondence. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.UnnormalizedDilation
open MeasureTheory Set
open ContinuousResearch.PositiveDilation ContinuousResearch.ActualComplexDilation

def unnormalizedFunc (a : ℝ) (f : ℝ → ℂ) (x : ℝ) : ℂ := f (a*x)

theorem unnormalizedFunc_memLp {a : ℝ} (ha : 0 < a) {f : ℝ → ℂ}
    (hf : MemLp f 2 positiveMeasure) : MemLp (unnormalizedFunc a f) 2 positiveMeasure := by
  have hg : MemLp f 2 (positiveMeasure.map (a*·)) := by
    rw [positiveMeasure_map_mul ha]
    exact hf.smul_measure (by simp)
  exact hg.comp_of_map (measurable_const_mul a).aemeasurable

def unnormalized (a : ℝ) (ha : 0 < a) (f : PositiveL2) : PositiveL2 :=
  (unnormalizedFunc_memLp ha (Lp.memLp f)).toLp (unnormalizedFunc a f)

theorem unnormalized_ae (a : ℝ) (ha : 0 < a) (f : PositiveL2) :
    unnormalized a ha f =ᵐ[positiveMeasure] unnormalizedFunc a f :=
  (unnormalizedFunc_memLp ha (Lp.memLp f)).coeFn_toLp

theorem dilate_eq_sqrt_smul (a : ℝ) (ha : 0 < a) (f : PositiveL2) :
    dilate a ha f = (Real.sqrt a : ℂ) • unnormalized a ha f := by
  apply Lp.ext
  filter_upwards [dilate_ae a ha f,unnormalized_ae a ha f,
    Lp.coeFn_smul (Real.sqrt a : ℂ) (unnormalized a ha f)] with x hd hk hs
  dsimp only [Pi.smul_apply] at hs
  rw [hd,hs,hk]
  rfl

theorem unnormalized_eq_inv_sqrt_smul (a : ℝ) (ha : 0 < a) (f : PositiveL2) :
    unnormalized a ha f = (Real.sqrt a : ℂ)⁻¹ • dilate a ha f := by
  rw [dilate_eq_sqrt_smul,smul_smul,inv_mul_cancel₀
    (Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr ha).ne'),one_smul]

theorem unnormalized_norm (a : ℝ) (ha : 0 < a) (f : PositiveL2) :
    ‖unnormalized a ha f‖ = (Real.sqrt a)⁻¹ * ‖f‖ := by
  rw [unnormalized_eq_inv_sqrt_smul,norm_smul,norm_inv,dilate_norm]
  simp only [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg (Real.sqrt_nonneg a)]

theorem span_range_eq {ι : Type*} (a : ι → ℝ) (ha : ∀ i, 0 < a i) (f : PositiveL2) :
    Submodule.span ℂ (range (fun i => unnormalized (a i) (ha i) f)) =
      Submodule.span ℂ (range (fun i => dilate (a i) (ha i) f)) := by
  apply le_antisymm
  · apply Submodule.span_le.mpr
    rintro _ ⟨i,rfl⟩
    dsimp only
    rw [unnormalized_eq_inv_sqrt_smul]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i,rfl⟩)
  · apply Submodule.span_le.mpr
    rintro _ ⟨i,rfl⟩
    dsimp only
    rw [dilate_eq_sqrt_smul]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i,rfl⟩)

theorem closure_span_range_eq {ι : Type*} (a : ι → ℝ) (ha : ∀ i, 0 < a i) (f : PositiveL2) :
    (Submodule.span ℂ (range (fun i => unnormalized (a i) (ha i) f))).topologicalClosure =
      (Submodule.span ℂ (range (fun i => dilate (a i) (ha i) f))).topologicalClosure := by
  rw [span_range_eq]

def actualIntegerOrbit (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) : PositiveL2 :=
  unnormalized (n.val : ℝ) (by exact_mod_cast n.property) (actualComplexL2 A hA)

theorem actualIntegerOrbit_ae (A : ℝ) (hA : 1 ≤ A) (n : {n : ℕ // 0 < n}) :
    actualIntegerOrbit A hA n =ᵐ[positiveMeasure]
      (fun x => actualComplexOperator A ((n.val : ℝ)*x)) := by
  filter_upwards [unnormalized_ae (n.val : ℝ) (by exact_mod_cast n.property)
      (actualComplexL2 A hA),
    (positive_mul_quasi (by exact_mod_cast n.property : 0 < (n.val:ℝ))).ae_eq_comp
      (actualComplexL2_ae A hA)] with x hk hp
  exact hk.trans hp

theorem actual_integer_span_eq (A : ℝ) (hA : 1 ≤ A) :
    Submodule.span ℂ (range (actualIntegerOrbit A hA)) =
      Submodule.span ℂ (range (integerOrbit A hA)) :=
  span_range_eq (fun n : {n : ℕ // 0 < n} => (n.val : ℝ))
    (fun n => by exact_mod_cast n.property) (actualComplexL2 A hA)

theorem actual_integer_closure_eq (A : ℝ) (hA : 1 ≤ A) :
    (Submodule.span ℂ (range (actualIntegerOrbit A hA))).topologicalClosure =
      (Submodule.span ℂ (range (integerOrbit A hA))).topologicalClosure := by
  rw [actual_integer_span_eq]

theorem actual_continuous_closure_eq (A : ℝ) (hA : 1 ≤ A) :
    (Submodule.span ℂ (range (fun a : {a : ℝ // 0 < a} =>
      unnormalized a.val a.property (actualComplexL2 A hA)))).topologicalClosure =
    (Submodule.span ℂ (range (fun a : {a : ℝ // 0 < a} =>
      dilate a.val a.property (actualComplexL2 A hA)))).topologicalClosure :=
  closure_span_range_eq (fun a : {a : ℝ // 0 < a} => a.val)
    (fun a => a.property) (actualComplexL2 A hA)

end ContinuousResearch.UnnormalizedDilation

/- Complete public type, proof and transitive trusted closure audits. -/

#check ContinuousResearch.UnnormalizedDilation.unnormalizedFunc
#print axioms ContinuousResearch.UnnormalizedDilation.unnormalizedFunc
#print ContinuousResearch.UnnormalizedDilation.unnormalizedFunc

#check ContinuousResearch.UnnormalizedDilation.unnormalizedFunc_memLp
#print axioms ContinuousResearch.UnnormalizedDilation.unnormalizedFunc_memLp
#print ContinuousResearch.UnnormalizedDilation.unnormalizedFunc_memLp

#check ContinuousResearch.UnnormalizedDilation.unnormalized
#print axioms ContinuousResearch.UnnormalizedDilation.unnormalized
#print ContinuousResearch.UnnormalizedDilation.unnormalized

#check ContinuousResearch.UnnormalizedDilation.unnormalized_ae
#print axioms ContinuousResearch.UnnormalizedDilation.unnormalized_ae
#print ContinuousResearch.UnnormalizedDilation.unnormalized_ae

#check ContinuousResearch.UnnormalizedDilation.dilate_eq_sqrt_smul
#print axioms ContinuousResearch.UnnormalizedDilation.dilate_eq_sqrt_smul
#print ContinuousResearch.UnnormalizedDilation.dilate_eq_sqrt_smul

#check ContinuousResearch.UnnormalizedDilation.unnormalized_eq_inv_sqrt_smul
#print axioms ContinuousResearch.UnnormalizedDilation.unnormalized_eq_inv_sqrt_smul
#print ContinuousResearch.UnnormalizedDilation.unnormalized_eq_inv_sqrt_smul

#check ContinuousResearch.UnnormalizedDilation.unnormalized_norm
#print axioms ContinuousResearch.UnnormalizedDilation.unnormalized_norm
#print ContinuousResearch.UnnormalizedDilation.unnormalized_norm

#check ContinuousResearch.UnnormalizedDilation.span_range_eq
#print axioms ContinuousResearch.UnnormalizedDilation.span_range_eq
#print ContinuousResearch.UnnormalizedDilation.span_range_eq

#check ContinuousResearch.UnnormalizedDilation.closure_span_range_eq
#print axioms ContinuousResearch.UnnormalizedDilation.closure_span_range_eq
#print ContinuousResearch.UnnormalizedDilation.closure_span_range_eq

#check ContinuousResearch.UnnormalizedDilation.actualIntegerOrbit
#print axioms ContinuousResearch.UnnormalizedDilation.actualIntegerOrbit
#print ContinuousResearch.UnnormalizedDilation.actualIntegerOrbit

#check ContinuousResearch.UnnormalizedDilation.actualIntegerOrbit_ae
#print axioms ContinuousResearch.UnnormalizedDilation.actualIntegerOrbit_ae
#print ContinuousResearch.UnnormalizedDilation.actualIntegerOrbit_ae

#check ContinuousResearch.UnnormalizedDilation.actual_integer_span_eq
#print axioms ContinuousResearch.UnnormalizedDilation.actual_integer_span_eq
#print ContinuousResearch.UnnormalizedDilation.actual_integer_span_eq

#check ContinuousResearch.UnnormalizedDilation.actual_integer_closure_eq
#print axioms ContinuousResearch.UnnormalizedDilation.actual_integer_closure_eq
#print ContinuousResearch.UnnormalizedDilation.actual_integer_closure_eq

#check ContinuousResearch.UnnormalizedDilation.actual_continuous_closure_eq
#print axioms ContinuousResearch.UnnormalizedDilation.actual_continuous_closure_eq
#print ContinuousResearch.UnnormalizedDilation.actual_continuous_closure_eq
```
