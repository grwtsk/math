# Complete source: GRWTSK.Algebra.LinearAlgebra.LinearMap.FiniteMixingObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64628d3e27638a1eec8c1abb350e8ed8e05938dd` · SHA-256 `24d434b242593656c6a7fc2c80b5c0375b673e375651853351be08c7200c1128`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
import Mathlib.LinearAlgebra.LinearIndependent.Defs
import Mathlib.LinearAlgebra.Pi

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Finite coefficient mixing cannot repair a dependent input family


An independent target family cannot be obtained by a common linear operator
after arbitrary linear mixing of an equally sized finite input family containing
a zero vector. Only the coefficient space is finite dimensional; the input and
target spaces may be infinite dimensional. No topology, continuity, boundedness
or invertibility assumption on the mixing or common operator is used. Additional
inputs or a different coefficient dimension require separate arguments.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.LinearAlgebra.LinearMap.FiniteMixingObstruction

noncomputable section

variable {K ι E F : Type*} [Field K] [Fintype ι] [DecidableEq ι]
  [AddCommGroup E] [Module K E] [AddCommGroup F] [Module K F]

/-- Equal realizations on unit coordinate vectors imply exact synthesis factorization. -/
theorem synthesis_eq_of_basis_realization (input : ι → E) (target : ι → F)
    (mix : (ι → K) →ₗ[K] (ι → K)) (map : E →ₗ[K] F)
    (realization : ∀ i, map (Fintype.linearCombination K input
      (mix (Pi.single i (1 : K)))) = target i) :
    Fintype.linearCombination K target =
      map.comp ((Fintype.linearCombination K input).comp mix) := by
  apply LinearMap.pi_ext
  intro i c
  rw [Fintype.linearCombination_apply_single]
  change c • target i = map (Fintype.linearCombination K input (mix (Pi.single i c)))
  have singleScale : Pi.single i c = c • Pi.single i (1 : K) := by
    simpa only [smul_eq_mul, mul_one] using Pi.single_smul' i c (1 : K)
  rw [singleScale, mix.map_smul, (Fintype.linearCombination K input).map_smul,
    map.map_smul, realization i]

/-- Independent outputs force independent inputs for a finite square coefficient map. -/
theorem independent_linear_mix_requires_independent_input (input : ι → E) (target : ι → F)
    (independent : LinearIndependent K target)
    (mix : (ι → K) →ₗ[K] (ι → K)) (map : E →ₗ[K] F)
    (realization : ∀ i, map (Fintype.linearCombination K input
      (mix (Pi.single i (1 : K)))) = target i) : LinearIndependent K input := by
  have factorization := synthesis_eq_of_basis_realization input target mix map realization
  have targetInjective := independent.fintypeLinearCombination_injective
  have mixInjective : Function.Injective mix := by
    intro a b equal
    apply targetInjective
    rw [factorization]
    simp only [LinearMap.comp_apply, equal]
  have mixSurjective : Function.Surjective mix :=
    LinearMap.injective_iff_surjective.mp mixInjective
  apply linearIndependent_iff_injective_fintypeLinearCombination.mpr
  intro a b equal
  obtain ⟨u, hu⟩ := mixSurjective a
  obtain ⟨v, hv⟩ := mixSurjective b
  have liftedEqual : u = v := by
    apply targetInjective
    rw [factorization]
    simp only [LinearMap.comp_apply, hu, hv, equal]
  exact hu.symm.trans ((congrArg mix liftedEqual).trans hv)

/-- A zero input coordinate obstructs simultaneous realization of all independent targets. -/
theorem zero_coordinate_no_independent_linear_mix (input : ι → E) (target : ι → F)
    (independent : LinearIndependent K target) (contact : ι) (atContact : input contact = 0)
    (mix : (ι → K) →ₗ[K] (ι → K)) (map : E →ₗ[K] F) :
    ¬ ∀ i, map (Fintype.linearCombination K input (mix (Pi.single i (1 : K)))) =
      target i := by
  intro realization
  have inputIndependent := independent_linear_mix_requires_independent_input
    input target independent mix map realization
  exact (LinearIndependent.ne_zero contact inputIndependent) atContact

end

end GRWTSK.LinearAlgebra.LinearMap.FiniteMixingObstruction
```
