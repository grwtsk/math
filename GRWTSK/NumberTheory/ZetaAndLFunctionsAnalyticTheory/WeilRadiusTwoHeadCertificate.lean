/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import RadiusTwoHeadAllModes
import RadiusTwoHeadAllRows

/-!
# The finite literal radius-two head at shift `-1/2`

The isolated scalar witness checks the retained boundary and gamma sums,
signed prime terms and pole observations against the canonical rational
formulas. The row witness pays their entry radii and compares a finite
dyadic LDL minorant. The consumer returns the sign of the literal
65-coordinate bordered head. The head sign is a finite compression
result. The reconstructed trial, complete residual and high-floor
comparison remain separate requirements for the whole window.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateHead

open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates (quadratic)
open GRWTSK.LinearAlgebra.SchurObserver (shiftedBlock poleShiftMetric)
open RadiusTwoCandidateEntries (Head)

/-- Nonnegativity of the literal finite bordered head. -/
theorem quadratic_head_nonneg (v : Head → ℝ) :
    0 ≤ quadratic (shiftedBlock (OddSchurAccounting.borderedSourceMatrix 2 64)
      poleShiftMetric (-1 / 2)) v :=
  RadiusTwoHeadPacket.exact_head_sign checkedModes checkedRows v

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateHead
