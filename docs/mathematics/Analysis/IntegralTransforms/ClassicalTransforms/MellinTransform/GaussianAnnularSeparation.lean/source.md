# Complete source: GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b0aecaada254d4b9f2409f9780320169bbf0fc2` · SHA-256 `c0d6de29811a53222a5f1ca676eb8fc35fb6fd5e78bcfd7e34ed275b7164b293`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Actual annular logarithmic-quotient Gaussian separation.
Adapted from OpenAI math, project author OpenAI, Apache-2.0, commit
1581d4cbdd69a0faf34b2089614fe2a814316a6a,
lean/OAI/NumberTheory/DirichletL/Detector/GaussianSlots.lean,
SHA256 fcf0dc45845a9cde9f15d3277b659811a20223d23b6277a193a42efc1dca1a09,
Git blob bf4e39205b30ae0e8a894b42b6aa4126aac26dbe.
The local logPhaseTwist is the explicit scalar W(x)*positivePhase(t,log x).
The rootWeight identity retains the source sqrt factor and exact 2*pi phase.
Mathlib/local Gaussian, annulus, square-root and Fourier notices remain retained,
including Sébastien Gouëzel, Yury Kudryashov, Moritz Doll, David Loeffler,
Chris Birkbeck, Ruben Van de Velde and the other imported individual authors.
Released under Apache-2.0 as described in LICENSE.
Mathematical direction: grwtsk contributors; formal implementation: OpenAI Codex.
No corrected ideal sum, completed physical row, Hecke/calibration or RH theorem is inferred.
-/
import GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation
import GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms

namespace GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation
noncomputable section
open scoped Classical ContDiff FourierTransform SchwartzMap
open MeasureTheory
open GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus
open GRWTSK.Analysis.MellinTransform.NormalizedGaussian
open GRWTSK.Analysis.MellinTransform.CompactGaussianWindow
open GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms
open GRWTSK.Analysis.MellinTransform.GaussianLogWindow
open GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation

noncomputable def gaussianSlotWindow {ι : Type*} (W : ι→ℝ→ℂ) : Option ι→ℝ→ℂ
  | none => fun y=>dyadicAnnulus (Real.exp y)
  | some i => fun y=>W i (Real.exp y)
noncomputable def gaussianSlotSlope {ι : Type*} : Option ι→ℝ
  | none => 1
  | some _ => -1
noncomputable def gaussianSlotPoint {ι : Type*} (x : ℝ) (q : ι→ℝ) : Option ι→ℝ
  | none => Real.log x
  | some i => Real.log (q i)

/-- Actual multiplicative quotient, with every exp(log) positivity premise explicit. -/
lemma gaussianSlot_argument {ι : Type*} [Fintype ι] (x : ℝ) (hx : 0<x)
    (q : ι→ℝ) (hq : ∀i,0<q i) :
    Real.exp (∑i : Option ι,gaussianSlotSlope i*gaussianSlotPoint x q i)=x/(∏i : ι,q i) := by
  simp only [Fintype.sum_option,gaussianSlotSlope,gaussianSlotPoint,one_mul,neg_one_mul]
  rw [Real.exp_add,Real.exp_sum,Real.exp_log hx]
  simp_rw [Real.exp_neg,Real.exp_log (hq _)]
  rw [Finset.prod_inv_distrib]
  rfl

lemma logPhase_neg_argument (t y : ℝ) : logPhase t (-y)=logPhase (-t) y := by
  unfold logPhase
  congr 1
  push_cast
  ring

lemma gaussianSlot_product {ι : Type*} [Fintype ι] (W : ι→ℝ→ℂ)
    (x : ℝ) (hx : 0<x) (q : ι→ℝ) (hq : ∀i,0<q i) (t : ℝ) :
    (∏i : Option ι,gaussianSlotWindow W i (gaussianSlotPoint x q i)*
      logPhase t (gaussianSlotSlope i*gaussianSlotPoint x q i))=
      dyadicAnnulus x*logPhase t (Real.log x)*
        ∏i : ι,W i (q i)*logPhase (-t) (Real.log (q i)) := by
  simp only [Fintype.prod_option,gaussianSlotWindow,gaussianSlotPoint,gaussianSlotSlope,
    one_mul,neg_one_mul,Real.exp_log hx,logPhase_neg_argument]
  simp_rw [Real.exp_log (hq _)]

/-- The actual logarithmic twist, as a total function on the real line. -/
noncomputable def logPhaseTwist (W : ℝ→ℂ) (t x : ℝ) : ℂ := W x*logPhase t (Real.log x)

lemma logPhaseTwist_compact (W : ℝ→ℂ) (hW : HasCompactSupport W) (t : ℝ) :
    HasCompactSupport (logPhaseTwist W t) := hW.mul_right

/-- Positive-x sqrt cancellation for the accepted fixed window A/sqrt. -/
lemma gaussianFixedWindow_rootWeight_twist (t x : ℝ) (hx : 0<x) :
    rootWeight (logPhaseTwist gaussianFixedWindow t) x=
      dyadicAnnulus x*logPhase t (Real.log x) := by
  have hs : (Real.sqrt x:ℂ)≠0 := Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr hx).ne'
  unfold rootWeight logPhaseTwist gaussianFixedWindow
  field_simp

lemma gaussianFixedWindow_twist_compact (t : ℝ) :
    HasCompactSupport (logPhaseTwist gaussianFixedWindow t) :=
  logPhaseTwist_compact gaussianFixedWindow gaussianFixedWindow_compact t

/-- The extra annulus slot has an actual bounded logarithmic support. -/
lemma dyadicAnnulus_log_support (y : ℝ) (hy : dyadicAnnulus (Real.exp y)≠0) :
    |y|≤|Real.log (1/2)|+|Real.log 2|+1 := by
  have hlo : (1/2:ℝ)<Real.exp y := by
    by_contra h
    exact hy (dyadicAnnulus_small _ (le_of_not_gt h))
  have hhi : Real.exp y<2 := by
    by_contra h
    exact hy (dyadicAnnulus_large _ (le_of_not_gt h))
  have hl : Real.log (1/2)≤y := by
    simpa using Real.log_le_log (by norm_num : (0:ℝ)<1/2) hlo.le
  have hh : y≤Real.log 2 := by
    simpa using Real.log_le_log (Real.exp_pos y) hhi.le
  rw [abs_le]
  constructor
  · have := neg_abs_le (Real.log (1/2))
    have := abs_nonneg (Real.log 2)
    linarith
  · have := le_abs_self (Real.log 2)
    have := abs_nonneg (Real.log (1/2))
    linarith

/-- Actual frequency integrability, including before imposing positive R. -/
lemma gaussian_annular_integrable {ι : Type*} [Fintype ι]
    (W : ι→ℝ→ℂ) (V : SchwartzMap ℝ ℂ) (hV : HasCompactSupport (V:ℝ→ℂ))
    (R x : ℝ) (hx : 0<x) (q : ι→ℝ) (hq : ∀i,0<q i) :
    Integrable (fun t : ℝ=>rootWeight (logPhaseTwist gaussianFixedWindow t) x*
      (∏i : ι,W i (q i)*logPhase (-t) (Real.log (q i)))*gaussianJointDensity V hV R t) := by
  have h := gaussian_coupled_integrable (gaussianSlotWindow W) gaussianSlotSlope
    (gaussianSlotPoint x q) V hV R
  simpa only [gaussianSlot_product W x hx q hq,gaussianFixedWindow_rootWeight_twist _ x hx] using h

/-- An actual cutoff is produced for the Option family before R,x and the positive q tuple.
No desired separation or Fourier evaluation is a premise. -/
theorem gaussian_selected_slot_family {ι : Type*} [Fintype ι]
    (W : ι→ℝ→ℂ) (M : ι→ℝ) (hM : ∀i,0≤M i)
    (hwindow : ∀i y,W i (Real.exp y)≠0→|y|≤M i) :
    ∃V : SchwartzMap ℝ ℂ,∃hV : HasCompactSupport (V:ℝ→ℂ),
      (∀R : ℝ,0<R→∀x : ℝ,0<x→∀q : ι→ℝ,(∀i,0<q i)→
        Integrable (fun t : ℝ=>rootWeight (logPhaseTwist gaussianFixedWindow t) x*
          (∏i : ι,W i (q i)*logPhase (-t) (Real.log (q i)))*gaussianJointDensity V hV R t) ∧
        dyadicAnnulus x*(∏i : ι,W i (q i))*gaussianMellinProfile (R*x/(∏i : ι,q i))=
          ∫t : ℝ,rootWeight (logPhaseTwist gaussianFixedWindow t) x*
            (∏i : ι,W i (q i)*logPhase (-t) (Real.log (q i)))*gaussianJointDensity V hV R t) ∧
      (∀A : ℝ,∀J : ℕ,∃C : ℝ,0<C ∧ ∀R : ℝ,0<R→
        Integrable (fun t : ℝ=>(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖) ∧
        (∫t : ℝ,(1+‖t‖)^J*‖gaussianJointDensity V hV R t‖)≤C*R^(-A)) := by
  let M' : Option ι→ℝ := fun o=>match o with
    | none => |Real.log (1/2)|+|Real.log 2|+1
    | some i => M i
  have hM' : ∀o,0≤M' o := by
    intro o
    cases o with
    | none => dsimp [M']; positivity
    | some i => exact hM i
  have hW : ∀o y,gaussianSlotWindow W o y≠0→|y|≤M' o := by
    intro o y
    cases o with
    | none => exact dyadicAnnulus_log_support y
    | some i => exact hwindow i y
  obtain ⟨V,hV,hsep,hbound⟩ := gaussian_coupled_family (gaussianSlotWindow W) gaussianSlotSlope M' hM' hW
  refine ⟨V,hV,?_,hbound⟩
  intro R hR x hx q hq
  refine ⟨gaussian_annular_integrable W V hV R x hx q hq,?_⟩
  have hh := (hsep R hR (gaussianSlotPoint x q)).2
  rw [gaussianSlot_argument x hx q hq] at hh
  simp only [Fintype.prod_option,gaussianSlotWindow,gaussianSlotPoint,Real.exp_log hx] at hh
  simp_rw [Real.exp_log (hq _)] at hh
  rw [show R*(x/∏i : ι,q i)=R*x/(∏i : ι,q i) by ring] at hh
  rw [hh]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall (fun t=>by
    dsimp only
    rw [gaussianFixedWindow_rootWeight_twist t x hx]
    simp only [gaussianSlotSlope,one_mul,neg_one_mul,logPhase_neg_argument])

end
end GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation
```
