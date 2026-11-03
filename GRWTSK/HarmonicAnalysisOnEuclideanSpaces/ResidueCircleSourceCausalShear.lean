/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import Mathlib.Analysis.InnerProductSpace.ProdL2
import Mathlib.Analysis.Normed.Operator.ContinuousLinearMap
import Mathlib.Tactic

/-!
# Complete-Hilbert two-time causal shear

For a source-identified, bounded observation family B(t) on a complex Hilbert
space H, retain BOTH the latent source x and the observed response y, in the
actual Hilbert product `WithLp 2 (H × H)`.

  W(s,t)(x,y) = (x, y + (B(t)-B(s))x).

This is a nonautonomous two-time evolution, with W(s,s)=1,
W(t,u)W(s,t)=W(s,u), W(t,s)=W(s,t)^{-1}; it transports the source graph
(x,B(s)x) exactly to (x,B(t)x). It never divides by a response or destroys
latent source labels when an observed response is zero before birth.

No independent homogeneous-in-time semigroup, physical Hamiltonian, or
uniform estimate over source inventories follows from these identities.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.SourceCausalShear

universe u
variable {H : Type u} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
  [CompleteSpace H]

/-- A positive-inner-product complete Hilbert carrier, rather than the
sup-normed cartesian product. -/
abbrev SourceState (H : Type u) := WithLp 2 (H × H)

/-- A bounded source-to-observation family; this definition does NOT supply
an arithmetic estimate, nor posit an invertible response at every time. -/
abbrev ObservationFamily (H : Type u) := ℝ → (H →L[ℂ] H)

/-- The genuine bounded two-time linear operator on the augmented state.
The maps `fstL`, `sndL` and the product linear equivalence are continuous;
`B t - B s` is an exact signed response difference. -/
def causalStep (B : ObservationFamily H) (s t : ℝ) :
    SourceState H →L[ℂ] SourceState H :=
  let fst : SourceState H →L[ℂ] H := WithLp.fstL 2 ℂ H H
  let snd : SourceState H →L[ℂ] H := WithLp.sndL 2 ℂ H H
  ((WithLp.prodContinuousLinearEquiv 2 ℂ H H).symm :
      (H × H) →L[ℂ] SourceState H).comp
    (fst.prod (snd + ((B t - B s).comp fst)))

@[simp] theorem causalStep_apply (B : ObservationFamily H) (s t : ℝ)
    (z : SourceState H) :
    causalStep B s t z =
      WithLp.toLp 2 (z.fst, z.snd + (B t - B s) z.fst) := rfl

/-- Identity at equal times, even at time zero and birth thresholds. -/
theorem causalStep_self (B : ObservationFamily H) (s : ℝ) :
    causalStep B s s = ContinuousLinearMap.id ℂ (SourceState H) := by
  apply ContinuousLinearMap.ext
  intro z
  rw [causalStep_apply]
  simp

/-- EXACT composition, without invertibility of B(t), nonzero packets,
restricting to a particular source vector, or deleting signed increments. -/
theorem causalStep_comp (B : ObservationFamily H) (s t u : ℝ) :
    (causalStep B t u).comp (causalStep B s t) = causalStep B s u := by
  apply ContinuousLinearMap.ext
  intro z
  simp only [ContinuousLinearMap.comp_apply, causalStep_apply]
  apply WithLp.toLp_injective 2
  apply Prod.ext
  · rfl
  · simp only [WithLp.toLp_fst, WithLp.toLp_snd,
      ContinuousLinearMap.sub_apply]
    abel

/-- Inverse on the FULL augmented state, even when B(s) or B(t) has a
nontrivial kernel and observed data alone cannot be evolved. -/
theorem causalStep_left_inverse (B : ObservationFamily H) (s t : ℝ) :
    (causalStep B t s).comp (causalStep B s t) =
      ContinuousLinearMap.id ℂ (SourceState H) := by
  rw [causalStep_comp, causalStep_self]

theorem causalStep_right_inverse (B : ObservationFamily H) (s t : ℝ) :
    (causalStep B s t).comp (causalStep B t s) =
      ContinuousLinearMap.id ℂ (SourceState H) := by
  rw [causalStep_comp, causalStep_self]

/-- Graph of the actual response, with latent coefficient source retained. -/
def sourceGraph (B : ObservationFamily H) (t : ℝ) (x : H) : SourceState H :=
  WithLp.toLp 2 (x, B t x)

/-- Source graph is transported from every s to every t, including a zero
observed response at s and a nonzero response at t. -/
theorem causalStep_graph (B : ObservationFamily H) (s t : ℝ) (x : H) :
    causalStep B s t (sourceGraph B s x) = sourceGraph B t x := by
  rw [causalStep_apply]
  apply WithLp.toLp_injective 2
  apply Prod.ext
  · rfl
  · change B s x + (B t - B s) x = B t x
    rw [ContinuousLinearMap.sub_apply]
    abel

/-- The operator is bounded on the WHOLE positive-Hilbert state;
this is pointwise-in-(s,t), not a uniform time/scale estimate. -/
theorem causalStep_bound (B : ObservationFamily H) (s t : ℝ)
    (z : SourceState H) :
    ‖causalStep B s t z‖ ≤ ‖causalStep B s t‖ * ‖z‖ :=
  (causalStep B s t).le_opNorm z

/-- The two source coordinates are recovered without loss from the graph,
independent of any arithmetic estimate. -/
theorem sourceGraph_latent (B : ObservationFamily H) (t : ℝ) (x : H) :
    (sourceGraph B t x).fst = x := rfl

theorem sourceGraph_observed (B : ObservationFamily H) (t : ℝ) (x : H) :
    (sourceGraph B t x).snd = B t x := rfl

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.SourceCausalShear
