# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Diagnostic.Variantd402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `016931a51027ffd12444349cb66c690eaaf5d594` · SHA-256 `d402f78a2b8721f540135a7538c7b1c7e6e317ed75bad34a73656d816ad153ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.ProdL2
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.Calculus
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.Calculus.Deriv.Add

/-!
# Compensated signed Hilbert readout and exact work

The real quadratic readout retains an independent scalar compensation.
The jump and local work identities are exact; applying them to the arithmetic
source requires the actual state evolution and a separate signed work budget.
An isometry preserves the norm without preserving an arbitrary signed readout.

AI attribution: developed with OpenAI Codex; proof terms are checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.CompensatedReadout

open scoped InnerProductSpace

noncomputable section

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

/-- The Hilbert direct sum uses the square-sum norm, not the product maximum norm. -/
abbrev PairState (H : Type*) := WithLp 2 (H × H)

/-- The two literal state channels as a Hilbert direct-sum vector. -/
def pairState (f g : H) : PairState H := WithLp.toLp 2 (f, g)

/-- The two-channel swap is a genuine linear isometry on the Hilbert product. -/
def pairSwap : PairState H ≃ₗᵢ[ℂ] PairState H where
  toLinearEquiv := (WithLp.linearEquiv 2 ℂ (H × H)).trans
    ((LinearEquiv.prodComm ℂ H H).trans (WithLp.linearEquiv 2 ℂ (H × H)).symm)
  norm_map' x := by
    apply (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).1
    simp only [WithLp.prod_norm_sq_eq_of_L2]
    change ‖x.snd‖ ^ 2 + ‖x.fst‖ ^ 2 = ‖x.fst‖ ^ 2 + ‖x.snd‖ ^ 2
    ring

/-- Swapping the explicit channels fixes the multiplication convention. -/
theorem pairSwap_pairState (f g : H) : pairSwap (pairState f g) = pairState g f := rfl

/-- Swapping twice returns the literal state. -/
theorem pairSwap_involutive (z : PairState H) : pairSwap (pairSwap z) = z := rfl

/-- The signed readout operator is one half of the channel swap. -/
def interactionOperator : PairState H →L[ℂ] PairState H :=
  (1 / 2 : ℂ) • pairSwap.toContinuousLinearEquiv.toContinuousLinearMap

/-- The readout operator retains its exact channel action. -/
theorem interactionOperator_pairState (f g : H) :
    interactionOperator (pairState f g) = pairState ((1 / 2 : ℂ) • g) ((1 / 2 : ℂ) • f) :=
  rfl

/-- The signed operator is self-adjoint, independent of arithmetic assumptions. -/
theorem interactionOperator_selfAdjoint [CompleteSpace H] :
    IsSelfAdjoint (interactionOperator (H := H)) := by
  apply ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.2
  intro x y
  change ⟪(1 / 2 : ℂ) • pairSwap x, y⟫_ℂ =
    ⟪x, (1 / 2 : ℂ) • pairSwap y⟫_ℂ
  simp only [inner_smul_left, inner_smul_right, WithLp.prod_inner_apply]
  change (star (1 / 2 : ℂ)) * (⟪x.snd, y.fst⟫_ℂ + ⟪x.fst, y.snd⟫_ℂ) =
    (1 / 2 : ℂ) * (⟪x.fst, y.snd⟫_ℂ + ⟪x.snd, y.fst⟫_ℂ)
  simp
  ring

/-- The real quadratic value of a bounded operator on its actual state. -/
def quadraticReadout (K : H →L[ℂ] H) (z : H) : ℝ := (⟪z, K z⟫_ℂ).re

/-- Compensation remains an independent signed scalar channel. -/
def compensatedReadout (K : H →L[ℂ] H) (z : H) (c : ℝ) : ℝ :=
  quadraticReadout K z + c

/-- The swap readout equals the real joint interaction with exact factor one. -/
theorem interactionOperator_readout (f g : H) :
    quadraticReadout interactionOperator (pairState f g) = (⟪f, g⟫_ℂ).re := by
  rw [quadraticReadout, interactionOperator_pairState]
  simp only [WithLp.prod_inner_apply, pairState, inner_smul_right,
    Complex.add_re, Complex.mul_re, Complex.div_re, Complex.one_re, Complex.one_im]
  have hc : (⟪g, f⟫_ℂ).re = (⟪f, g⟫_ℂ).re := by
    rw [← inner_conj_symm f g]
    rfl
  simp only [hc]
  norm_num
  ring

/-- Subtracting readout operators keeps the common state inside the signed expression. -/
theorem quadraticReadout_sub (K L : H →L[ℂ] H) (z : H) :
    quadraticReadout (K - L) z = quadraticReadout K z - quadraticReadout L z := by
  simp [quadraticReadout, inner_sub_right]

/-- Self-adjointness makes the two cross terms equal after taking real parts. -/
theorem real_cross_selfAdjoint [CompleteSpace H] (K : H →L[ℂ] H)
    (hK : IsSelfAdjoint K) (x y : H) :
    (⟪y, K x⟫_ℂ).re = (⟪x, K y⟫_ℂ).re := by
  have hs := hK.isSymmetric x y
  change ⟪K x, y⟫_ℂ = ⟪x, K y⟫_ℂ at hs
  rw [← hs, ← inner_conj_symm (K x) y]
  rfl

/-- Exact quadratic addition preserves the signed cross interaction. -/
theorem quadraticReadout_add [CompleteSpace H] (K : H →L[ℂ] H)
    (hK : IsSelfAdjoint K) (x y : H) :
    quadraticReadout K (x + y) = quadraticReadout K x +
      2 * (⟪x, K y⟫_ℂ).re + quadraticReadout K y := by
  simp only [quadraticReadout, map_add, inner_add_left, inner_add_right, Complex.add_re]
  rw [real_cross_selfAdjoint K hK x y]
  ring

/-- An adjoint pullback records the actual comparison map, without assuming isometry. -/
theorem quadraticReadout_pullback [CompleteSpace H] (K U : H →L[ℂ] H) (z : H) :
    quadraticReadout K (U z) = quadraticReadout (U.adjoint ∘L K ∘L U) z := by
  unfold quadraticReadout
  simp only [ContinuousLinearMap.comp_apply]
  rw [ContinuousLinearMap.adjoint_inner_right]

/-- The full jump keeps observable transport, both cross terms and scalar compensation. -/
theorem compensatedReadout_jump [CompleteSpace H]
    (Kplus Kminus U : H →L[ℂ] H) (hK : IsSelfAdjoint Kplus)
    (z h : H) (cplus cminus : ℝ) :
    compensatedReadout Kplus (U z + h) cplus - compensatedReadout Kminus z cminus =
      quadraticReadout (U.adjoint ∘L Kplus ∘L U - Kminus) z +
      2 * (⟪U z, Kplus h⟫_ℂ).re + quadraticReadout Kplus h + cplus - cminus := by
  unfold compensatedReadout
  rw [quadraticReadout_add Kplus hK, quadraticReadout_pullback, quadraticReadout_sub]
  ring

/-- Identity comparison is valid, but its exact increment is still fully signed. -/
theorem compensatedReadout_identity_jump [CompleteSpace H]
    (K : H →L[ℂ] H) (hK : IsSelfAdjoint K)
    (z h : H) (cplus cminus : ℝ) :
    compensatedReadout K (z + h) cplus - compensatedReadout K z cminus =
      2 * (⟪z, K h⟫_ℂ).re + quadraticReadout K h + cplus - cminus := by
  unfold compensatedReadout
  rw [quadraticReadout_add K hK]
  ring

/-- The observable commutator has the convention KΩ−ΩK. -/
def observableCommutator (K Ω : H →L[ℂ] H) : H →L[ℂ] H := K ∘L Ω - Ω ∘L K

/-- Exact skew-generator algebra retains the observable commutator contribution. -/
theorem signed_work_algebra [CompleteSpace H]
    (K Kprime Ω : H →L[ℂ] H) (hK : IsSelfAdjoint K)
    (hΩ : Ω.adjoint = -Ω) (z f : H) :
    (⟪z, Kprime z + K (Ω z + f)⟫_ℂ + ⟪Ω z + f, K z⟫_ℂ).re =
      quadraticReadout (Kprime + observableCommutator K Ω) z +
        2 * (⟪z, K f⟫_ℂ).re := by
  have hs : ⟪Ω z, K z⟫_ℂ = -⟪z, Ω (K z)⟫_ℂ := by
    rw [← ContinuousLinearMap.adjoint_inner_right, hΩ]
    simp
  simp only [map_add, inner_add_right, inner_add_left, Complex.add_re]
  rw [hs, Complex.neg_re, real_cross_selfAdjoint K hK z f]
  simp only [quadraticReadout, observableCommutator, add_apply,
    sub_apply, ContinuousLinearMap.comp_apply, inner_add_right,
    inner_sub_right, Complex.add_re, Complex.sub_re]
  ring

/-- Local differentiation of the full compensated observable requires all three derivatives. -/
theorem compensatedReadout_hasDerivAt
    (z : ℝ → H) (K : ℝ → H →L[ℂ] H) (c : ℝ → ℝ)
    (a : ℝ) (zprime : H) (Kprime : H →L[ℂ] H) (cprime : ℝ)
    (hz : HasDerivAt z zprime a) (hK : HasDerivAt K Kprime a)
    (hc : HasDerivAt c cprime a) :
    HasDerivAt (fun s => compensatedReadout (K s) (z s) (c s))
      ((⟪z a, Kprime (z a) + K a zprime⟫_ℂ + ⟪zprime, K a (z a)⟫_ℂ).re + cprime) a := by
  have hKr : HasDerivAt (fun s => (K s).restrictScalars ℝ)
      (Kprime.restrictScalars ℝ) a :=
    (ContinuousLinearMap.restrictScalarsL ℂ H H ℝ ℝ).hasFDerivAt.comp_hasDerivAt a hK
  have hv : HasDerivAt (fun s => K s (z s)) (Kprime (z a) + K a zprime) a :=
    hKr.clm_apply hz
  have hi := hz.inner ℂ hv
  have hr : HasDerivAt (fun s => (⟪z s, K s (z s)⟫_ℂ).re)
      (⟪z a, Kprime (z a) + K a zprime⟫_ℂ + ⟪zprime, K a (z a)⟫_ℂ).re a :=
    Complex.reCLM.hasFDerivAt.comp_hasDerivAt a hi
  exact HasDerivAt.add hr hc

/-- A proved skew evolution gives the exact local signed work, including K′+[K,Ω]. -/
theorem compensatedReadout_hasDerivAt_of_skew [CompleteSpace H]
    (z : ℝ → H) (K : ℝ → H →L[ℂ] H) (c : ℝ → ℝ)
    (a : ℝ) (Ω Kprime : H →L[ℂ] H) (f : H) (cprime : ℝ)
    (hz : HasDerivAt z (Ω (z a) + f) a) (hK : HasDerivAt K Kprime a)
    (hc : HasDerivAt c cprime a) (hKs : IsSelfAdjoint (K a))
    (hΩ : Ω.adjoint = -Ω) :
    HasDerivAt (fun s => compensatedReadout (K s) (z s) (c s))
      (quadraticReadout (Kprime + observableCommutator (K a) Ω) (z a) +
        2 * (⟪z a, K a f⟫_ℂ).re + cprime) a := by
  convert compensatedReadout_hasDerivAt z K c a (Ω (z a) + f) Kprime cprime hz hK hc
    using 1
  rw [signed_work_algebra (K a) Kprime Ω hKs hΩ]

/-- Observable transport cancellation is an additional checked equality. -/
theorem compensatedReadout_hasDerivAt_of_cancelled_work [CompleteSpace H]
    (z : ℝ → H) (K : ℝ → H →L[ℂ] H) (c : ℝ → ℝ)
    (a : ℝ) (Ω Kprime : H →L[ℂ] H) (f : H) (cprime : ℝ)
    (hz : HasDerivAt z (Ω (z a) + f) a) (hK : HasDerivAt K Kprime a)
    (hc : HasDerivAt c cprime a) (hKs : IsSelfAdjoint (K a))
    (hΩ : Ω.adjoint = -Ω) (hcancel : Kprime + observableCommutator (K a) Ω = 0) :
    HasDerivAt (fun s => compensatedReadout (K s) (z s) (c s))
      (2 * (⟪z a, K a f⟫_ℂ).re + cprime) a := by
  have h := compensatedReadout_hasDerivAt_of_skew z K c a Ω Kprime f cprime
    hz hK hc hKs hΩ
  simpa only [hcancel, quadraticReadout, zero_apply,
    inner_zero_right, Complex.zero_re, zero_add] using h

/-- The generic signature observable distinguishes the two norm-square channels. -/
def signatureOperator : PairState H →L[ℂ] PairState H :=
  (WithLp.prodContinuousLinearEquiv 2 ℂ H H).symm.toContinuousLinearMap ∘L
    (ContinuousLinearMap.id ℂ H).prodMap (-ContinuousLinearMap.id ℂ H) ∘L
    (WithLp.prodContinuousLinearEquiv 2 ℂ H H).toContinuousLinearMap

/-- The signature operator has diagonal entries +I and −I. -/
theorem signatureOperator_pairState (f g : H) :
    signatureOperator (pairState f g) = pairState f (-g) := rfl

/-- The signature readout is a signed norm-square difference. -/
set_option pp.all true in
theorem signatureOperator_readout (f g : H) :
    quadraticReadout signatureOperator (pairState f g) = ‖f‖ ^ 2 - ‖g‖ ^ 2 := by
  rw [quadraticReadout, signatureOperator_pairState]
  simp only [WithLp.prod_inner_apply, pairState, inner_neg_right, Complex.add_re,
    Complex.neg_re, inner_self_eq_norm_sq_to_K]
  trace_state
  fail


end
end FormalResearch.RiemannHypothesis.CompensatedReadout
```
