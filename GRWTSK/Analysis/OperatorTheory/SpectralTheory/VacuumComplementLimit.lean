/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport
import Mathlib.Analysis.InnerProductSpace.Continuous
import Mathlib.Topology.Algebra.Module.ContinuousLinearMap.Restrict
import Mathlib.Topology.Order.OrderClosed

/-!
# Fixed-space limits of bounds on a vacuum complement

An already proved uniform quadratic bound passes to a pointwise norm limit on
one fixed inner product space. Symmetry and annihilation of the same vector also
pass to the limit. They make its orthogonal complement invariant, so the existing
`GapTransport.norm_gap_of_quadratic_bound` applies to the restricted operator.

All operators here are bounded and defined on the entire fixed space. The
continuity argument does not require completeness; interpreting symmetry as
bounded self-adjointness uses completeness. The vector need not be normalized,
so the result applies in particular to a normalized vacuum. It does not identify
that vector with a physical vacuum or establish uniqueness of a physical
zero-energy sector.

The constant is the same for every approximant and every retained vector. Its
strict positivity is not manufactured by this transport. A finite feature margin
or scalar-identity shift is not a supplier of the physical bound. Unbounded
Hamiltonians need separate operator/form-domain arguments; varying Hilbert spaces
need specified embeddings and convergence compatible with the physical sectors.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.VacuumComplementLimit

noncomputable section

open Filter
open scoped Topology

variable {𝕜 H : Type*} [RCLike 𝕜]
  [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]

/-- Only convergence on the indicated submodule is needed for the quadratic
bound. No self-adjointness or positivity assumption is needed for this step. -/
theorem quadratic_bound_on_submodule_of_pointwise_limit
    (Aseq : ℕ → H →L[𝕜] H) (A : H →L[𝕜] H)
    (S : Submodule 𝕜 H) (m : ℝ)
    (hconv : ∀ x ∈ S, Tendsto (fun n => Aseq n x) atTop (𝓝 (A x)))
    (hbound : ∀ n x, x ∈ S →
      m * ‖x‖ ^ 2 ≤ RCLike.re (inner 𝕜 (Aseq n x) x)) :
    ∀ x ∈ S, m * ‖x‖ ^ 2 ≤ RCLike.re (inner 𝕜 (A x) x) := by
  intro x hx
  have hinner : Tendsto (fun n => inner 𝕜 (Aseq n x) x)
      atTop (𝓝 (inner 𝕜 (A x) x)) :=
    (hconv x hx).inner tendsto_const_nhds
  have hre : Tendsto (fun n => RCLike.re (inner 𝕜 (Aseq n x) x))
      atTop (𝓝 (RCLike.re (inner 𝕜 (A x) x))) :=
    RCLike.continuous_re.continuousAt.tendsto.comp hinner
  exact ge_of_tendsto' hre (fun n => hbound n x hx)

/-- A shared null state remains null under pointwise norm convergence. -/
theorem null_state_of_pointwise_limit
    (Aseq : ℕ → H →L[𝕜] H) (A : H →L[𝕜] H) (Ω : H)
    (hconv : Tendsto (fun n => Aseq n Ω) atTop (𝓝 (A Ω)))
    (hnull : ∀ n, Aseq n Ω = 0) : A Ω = 0 := by
  have hzero : Tendsto (fun n => Aseq n Ω) atTop (𝓝 (0 : H)) := by
    simpa only [hnull] using
      (tendsto_const_nhds : Tendsto (fun _ : ℕ => (0 : H)) atTop (𝓝 0))
  exact tendsto_nhds_unique hconv hzero

/-- Symmetry of everywhere-defined bounded operators survives pointwise norm
convergence. There is no assertion about partially defined adjoints here. -/
theorem symmetric_of_pointwise_limit
    (Aseq : ℕ → H →L[𝕜] H) (A : H →L[𝕜] H)
    (hconv : ∀ x, Tendsto (fun n => Aseq n x) atTop (𝓝 (A x)))
    (hsym : ∀ n, (Aseq n : H →ₗ[𝕜] H).IsSymmetric) :
    (A : H →ₗ[𝕜] H).IsSymmetric := by
  intro x y
  have hleft : Tendsto (fun n => inner 𝕜 (Aseq n x) y)
      atTop (𝓝 (inner 𝕜 (A x) y)) :=
    (hconv x).inner tendsto_const_nhds
  have hright : Tendsto (fun n => inner 𝕜 x (Aseq n y))
      atTop (𝓝 (inner 𝕜 x (A y))) :=
    tendsto_const_nhds.inner (hconv y)
  have heq : (fun n => inner 𝕜 (Aseq n x) y) =
      (fun n => inner 𝕜 x (Aseq n y)) :=
    funext (fun n => hsym n x y)
  rw [heq] at hleft
  exact tendsto_nhds_unique hleft hright

/-- The complement of a specified null state is invariant for a symmetric
bounded operator. Normalization of the null state is unnecessary. -/
theorem vacuum_complement_invariant
    (A : H →L[𝕜] H) (Ω : H)
    (hsym : (A : H →ₗ[𝕜] H).IsSymmetric) (hnull : A Ω = 0) :
    ∀ x ∈ (𝕜 ∙ Ω)ᗮ, A x ∈ (𝕜 ∙ Ω)ᗮ := by
  intro x _hx
  apply Submodule.mem_orthogonal_singleton_iff_inner_right.mpr
  rw [← hsym Ω x, hnull, inner_zero_left]

/-- Actual use of the maintained norm-gap consumer on the invariant submodule,
rather than imposing a false positive bound on a space containing the vacuum. -/
theorem norm_gap_on_vacuum_complement_of_quadratic_bound
    (A : H →L[𝕜] H) (Ω : H) (m : ℝ)
    (hsym : (A : H →ₗ[𝕜] H).IsSymmetric) (hnull : A Ω = 0)
    (hbound : ∀ x ∈ (𝕜 ∙ Ω)ᗮ,
      m * ‖x‖ ^ 2 ≤ RCLike.re (inner 𝕜 (A x) x)) :
    ∀ x ∈ (𝕜 ∙ Ω)ᗮ, m * ‖x‖ ≤ ‖A x‖ := by
  let S : Submodule 𝕜 H := (𝕜 ∙ Ω)ᗮ
  have hstable : ∀ x ∈ S, A x ∈ S :=
    vacuum_complement_invariant A Ω hsym hnull
  let B : S →L[𝕜] S := A.restrict hstable
  have hquad : ∀ x : S,
      m * ‖x‖ ^ 2 ≤ RCLike.re (inner 𝕜 (B x) x) := by
    intro x
    exact hbound x x.property
  have hgap := GapTransport.norm_gap_of_quadratic_bound B m hquad
  intro x hx
  have h := hgap ⟨x, hx⟩
  change m * ‖x‖ ≤ ‖A x‖ at h
  exact h

/-- Bounded self-adjoint approximants on one fixed Hilbert space preserve their
shared null state, self-adjointness and the *supplied* uniform complement bound.
The final norm bound consumes the existing restricted-operator gap theorem.
No positive value of `m` is inferred from the convergence assumptions. -/
theorem self_adjoint_vacuum_complement_gap_of_pointwise_limit
    [CompleteSpace H]
    (Aseq : ℕ → H →L[𝕜] H) (A : H →L[𝕜] H) (Ω : H) (m : ℝ)
    (hconv : ∀ x, Tendsto (fun n => Aseq n x) atTop (𝓝 (A x)))
    (hself : ∀ n, IsSelfAdjoint (Aseq n))
    (hnull : ∀ n, Aseq n Ω = 0)
    (hbound : ∀ n x, x ∈ (𝕜 ∙ Ω)ᗮ →
      m * ‖x‖ ^ 2 ≤ RCLike.re (inner 𝕜 (Aseq n x) x)) :
    A Ω = 0 ∧ IsSelfAdjoint A ∧
      (∀ x ∈ (𝕜 ∙ Ω)ᗮ,
        m * ‖x‖ ^ 2 ≤ RCLike.re (inner 𝕜 (A x) x)) ∧
      (∀ x ∈ (𝕜 ∙ Ω)ᗮ, m * ‖x‖ ≤ ‖A x‖) := by
  have hnullA : A Ω = 0 :=
    null_state_of_pointwise_limit Aseq A Ω (hconv Ω) hnull
  have hsymA : (A : H →ₗ[𝕜] H).IsSymmetric :=
    symmetric_of_pointwise_limit Aseq A hconv
      (fun n => (ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mp (hself n)))
  have hboundA := quadratic_bound_on_submodule_of_pointwise_limit
    Aseq A (𝕜 ∙ Ω)ᗮ m (fun x _hx => hconv x) hbound
  exact ⟨hnullA, ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mpr hsymA,
    hboundA,
    norm_gap_on_vacuum_complement_of_quadratic_bound A Ω m hsymA hnullA hboundA⟩

end

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.VacuumComplementLimit
