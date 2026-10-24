/-
# Uncompiled source split candidate: MeromorphicSquareComposition

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians,
enthusiasts, and curious minds whose work and questions have helped shape these tools,
and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These provisional roles and computational characterizations are user-supplied;
the exact contribution, source ancestry, attribution and mechanism need clarification.
Existing contributor identities, intellectual sources and applicable notices remain
separate. No mathematical priority, new theorem credit or proof acceptance is claimed.

Original source SHA-256: 1ddde3c9c489ef7b51a209466f629898dc30242cfa4a3f5c5e1ff9cf0b21fe3e
Organized source SHA-256: 2e2ea206f8b5fe45f2e55cc0220ed2fc1b9dcb011b5eff4befbc5665db88e245
Source archive: grwtsk/math@99f310907528f620d85095b675ec1b6f9d7a7046
PMD: 510.5.030 complex analysis; source-bound editorial placement only.
All original imports, the original whole-file introduction, ambient opens, and
noncomputable context are retained below. This candidate contains only its selected
component; the archived whole source remains authoritative for reconstruction.
Statements, hypotheses, declaration comments and proof bodies are copied byte-for-byte.
Only the containing namespace, component selection and this explanatory header change.
This file is outside the public library umbrella. Lean has not been invoked.
-/

import Mathlib.Analysis.Meromorphic.Order
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.Calculus.FDeriv.Analytic
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas

/-!
# Infrastructure for the actual paired Hadamard product

Generic analytic lemmas needed by the source-bound `ActualPairedProduct` proof.
They contain no zeta, RH, PF, determinant, or Grassmannian assumptions.

The first theorem is the precise local-biholomorphic multiplicity transport
through the map `u ↦ u^2` away from its ramification point.  The remaining
lemmas transport all Taylor coefficients through locally uniform convergence of
entire functions.  These are the two reusable analytic mechanisms required by
issue #153 before the actual xi source is attached.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.PairedProduct.MeromorphicSquareComposition

open Filter Set
open scoped Topology

noncomputable section

/-- The derivative of the squaring map. -/
theorem deriv_square (u : ℂ) : deriv (fun z : ℂ => z ^ 2) u = 2 * u := by
  simpa using ((hasDerivAt_id u).pow 2).deriv

/-- Composition with `u ↦ u^2` preserves analytic/meromorphic multiplicity
away from the ramification point. -/
theorem meromorphicOrderAt_comp_square (f : ℂ → ℂ) (u : ℂ) (hu : u ≠ 0) :
    meromorphicOrderAt (f ∘ fun z : ℂ => z ^ 2) u =
      meromorphicOrderAt f (u ^ 2) := by
  apply meromorphicOrderAt_comp_of_deriv_ne_zero (f := f) (g := fun z : ℂ => z ^ 2)
  · fun_prop
  · rw [deriv_square]
    exact mul_ne_zero (by norm_num) hu

end

end GRWTSK.Analysis.ComplexAnalysis.PairedProduct.MeromorphicSquareComposition
