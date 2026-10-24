# Complete source: GRWTSK.Analysis.InnerProductSpace.SignedWindowRootBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9722238202ea6a32049e45d036a9d1e60cf9af9` · SHA-256 `b59e347bfd92946d4b02d94f2cdf74dbdc9b5a1eb979ce04ec905bf772174d6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.InnerProductSpace.SignedWindowPacketCertificates
import GRWTSK.Analysis.Integration.QuadraticRootTransport

/-!
Additive sharper consumers of the existing signed-window certificates.
Existing declarations and source definitions remain unchanged. No chart producer,
uniform signed matching estimate, or arithmetic conclusion is assumed proved.
Research direction: grwtsk contributors; ChatGPT-assisted implementation.
Kernel compilation and repository acceptance are pending.
-/
noncomputable section
namespace GRWTSK.Analysis.SignedWindowRoot
open MeasureTheory Set
open scoped BigOperators
open HSSCP04 HSSCP04.SignedCharts
open GRWTSK.Analysis.QuadraticRootTransport

/-- Both residual components remain inside the square before any bound is used. -/
theorem narrow_root_transport {b T : ℝ} {parent : Chart b T}
    (cert : NarrowCertificate parent) :
    Real.sqrt (packetEnergy parent) ≤
      Real.sqrt (cert.transport*packetEnergy cert.child)+Real.sqrt cert.residualBudget := by
  let μ : Measure ℝ := volume.restrict (Icc (T-b) T)
  let f : ℝ → ℝ := fun u => cert.amplitude*(maturePacket cert.child
    (cert.scale*u+cert.offset)+horizonPacket cert.child (cert.scale*u+cert.offset))
  let r : ℝ → ℝ := fun u => cert.residualMature u+cert.residualHorizon u
  have hf : Integrable (fun u => (f u)^2) μ := cert.pulled_integrable
  have hr : Integrable (fun u => (r u)^2) μ := (narrow_residual_integrable cert).restrict
  have hs : Integrable (fun u => (f u+r u)^2) μ := by
    apply (packet_sum_square_integrable parent).restrict.congr
    filter_upwards [ae_restrict_mem measurableSet_Icc] with u hu
    rw [cert.mature_reconstruction u hu, cert.horizon_reconstruction u hu]
    dsimp [f, r]
    ring
  have he : energy μ (fun u => f u+r u) = packetEnergy parent := by
    apply integral_congr_ae
    filter_upwards [ae_restrict_mem measurableSet_Icc] with u hu
    rw [cert.mature_reconstruction u hu, cert.horizon_reconstruction u hu]
    dsimp [f, r]
    ring
  have ht := sqrt_energy_add_le μ hf hr hs
  rw [he] at ht
  exact ht.trans (add_le_add
    (Real.sqrt_le_sqrt cert.transport_bound)
    (Real.sqrt_le_sqrt cert.residual_bound))

/-- The parent energy budget uses the sharp root sum instead of two doubled terms. -/
theorem narrow_energy_budget {b T childBudget : ℝ} {parent : Chart b T}
    (cert : NarrowCertificate parent) (hchild : packetEnergy cert.child ≤ childBudget) :
    packetEnergy parent ≤
      (Real.sqrt (cert.transport*childBudget)+Real.sqrt cert.residualBudget)^2 := by
  have ht := narrow_root_transport cert
  have hm := Real.sqrt_le_sqrt
    (mul_le_mul_of_nonneg_left hchild cert.transport_nonnegative)
  have hroot : Real.sqrt (packetEnergy parent) ≤
      Real.sqrt (cert.transport*childBudget)+Real.sqrt cert.residualBudget := by linarith
  have he := Real.sq_sqrt (packetEnergy_nonnegative parent)
  have hn := Real.sqrt_nonneg (packetEnergy parent)
  have hb : 0 ≤ Real.sqrt (cert.transport*childBudget)+Real.sqrt cert.residualBudget := by positivity
  nlinarith

/-- A derivation using the original broad certificates and the sharper narrow ledger. -/
inductive SharpBudgetDerivation : {b T : ℝ} → Chart b T → ℝ → Type where
  | broad {b T budget : ℝ} {parent : Chart b T}
      (cert : BroadCertificate parent budget) : SharpBudgetDerivation parent budget
  | narrow {b T childBudget budget : ℝ} {parent : Chart b T}
      (cert : NarrowCertificate parent)
      (child : SharpBudgetDerivation cert.child childBudget)
      (ledger : (Real.sqrt (cert.transport*childBudget)+Real.sqrt cert.residualBudget)^2 ≤ budget) :
      SharpBudgetDerivation parent budget

theorem SharpBudgetDerivation.sound {b T budget : ℝ} {parent : Chart b T}
    (d : SharpBudgetDerivation parent budget) : packetEnergy parent ≤ budget := by
  induction d with
  | broad cert => exact broad_certificate_returns_budget cert
  | narrow cert child ledger ih => exact (narrow_energy_budget cert ih).trans ledger

/-- This constructs the existing HSS conclusion only when all chart producers
and the complete polynomial budget have been supplied. -/
theorem uniform_sharp_charts_return {b C q : ℝ}
    (hb : PinnedShellWidth b) (hC : 0 ≤ C) (hq : 0 ≤ q)
    (producer : ∀ T : ℝ, b ≤ T → ∃ (s : Finset ℕ) (charts : ℕ → Chart b T)
      (budgets : ℕ → ℝ),
      (∀ u ∈ Icc (T-b) T, 1 ≤ ∑ i ∈ s, (charts i).cutoff u^2) ∧
      (∀ i ∈ s, Nonempty (SharpBudgetDerivation (charts i) (budgets i))) ∧
      (∑ i ∈ s, budgets i ≤ C*(1+T)^q)) : HSS b := by
  apply uniform_chart_budgets_imply_HSS hb hC hq
  intro T hT
  obtain ⟨s,charts,budgets,coverage,derivations,total⟩ := producer T hT
  refine ⟨s,charts,budgets,coverage,?_,total⟩
  intro i hi
  obtain ⟨d⟩ := derivations i hi
  exact d.sound

end GRWTSK.Analysis.SignedWindowRoot
#print axioms GRWTSK.Analysis.SignedWindowRoot.narrow_root_transport
#print axioms GRWTSK.Analysis.SignedWindowRoot.SharpBudgetDerivation.sound
#print axioms GRWTSK.Analysis.SignedWindowRoot.uniform_sharp_charts_return
```
