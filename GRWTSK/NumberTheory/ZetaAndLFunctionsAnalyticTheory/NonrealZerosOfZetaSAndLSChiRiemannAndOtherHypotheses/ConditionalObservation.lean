/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.EulerFactorTransport
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.DiagonalObservation

set_option autoImplicit false

noncomputable section

/-!
# RH and Dirichlet-GRH consumers for sampled diagonal observations

The source objects are complex-valued coordinate families. At coordinate i,
the observation multiplies by the actual value zeta(s(i)) or L(chi(i), s(i)).
The source return divides by that very coefficient. RH or the specified
character hypotheses supply nonvanishing in the explicitly checked domains.
This makes the generic round trips, predicate recovery and partial-channel
transport applicable without changing their meanings.

This is a literal mathematical model, not a claim that all communication systems
are L-function multipliers or that RH guarantees clinical access, fairness,
causal truth, computational efficiency, or effective numerical precision.
A vanished coefficient provably loses information. The scalar zeta case also
returns an exact equivalence with Mathlib RH, exposing how strong a uniform
right-half-plane injectivity claim really is.

Primary argument: instantiate the proved diagonal inverse with the actual
number-theoretic coefficients. Compact-region residual estimates then consume
an existential common lower margin. Explicit numerical margins can instead be
passed directly to Diagonal.reconstruction_error. The margin is never invented
from a name, a finite sample, or a source-revision token.

Reuses ObservationFibers, PartialChannels and exact zeta reflection at math
567008acec20530ce7776dbb0af5f8f88cea0487. The new generic diagonal algebra and
conditional analytic modules are same-commit dependencies. No independent proof
of their premises is claimed. Elementary conditional interoperability; novelty
not assessed. AI-assisted formalization. Independent review, compilation, fresh
kernel checking and transitive axiom auditing: NOT_RUN. Lean target: v4.34.1.
-/

namespace GRWTSK.NumberTheory.Conditional

universe u v
variable {ι : Type u} {Source : Type v}

/-- Coefficients retain the original sampling points without rounding or hashing. -/
def zetaSamples (points : ι → ℂ) : ι → ℂ := fun i => riemannZeta (points i)

theorem zetaSamples_nonzero (hRH : _root_.RiemannHypothesis)
    (points : ι → ℂ) (hpoints : ∀ i, points i ∈ zetaDomain) :
    ∀ i, zetaSamples points i ≠ 0 := by
  intro i
  exact zeta_zero_free_of_rh hRH (points i) (hpoints i).1 (hpoints i).2

/-- Both maps and both exact round trips are packaged in a genuine equivalence. -/
def zetaSampleEquivalence (hRH : _root_.RiemannHypothesis)
    (points : ι → ℂ) (hpoints : ∀ i, points i ∈ zetaDomain) :
    (ι → ℂ) ≃ (ι → ℂ) :=
  GRWTSK.LinearAlgebra.Diagonal.equivalence (zetaSamples points)
    (zetaSamples_nonzero hRH points hpoints)

/-- Every source predicate factors through this particular lossless observation. -/
theorem zetaSamples_determine (hRH : _root_.RiemannHypothesis)
    (points : ι → ℂ) (hpoints : ∀ i, points i ∈ zetaDomain)
    (P : (ι → ℂ) → Prop) :
    GRWTSK.Logic.Observation.Determined
      (GRWTSK.LinearAlgebra.Diagonal.observe (zetaSamples points)) P :=
  GRWTSK.LinearAlgebra.Diagonal.determines (zetaSamples points)
    (zetaSamples_nonzero hRH points hpoints) P

/-- Encoding and decoding preserve exactly what a partial source channel returns. -/
theorem zeta_partial_roundtrip (hRH : _root_.RiemannHypothesis)
    (points : ι → ℂ) (hpoints : ∀ i, points i ∈ zetaDomain)
    (f : GRWTSK.Logic.Channel.Partial Source (ι → ℂ)) :
    GRWTSK.Logic.Channel.serial
      (GRWTSK.Logic.Channel.serial f
        (fun x => some (GRWTSK.LinearAlgebra.Diagonal.observe (zetaSamples points) x)))
      (fun y => some (GRWTSK.LinearAlgebra.Diagonal.reconstruct (zetaSamples points) y)) = f :=
  GRWTSK.LinearAlgebra.Diagonal.partial_roundtrip (zetaSamples points)
    (zetaSamples_nonzero hRH points hpoints) f

/-- This apparent universal reconstruction requirement is exactly RH, not an unconditional API law. -/
theorem rh_iff_scalar_observation_injective :
    _root_.RiemannHypothesis ↔
      ∀ s : ℂ, s ∈ zetaDomain →
        Function.Injective
          (GRWTSK.LinearAlgebra.Diagonal.observe (fun _ : Unit => riemannZeta s)) := by
  constructor
  · intro h s hs
    apply GRWTSK.LinearAlgebra.Diagonal.observe_injective
    intro i
    exact zeta_zero_free_of_rh h s hs.1 hs.2
  · intro h
    apply rh_of_zeta_zero_free
    intro s hs hp
    exact ((GRWTSK.LinearAlgebra.Diagonal.injective_iff
      (fun _ : Unit => riemannZeta s)).mp (h s ⟨hs, hp⟩)) ()

/-- A single actual zero yields a source-exact collision at its sampled coordinate. -/
theorem zeta_zero_sample_collision (points : ι → ℂ) (j : ι)
    (hj : riemannZeta (points j) = 0) :
    ∃ x y : ι → ℂ, x ≠ y ∧
      GRWTSK.LinearAlgebra.Diagonal.observe (zetaSamples points) x =
      GRWTSK.LinearAlgebra.Diagonal.observe (zetaSamples points) y :=
  GRWTSK.LinearAlgebra.Diagonal.zero_coordinate_collision (zetaSamples points) j hj

/-- A concrete unconditional failure outside the claimed domain. -/
theorem trivial_zero_observation_not_injective :
    ¬ Function.Injective
      (GRWTSK.LinearAlgebra.Diagonal.observe (fun _ : Unit => riemannZeta (-2))) := by
  intro hi
  have hn := (GRWTSK.LinearAlgebra.Diagonal.injective_iff
    (fun _ : Unit => riemannZeta (-2))).mp hi ()
  apply hn
  simpa using riemannZeta_neg_two_mul_nat_add_one 0

/-- An arbitrary number of samples in one fixed compact region share a positive margin.
The output is coordinatewise; no unproved exchange of infinite sums is involved. -/
theorem zeta_sample_residual_control (hRH : _root_.RiemannHypothesis)
    {K : Set ℂ} (hK : IsCompact K) (hKD : K ⊆ zetaDomain)
    (points : ι → ℂ) (hpoints : ∀ i, points i ∈ K) :
    ∃ δ : ℝ, 0 < δ ∧
      ∀ (u y : ι → ℂ) (ε : ℝ),
        (∀ i, ‖GRWTSK.LinearAlgebra.Diagonal.observe (zetaSamples points) u i - y i‖ ≤ ε) →
        ∀ i, ‖u i - GRWTSK.LinearAlgebra.Diagonal.reconstruct (zetaSamples points) y i‖ ≤ ε / δ := by
  obtain ⟨δ, hδ, hbound⟩ := zeta_compact_margin hRH hK hKD
  refine ⟨δ, hδ, ?_⟩
  intro u y ε hr
  exact GRWTSK.LinearAlgebra.Diagonal.reconstruction_error (zetaSamples points) u y
    hδ (fun i => hbound (points i) (hpoints i)) hr

variable {N : ℕ} [NeZero N]

/-- Characters may vary between coordinates, but the modulus is explicitly fixed. -/
def dirichletSamples (characters : ι → DirichletCharacter ℂ N)
    (points : ι → ℂ) : ι → ℂ := fun i => (characters i).LFunction (points i)

theorem dirichletSamples_nonzero (characters : ι → DirichletCharacter ℂ N)
    (h : ∀ i, DirichletCriticalLine (characters i))
    (points : ι → ℂ) (hpoints : ∀ i, points i ∈ dirichletDomain (characters i)) :
    ∀ i, dirichletSamples characters points i ≠ 0 := by
  intro i
  exact dirichlet_nonzero_of_critical_line (h i) (hpoints i).1 (hpoints i).2

def dirichletSampleEquivalence (characters : ι → DirichletCharacter ℂ N)
    (h : ∀ i, DirichletCriticalLine (characters i))
    (points : ι → ℂ) (hpoints : ∀ i, points i ∈ dirichletDomain (characters i)) :
    (ι → ℂ) ≃ (ι → ℂ) :=
  GRWTSK.LinearAlgebra.Diagonal.equivalence (dirichletSamples characters points)
    (dirichletSamples_nonzero characters h points hpoints)

/-- Full Dirichlet GRH supplies only the hypotheses of the characters actually sampled. -/
theorem dirichletSamples_determine_of_grh (hGRH : DirichletGRH)
    (characters : ι → DirichletCharacter ℂ N)
    (points : ι → ℂ) (hpoints : ∀ i, points i ∈ dirichletDomain (characters i))
    (P : (ι → ℂ) → Prop) :
    GRWTSK.Logic.Observation.Determined
      (GRWTSK.LinearAlgebra.Diagonal.observe (dirichletSamples characters points)) P :=
  GRWTSK.LinearAlgebra.Diagonal.determines (dirichletSamples characters points)
    (dirichletSamples_nonzero characters (fun i => hGRH N (characters i)) points hpoints) P

/-- For a family of principal characters, the stronger GRH premise can be removed. -/
theorem principalSamples_determine_of_rh (hRH : _root_.RiemannHypothesis)
    (points : ι → ℂ)
    (hpoints : ∀ i, points i ∈ dirichletDomain (1 : DirichletCharacter ℂ N))
    (P : (ι → ℂ) → Prop) :
    GRWTSK.Logic.Observation.Determined
      (GRWTSK.LinearAlgebra.Diagonal.observe
        (dirichletSamples (fun _ : ι => (1 : DirichletCharacter ℂ N)) points)) P := by
  apply GRWTSK.LinearAlgebra.Diagonal.determines
  exact dirichletSamples_nonzero (fun _ : ι => (1 : DirichletCharacter ℂ N))
    (fun _ => (principal_critical_line_iff_rh N).mpr hRH) points hpoints

/-- A fixed character and a compact region admit a common sample-error allowance. -/
theorem dirichlet_sample_residual_control {χ : DirichletCharacter ℂ N}
    (h : DirichletCriticalLine χ) {K : Set ℂ} (hK : IsCompact K)
    (hKD : K ⊆ dirichletDomain χ) (points : ι → ℂ) (hpoints : ∀ i, points i ∈ K) :
    ∃ δ : ℝ, 0 < δ ∧
      ∀ (u y : ι → ℂ) (ε : ℝ),
        (∀ i, ‖χ.LFunction (points i) * u i - y i‖ ≤ ε) →
        ∀ i, ‖u i - y i / χ.LFunction (points i)‖ ≤ ε / δ := by
  obtain ⟨δ, hδ, hbound⟩ := dirichlet_compact_margin h hK hKD
  refine ⟨δ, hδ, ?_⟩
  intro u y ε hr i
  exact GRWTSK.Analysis.Division.error_le_of_residual hδ
    (hbound (points i) (hpoints i)) (hr i)

end GRWTSK.NumberTheory.Conditional
