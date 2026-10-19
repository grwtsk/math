/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license; see LICENSE.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Historical human/machine authoring split unknown. Upstream Lean and mathlib authors,
formalizations and licenses retain their identities.
-/
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Algebra.Order.Archimedean.Real.Basic
import Mathlib.Tactic.NormNum

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace GRWTSK.RiemannHypothesis

/-!
# Scope and sign counterexamples

These guards expose specific invalid inference schemas. No counterexample to RH
is asserted. Four symmetry maps need not give four distinct points on a zero orbit.
-/


/-- A Hermitian matrix can have a strictly negative quadratic direction. -/
theorem hermitian_does_not_imply_positive_semidefinite :
    (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).IsHermitian ∧
      ¬ (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).PosSemidef := by
  constructor
  · simp [Matrix.IsHermitian]
  · intro h
    have hbad := h.dotProduct_mulVec_nonneg (fun _ ↦ 1)
    norm_num [dotProduct, Matrix.mulVec] at hbad




end GRWTSK.RiemannHypothesis
