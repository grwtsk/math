import Mathematics.Operational.Stability

/-!
# Local quadratic Lyapunov certificates

The certificate contains an invariant region, a nonnegative-energy comparison
with squared distance, a one-step decrease theorem, and a local sublevel
entry theorem.  These fields prove Lyapunov stability; a function merely named
`V`, positivity alone, or decrease outside an invariant region does not.
-/

namespace Mathematics.Operational

universe u

variable {State : Type u} [PseudoMetricSpace State]

/-- A proof-bearing local quadratic Lyapunov profile. -/
structure LocalQuadraticLyapunovCertificate
    {operator : VersionedOperator State}
    (fixedPoint : CertifiedFixedPoint operator) where
  region : Set operator.domain
  fixed_mem : fixedPoint.point ∈ region
  invariant : Set.MapsTo operator.step region region
  energy : operator.domain → ℝ
  lowerConstant : ℝ
  upperConstant : ℝ
  lowerConstant_positive : 0 < lowerConstant
  upperConstant_positive : 0 < upperConstant
  lower_bound :
    ∀ state ∈ region,
      lowerConstant *
          dist state fixedPoint.point ^ 2 ≤
        energy state
  upper_bound :
    ∀ state ∈ region,
      energy state ≤
        upperConstant *
          dist state fixedPoint.point ^ 2
  decreases :
    ∀ state ∈ region,
      energy (operator.step state) ≤ energy state
  local_sublevel :
    ∀ ε > 0,
      ∃ δ > 0,
        ∀ state : operator.domain,
          dist state fixedPoint.point < δ →
          state ∈ region ∧
          upperConstant *
              dist state fixedPoint.point ^ 2 <
            lowerConstant * ε ^ 2

namespace LocalQuadraticLyapunovCertificate

variable
    {operator : VersionedOperator State}
    {fixedPoint : CertifiedFixedPoint operator}
    (certificate :
      LocalQuadraticLyapunovCertificate fixedPoint)

/-- Every finite iterate remains in the certified Lyapunov region. -/
theorem iterate_mem
    {state : operator.domain}
    (state_mem : state ∈ certificate.region)
    (iteration : Nat) :
    (operator.step^[iteration]) state ∈
      certificate.region :=
  certificate.invariant.iterate iteration state_mem

/-- Lyapunov energy is nonincreasing along every certified-region iterate. -/
theorem energy_iterate_le
    {state : operator.domain}
    (state_mem : state ∈ certificate.region)
    (iteration : Nat) :
    certificate.energy
        ((operator.step^[iteration]) state) ≤
      certificate.energy state := by
  induction iteration with
  | zero =>
      exact le_rfl
  | succ iteration inductionHypothesis =>
      rw [Function.iterate_succ_apply']
      exact
        (certificate.decreases _
          (certificate.iterate_mem state_mem iteration)).trans
          inductionHypothesis

include certificate

/-- The quadratic Lyapunov certificate proves its named stability predicate. -/
theorem isLyapunovStable :
    IsLyapunovStable operator fixedPoint := by
  intro ε ε_positive
  obtain ⟨δ, δ_positive, entersSublevel⟩ :=
    Mathematics.Operational.LocalQuadraticLyapunovCertificate.local_sublevel
      certificate ε ε_positive
  refine ⟨δ, δ_positive, ?_⟩
  intro state stateClose iteration
  obtain ⟨state_mem, initialSublevel⟩ :=
    entersSublevel state stateClose
  have iter_mem :=
    certificate.iterate_mem state_mem iteration
  have energyBound :
      certificate.lowerConstant *
          dist ((operator.step^[iteration]) state)
            fixedPoint.point ^ 2 <
        certificate.lowerConstant * ε ^ 2 := by
    calc
      certificate.lowerConstant *
            dist ((operator.step^[iteration]) state)
              fixedPoint.point ^ 2
          ≤ certificate.energy
              ((operator.step^[iteration]) state) :=
        certificate.lower_bound _ iter_mem
      _ ≤ certificate.energy state :=
        certificate.energy_iterate_le state_mem iteration
      _ ≤ certificate.upperConstant *
            dist state fixedPoint.point ^ 2 :=
        certificate.upper_bound state state_mem
      _ < certificate.lowerConstant * ε ^ 2 :=
        initialSublevel
  have squaredDistance :
      dist ((operator.step^[iteration]) state)
          fixedPoint.point ^ 2 < ε ^ 2 :=
    by
      nlinarith [certificate.lowerConstant_positive]
  exact
    (sq_lt_sq₀ dist_nonneg ε_positive.le).mp
      squaredDistance

end LocalQuadraticLyapunovCertificate

end Mathematics.Operational
