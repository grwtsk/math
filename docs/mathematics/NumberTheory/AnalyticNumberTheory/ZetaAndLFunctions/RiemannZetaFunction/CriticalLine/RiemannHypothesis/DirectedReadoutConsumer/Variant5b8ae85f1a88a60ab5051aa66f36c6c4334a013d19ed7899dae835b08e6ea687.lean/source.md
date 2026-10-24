# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DirectedReadoutConsumer.Variant5b8ae85f1a88a60ab5051aa66f36c6c4334a013d19ed7899dae835b08e6ea687

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31d93dd9c7db43cdc0b570dd2ee403df95a7ac45` · SHA-256 `5b8ae85f1a88a60ab5051aa66f36c6c4334a013d19ed7899dae835b08e6ea687`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.DirectedHilbertCarrier
import FormalResearch.RiemannHypothesis.Conversation.PolynomialRHConsumer

/-!
# Complete finite-frame bounds reach the actual source only through an exact readout

The limit consumer retains the exact closed prime moment, every source scale
beyond one common threshold, every finite approximant and its residual. A
continuous readout, strong convergence, exact source identity, common polynomial
bound and vanishing complete residual produce the actual ProblemP proposition.
The checked source reduction then returns the signed Mertens obligation. RH
additionally requires the separately named analytic strip supplier.

No arithmetic frame, convergence proof, uniform polynomial cap, residual decay
or strip supplier is constructed by these conditional implications.
Human completion, exact decoder and uniformity direction: grwtsk contributors.
Local readout-to-source consumer: OpenAI Codex. Mathlib continuity and limit
laws retain upstream identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.DirectedReadoutConsumer
open DirectedHilbertCarrier PolynomialRHConsumer OpenArithmeticSuppliers
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect
open Filter Topology
noncomputable section
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

theorem complete_limit_readout_bound (ell : E →L[ℝ] ℝ) (v : ℕ → E) (x : E)
    (residual : ℕ → ℝ) (B : ℝ)
    (hv : Tendsto v atTop (𝓝 x)) (hr : Tendsto residual atTop (𝓝 0))
    (hcap : ∀ n, ell (v n) ≤ B + residual n) : ell x ≤ B := by
  have hupper : Tendsto (fun n ↦ B + residual n) atTop (𝓝 B) := by
    simpa only [add_zero] using tendsto_const_nhds.add hr
  exact le_of_tendsto_of_tendsto'
    (continuous_readout_of_strong_approximants ell v x hv) hupper hcap

theorem actual_source_from_uniform_complete_limits
    (ell : E →L[ℝ] ℝ) (source : ℝ → E) (v : ℝ → ℕ → E)
    (residual : ℝ → ℕ → ℝ) (m : ℕ) (C R : ℝ) (hC : 0 ≤ C) (hR : 1 ≤ R)
    (hdecode : ∀ A, R ≤ A → ell (source A) = closedPrimeMoment A)
    (hv : ∀ A, R ≤ A → Tendsto (v A) atTop (𝓝 (source A)))
    (hr : ∀ A, R ≤ A → Tendsto (residual A) atTop (𝓝 0))
    (hcap : ∀ A, R ≤ A → ∀ n, ell (v A n) ≤ C * A ^ m + residual A n) :
    ProblemP := by
  refine ⟨m, C, R, hC, hR, ?_⟩
  intro A hA
  rw [← hdecode A hA]
  exact complete_limit_readout_bound ell (v A) (source A) (residual A) (C * A ^ m)
    (hv A hA) (hr A hA) (hcap A hA)

theorem actual_signed_mertens_from_uniform_complete_limits
    (ell : E →L[ℝ] ℝ) (source : ℝ → E) (v : ℝ → ℕ → E)
    (residual : ℝ → ℕ → ℝ) (m : ℕ) (C R : ℝ) (hC : 0 ≤ C) (hR : 1 ≤ R)
    (hdecode : ∀ A, R ≤ A → ell (source A) = closedPrimeMoment A)
    (hv : ∀ A, R ≤ A → Tendsto (v A) atTop (𝓝 (source A)))
    (hr : ∀ A, R ≤ A → Tendsto (residual A) atTop (𝓝 0))
    (hcap : ∀ A, R ≤ A → ∀ n, ell (v A n) ≤ C * A ^ m + residual A n) :
    SignedMertensSupplier :=
  problemP_iff_signedMertensSupplier.mp
    (actual_source_from_uniform_complete_limits ell source v residual m C R hC hR hdecode hv hr hcap)

theorem rh_from_uniform_complete_limits_and_analytic_strip
    (ell : E →L[ℝ] ℝ) (source : ℝ → E) (v : ℝ → ℕ → E)
    (residual : ℝ → ℕ → ℝ) (m : ℕ) (C R : ℝ) (hC : 0 ≤ C) (hR : 1 ≤ R)
    (hdecode : ∀ A, R ≤ A → ell (source A) = closedPrimeMoment A)
    (hv : ∀ A, R ≤ A → Tendsto (v A) atTop (𝓝 (source A)))
    (hr : ∀ A, R ≤ A → Tendsto (residual A) atTop (𝓝 0))
    (hcap : ∀ A, R ≤ A → ∀ n, ell (v A n) ≤ C * A ^ m + residual A n)
    (hstrip : SourceRateStripSupplier) : RiemannHypothesis :=
  rh_of_problemP_and_rateStrip
    (actual_source_from_uniform_complete_limits ell source v residual m C R hC hR hdecode hv hr hcap)
    hstrip

end
end GRWTSK.RiemannHypothesis.Conversation.DirectedReadoutConsumer
```
