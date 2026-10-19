import FormalResearch.RiemannHypothesis.Conversation.InboundChannels

/-!
# A nontrivial scalar character annihilates the finite group trace

Batch 24 B24-L07 uses an actual finite group and a supplied linear
representation, not a label saying that an output is nontrivial. The full orbit
trace is invariant. An equivariant scalar readout transforming by a specified
nontrivial character therefore vanishes on that trace and normalized average.
A bounded failure of equivariance pays its complete averaged residual.
The actual six-candidate action, character, number-field corestriction and
arithmetic readout equivariance remain explicit source-specific obligations.

Human trace/readout boundary: grwtsk contributors. Local finite-group trace and
residual consumer: OpenAI Codex. Mathlib linear algebra remains upstream.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.IsotypicTrace
open scoped BigOperators
noncomputable section

/-- The orbit trace in this module, with the following exact parameterization.

def orbitTrace {G V : Type*} [Group G] [Fintype G] [AddCommGroup V] [Module ℂ V] (rho : G →*
Module.End ℂ V) (v : V) : V := ∑ g, rho g v
-/
def orbitTrace {G V : Type*} [Group G] [Fintype G] [AddCommGroup V] [Module ℂ V]
    (rho : G →* Module.End ℂ V) (v : V) : V := ∑ g, rho g v

/-- The orbit average in this module, with the following exact parameterization.

def orbitAverage {G V : Type*} [Group G] [Fintype G] [AddCommGroup V] [Module ℂ V] (rho : G →*
Module.End ℂ V) (v : V) : V := (Fintype.card G : ℂ)⁻¹ • orbitTrace rho v
-/
def orbitAverage {G V : Type*} [Group G] [Fintype G] [AddCommGroup V] [Module ℂ V]
    (rho : G →* Module.End ℂ V) (v : V) : V := (Fintype.card G : ℂ)⁻¹ • orbitTrace rho v

theorem orbit_trace_invariant {G V : Type*} [Group G] [Fintype G]
    [AddCommGroup V] [Module ℂ V] (rho : G →* Module.End ℂ V) (h : G) (v : V) :
    rho h (orbitTrace rho v) = orbitTrace rho v := by
  unfold orbitTrace
  rw [map_sum]
  simp only [← Module.End.mul_apply, ← map_mul]
  exact Equiv.sum_comp (Equiv.mulLeft h) (fun g ↦ rho g v)

theorem scalar_covariant_trace_zero {G : Type*} [Group G] [Fintype G]
    (f : G → ℂ) (chi : G →* ℂ) {h : G} (hchi : chi h ≠ 1)
    (hcovariant : ∀ g, f (h * g) = chi h * f g) : (∑ g, f g) = 0 := by
  have he : (∑ g, f (h * g)) = ∑ g, f g :=
    Equiv.sum_comp (Equiv.mulLeft h) f
  have hs : (∑ g, f (h * g)) = chi h * ∑ g, f g := by
    simp_rw [hcovariant]
    rw [Finset.mul_sum]
  have hp : (chi h - 1) * (∑ g, f g) = 0 := by
    rw [sub_mul, one_mul, ← hs, he, sub_self]
  exact (mul_eq_zero.mp hp).resolve_left (sub_ne_zero.mpr hchi)

theorem nontrivial_readout_annihilates_trace {G V : Type*} [Group G] [Fintype G]
    [AddCommGroup V] [Module ℂ V] (rho : G →* Module.End ℂ V) (ell : V →ₗ[ℂ] ℂ)
    (chi : G →* ℂ) (hchi : ∃ h, chi h ≠ 1)
    (hequiv : ∀ g v, ell (rho g v) = chi g * ell v) (v : V) :
    ell (orbitTrace rho v) = 0 := by
  obtain ⟨h, hh⟩ := hchi
  unfold orbitTrace
  rw [map_sum]
  apply scalar_covariant_trace_zero (fun g ↦ ell (rho g v)) chi hh
  intro g
  rw [map_mul, Module.End.mul_apply, hequiv]

theorem nontrivial_readout_annihilates_average {G V : Type*} [Group G] [Fintype G]
    [AddCommGroup V] [Module ℂ V] (rho : G →* Module.End ℂ V) (ell : V →ₗ[ℂ] ℂ)
    (chi : G →* ℂ) (hchi : ∃ h, chi h ≠ 1)
    (hequiv : ∀ g v, ell (rho g v) = chi g * ell v) (v : V) :
    ell (orbitAverage rho v) = 0 := by
  rw [orbitAverage, map_smul, nontrivial_readout_annihilates_trace rho ell chi hchi hequiv]
  simp

/-- The readout residual in this module, with the following exact parameterization.

def readoutResidual {G V : Type*} [Group G] [AddCommGroup V] [Module ℂ V] (rho : G →*
Module.End ℂ V) (ell : V →ₗ[ℂ] ℂ) (chi : G →* ℂ) (v : V) (g : G) : ℂ := ell (rho g v) - chi g
* ell v
-/
def readoutResidual {G V : Type*} [Group G] [AddCommGroup V] [Module ℂ V]
    (rho : G →* Module.End ℂ V) (ell : V →ₗ[ℂ] ℂ) (chi : G →* ℂ) (v : V) (g : G) : ℂ :=
  ell (rho g v) - chi g * ell v

theorem exact_trace_residual {G V : Type*} [Group G] [Fintype G]
    [AddCommGroup V] [Module ℂ V] (rho : G →* Module.End ℂ V) (ell : V →ₗ[ℂ] ℂ)
    (chi : G →* ℂ) (hchi : ∃ h, chi h ≠ 1) (v : V) :
    ell (orbitTrace rho v) = ∑ g, readoutResidual rho ell chi v g := by
  have hs : (∑ g, chi g) = 0 := by
    obtain ⟨h, hh⟩ := hchi
    exact scalar_covariant_trace_zero chi chi hh (fun g ↦ chi.map_mul h g)
  unfold orbitTrace readoutResidual
  rw [map_sum, Finset.sum_sub_distrib, ← Finset.sum_mul, hs, zero_mul, sub_zero]

/-- Approximate equivariance pays every retained group residual. -/
theorem averaged_readout_residual_bound {G V : Type*} [Group G] [Fintype G]
    [AddCommGroup V] [Module ℂ V] (rho : G →* Module.End ℂ V) (ell : V →ₗ[ℂ] ℂ)
    (chi : G →* ℂ) (hchi : ∃ h, chi h ≠ 1) (v : V) :
    ‖ell (orbitAverage rho v)‖ ≤ (Fintype.card G : ℝ)⁻¹ *
      ∑ g, ‖readoutResidual rho ell chi v g‖ := by
  rw [orbitAverage, map_smul, exact_trace_residual rho ell chi hchi v,
    smul_eq_mul, norm_mul, norm_inv]
  have hc : ‖(Fintype.card G : ℂ)‖ = (Fintype.card G : ℝ) := by simp
  rw [hc]
  exact mul_le_mul_of_nonneg_left (norm_sum_le _ _) (inv_nonneg.mpr (Nat.cast_nonneg _))

end
end GRWTSK.RiemannHypothesis.Conversation.IsotypicTrace
