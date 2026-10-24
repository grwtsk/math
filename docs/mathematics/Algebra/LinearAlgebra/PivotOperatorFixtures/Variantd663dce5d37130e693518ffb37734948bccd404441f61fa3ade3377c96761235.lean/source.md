# Complete source: GRWTSK.Algebra.LinearAlgebra.PivotOperatorFixtures.Variantd663dce5d37130e693518ffb37734948bccd404441f61fa3ade3377c96761235

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9094266754f81ad0c0f65af4494583561ee319cd` · SHA-256 `d663dce5d37130e693518ffb37734948bccd404441f61fa3ade3377c96761235`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Grassmannian.PivotOperatorBounds
import FormalResearch.PositiveAtlas.Grassmannian.PivotTransitionFixtures
import FormalResearch.PositiveAtlas.Grassmannian.PivotControlledTopology

/-!
# Concrete Euclidean operator consumers

Human direction, theorem selection, and evaluation: grwtsk contributors.
AI-assisted formal implementation: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

open scoped Matrix.Norms.L2Operator

/-- Intrinsic controlled membership gives the actual frame-normalization operator budget. -/
theorem intrinsicControlledPivot_normalization_bound {k n : ℕ}
    (A : FullRankFrame k n) (hA : A.val * A.val.transpose = 1)
    (I : Fin k ↪o Fin n) (hI : representedPlane A ∈ intrinsicControlledPivotDomain I) :
    ‖pivotNormalize A.val I‖ ≤ 2 * Real.sqrt (n.choose k : ℝ) :=
  controlledCover_normalization_bound A.val hA I
    ((orthonormal_representedPlane_mem_intrinsicControlledPivotDomain_iff A hA I).mp hI)

/-- Every intrinsic controlled overlap supplies both directions of the actual matrix budget. -/
theorem intrinsicControlledPivot_transition_bounds {k n : ℕ}
    (A : FullRankFrame k n) (hA : A.val * A.val.transpose = 1)
    (I J : Fin k ↪o Fin n) (hI : representedPlane A ∈ intrinsicControlledPivotDomain I)
    (hJ : representedPlane A ∈ intrinsicControlledPivotDomain J) :
    ‖pivotTransition A.val I J‖ ≤ 2 * Real.sqrt (n.choose k : ℝ) ∧
      ‖(pivotTransition A.val I J)⁻¹‖ ≤ 2 * Real.sqrt (n.choose k : ℝ) :=
  controlledCover_transition_bounds A.val hA I J
    ((orthonormal_representedPlane_mem_intrinsicControlledPivotDomain_iff A hA I).mp hI)
    ((orthonormal_representedPlane_mem_intrinsicControlledPivotDomain_iff A hA J).mp hJ)

/-- Each intrinsic plane has one controlled chart with the same bound on every orthonormal representative. -/
theorem intrinsicPlane_controlled_normalization_budget {k n : ℕ} (P : IntrinsicPlane k n) :
    ∃ I : Fin k ↪o Fin n, P ∈ intrinsicControlledPivotDomain I ∧
      ∀ A : FullRankFrame k n, representedPlane A = P → A.val * A.val.transpose = 1 →
        ‖pivotNormalize A.val I‖ ≤ 2 * Real.sqrt (n.choose k : ℝ) := by
  obtain ⟨I, hI⟩ := intrinsicControlledPivotDomain_cover P
  refine ⟨I, hI, ?_⟩
  intro A hAP hA
  apply intrinsicControlledPivot_normalization_bound A hA I
  rw [hAP]
  exact hI

namespace ProjectiveLine

/-- The controlled cover gives a concrete uniform operator budget on the real line atlas. -/
theorem line_atlas_controlled_normalization (t : ℝ) :
    ∃ I : Fin 1 ↪o Fin 2,
      unitFrame t ∈ controlledPivotDomain I ∧
        ‖pivotNormalize (unitFrame t) I‖ ≤ 2 * Real.sqrt 2 := by
  obtain ⟨I, hI⟩ := controlledPivotDomain_cover (unitFrame t) (unitFrame_orthonormal t)
  refine ⟨I, hI, ?_⟩
  simpa using controlledCover_normalization_bound (unitFrame t) (unitFrame_orthonormal t) I hI

end ProjectiveLine

end

end FormalResearch.PositiveAtlas.Grassmannian
```
