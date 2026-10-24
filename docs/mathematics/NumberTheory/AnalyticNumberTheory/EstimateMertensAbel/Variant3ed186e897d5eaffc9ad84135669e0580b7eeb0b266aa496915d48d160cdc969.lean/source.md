# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateMertensAbel.Variant3ed186e897d5eaffc9ad84135669e0580b7eeb0b266aa496915d48d160cdc969

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `216b10f4a9f3be4e5f78497c555f9aad1b1f8280` · SHA-256 `2feb4b3f38c0ea7ca578cf294439b7ee0ad85706a4b965d3d2dc5be6d2b59109`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.RealMoebius.Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.RealMoebius.Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"c9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateMertensAbel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit
import Mathlib.NumberTheory.AbelSummation

/-!
# RH estimate: closed-right Mertens Abel transport

This module formalizes the exact summation-by-parts mechanism required by the
large-divisor Möbius route.

The Mertens function is closed-right:
  M(x) = sum_{0 <= d <= floor x} mu(d).

For an arbitrary real differentiable kernel Phi on [a,b], Mathlib's Abel
summation theorem gives the exact finite identity over
  floor(a) < d <= floor(b).

Specializing to a = A^2 and b = exp(2A), and assuming only that Phi vanishes
at the strict source upper boundary, the upper endpoint disappears while the
lower endpoint remains exactly
  - M(A^2) * Phi(A^2).

No estimate for M, Phi, or the resulting signed integral is asserted here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.RealMoebius.Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel

open MeasureTheory Set
open scoped ArithmeticFunction.Moebius
open EstimateMobiusSplit

noncomputable section

/-- Real Möbius coefficient used by Abel summation. -/
def realMoebius (n : ℕ) : ℝ :=
  ((ArithmeticFunction.moebius n : ℤ) : ℝ)

@[simp]
theorem realMoebius_zero :
    realMoebius 0 = 0 := by
  simp [realMoebius, ArithmeticFunction.moebius]

/-- Closed-right Mertens sum at a real argument. -/
def mertens (x : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 0 ⌊x⌋₊, realMoebius d

/-- Closed-right Mertens sum at a natural endpoint. -/
def mertensNat (N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 0 N, realMoebius d

@[simp]
theorem mertens_natCast (N : ℕ) :
    mertens (N : ℝ) = mertensNat N := by
  simp [mertens, mertensNat]

/-- Generic closed-right Möbius Abel formula on a nonnegative real interval. -/
theorem mobius_abel
    {a b : ℝ} (ha : 0 ≤ a) (hab : a ≤ b)
    (Phi : ℝ → ℝ)
    (hPhiDiff :
      ∀ x ∈ Icc a b, DifferentiableAt ℝ Phi x)
    (hPhiInt :
      IntegrableOn (deriv Phi) (Icc a b)) :
    (∑ d ∈ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊,
      Phi d * realMoebius d) =
      Phi b * mertens b -
        Phi a * mertens a -
        ∫ x in Ioc a b,
          deriv Phi x * mertens x := by
  simpa only [mertens] using
    (sum_mul_eq_sub_sub_integral_mul
      realMoebius ha hab hPhiDiff hPhiInt)

/-- The same identity in the arithmetic order mu(d) * Phi(d). -/
theorem mobius_abel_commuted
    {a b : ℝ} (ha : 0 ≤ a) (hab : a ≤ b)
    (Phi : ℝ → ℝ)
    (hPhiDiff :
      ∀ x ∈ Icc a b, DifferentiableAt ℝ Phi x)
    (hPhiInt :
      IntegrableOn (deriv Phi) (Icc a b)) :
    (∑ d ∈ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊,
      realMoebius d * Phi d) =
      Phi b * mertens b -
        Phi a * mertens a -
        ∫ x in Ioc a b,
          mertens x * deriv Phi x := by
  have h :=
    mobius_abel ha hab Phi hPhiDiff hPhiInt
  calc
    (∑ d ∈ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊,
      realMoebius d * Phi d) =
        ∑ d ∈ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊,
          Phi d * realMoebius d := by
      apply Finset.sum_congr rfl
      intro d hd
      ring
    _ = _ := by
      rw [h]
      congr 1
      apply integral_congr_ae
      filter_upwards [] with x
      ring

/-- The exact source window for the large-divisor Abel transport. -/
def sourceLower (A : ℝ) : ℝ := A ^ 2

def sourceUpper (A : ℝ) : ℝ := Real.exp (2 * A)

/-- Mertens-kernel integral with the source sign convention. -/
def mertensKernelIntegral (A : ℝ) (Phi : ℝ → ℝ) : ℝ :=
  -(∫ x in Ioc (sourceLower A) (sourceUpper A),
      mertens x * deriv Phi x)

/-- Abel transport on the exact source interval. -/
theorem source_window_abel
    (A : ℝ) (hA : 1 ≤ A)
    (Phi : ℝ → ℝ)
    (hPhiDiff :
      ∀ x ∈ Icc (sourceLower A) (sourceUpper A),
        DifferentiableAt ℝ Phi x)
    (hPhiInt :
      IntegrableOn (deriv Phi)
        (Icc (sourceLower A) (sourceUpper A))) :
    (∑ d ∈ Finset.Ioc
        ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊,
      realMoebius d * Phi d) =
      Phi (sourceUpper A) * mertens (sourceUpper A) -
        Phi (sourceLower A) * mertens (sourceLower A) +
        mertensKernelIntegral A Phi := by
  have hLower : 0 ≤ sourceLower A := by
    unfold sourceLower
    positivity
  have hOrder :
      sourceLower A ≤ sourceUpper A := by
    unfold sourceLower sourceUpper
    have hApos : 0 < A := by linarith
    have hlog : Real.log A ≤ A - 1 :=
      Real.log_le_sub_one_of_pos hApos
    calc
      A ^ 2 =
          Real.exp (Real.log A + Real.log A) := by
        rw [Real.exp_add, Real.exp_log hApos]
      _ = Real.exp (2 * Real.log A) := by
        congr 1
        ring
      _ ≤ Real.exp (2 * A) := by
        apply Real.exp_le_exp.mpr
        linarith
  rw [mobius_abel_commuted hLower hOrder
    Phi hPhiDiff hPhiInt]
  unfold mertensKernelIntegral
  ring

/-- If the source kernel vanishes at the strict upper boundary, only the
closed-right lower endpoint remains. -/
theorem source_window_abel_of_upper_zero
    (A : ℝ) (hA : 1 ≤ A)
    (Phi : ℝ → ℝ)
    (hPhiDiff :
      ∀ x ∈ Icc (sourceLower A) (sourceUpper A),
        DifferentiableAt ℝ Phi x)
    (hPhiInt :
      IntegrableOn (deriv Phi)
        (Icc (sourceLower A) (sourceUpper A)))
    (hUpper : Phi (sourceUpper A) = 0) :
    (∑ d ∈ Finset.Ioc
        ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊,
      realMoebius d * Phi d) =
      mertensKernelIntegral A Phi -
        mertens (sourceLower A) * Phi (sourceLower A) := by
  rw [source_window_abel A hA Phi hPhiDiff hPhiInt,
    hUpper, zero_mul, zero_sub]
  ring

/-- Exact source-kernel contract needed to identify the finite large-divisor
Möbius sector with the Abel formula above.  This is a proposition, not an
assumption used by any accepted theorem in this module. -/
def SourceMobiusKernelContract (A : ℝ) (Phi : ℝ → ℝ) : Prop :=
  (∀ d : ℕ,
    d ∈ Finset.Ioc ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊ →
      Phi d =
        ∑ n ∈ primePowerInventory (2 * A),
          ∑ dk ∈ n.divisorsAntidiagonal,
            if dk.1 = d
            then Real.log dk.2 * closedPrimeWeight A n
            else 0) ∧
  (∀ x ∈ Icc (sourceLower A) (sourceUpper A),
    DifferentiableAt ℝ Phi x) ∧
  IntegrableOn (deriv Phi)
    (Icc (sourceLower A) (sourceUpper A)) ∧
  Phi (sourceUpper A) = 0

/-- Once the actual real kernel contract is discharged, its Möbius sum has the
exact archived endpoint-plus-Mertens-integral form. -/
theorem abel_identity_of_source_kernel_contract
    (A : ℝ) (hA : 1 ≤ A)
    (Phi : ℝ → ℝ)
    (hPhi : SourceMobiusKernelContract A Phi) :
    (∑ d ∈ Finset.Ioc
        ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊,
      realMoebius d * Phi d) =
      mertensKernelIntegral A Phi -
        mertens (sourceLower A) * Phi (sourceLower A) := by
  exact source_window_abel_of_upper_zero
    A hA Phi hPhi.2.1 hPhi.2.2.1 hPhi.2.2.2

/-- Current Abel checkpoint: the closed-right endpoint algebra is complete;
the next source-specific task is exactly the real-kernel contract above. -/
def MertensAbelCheckpoint : Prop :=
  ∀ A : ℝ, 1 ≤ A →
    ∀ Phi : ℝ → ℝ,
      SourceMobiusKernelContract A Phi →
        (∑ d ∈ Finset.Ioc
            ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊,
          realMoebius d * Phi d) =
          mertensKernelIntegral A Phi -
            mertens (sourceLower A) * Phi (sourceLower A)

theorem mertens_abel_checkpoint :
    MertensAbelCheckpoint :=
  abel_identity_of_source_kernel_contract

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel
```
