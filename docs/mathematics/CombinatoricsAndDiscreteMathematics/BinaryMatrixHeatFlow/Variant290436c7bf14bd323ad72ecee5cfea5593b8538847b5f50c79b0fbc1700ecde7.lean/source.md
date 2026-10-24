# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BinaryMatrixHeatFlow.Variant290436c7bf14bd323ad72ecee5cfea5593b8538847b5f50c79b0fbc1700ecde7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8baddd537cc14f42f18aba8358b75e5c95ece0f7` · SHA-256 `68de7b3b15c66e100c67412577944c07c0165521484d17619aa4d8f80382e4b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.QuasiLaplacianCompatibility.Variantfd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.QuasiLaplacianCompatibility.Variantfd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"fd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/DiscreteGeometry/BinaryMatrixHeatFlow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.DiscreteGeometry.BinaryMatrixRefinement

/-!
# Folder.Rebuild.DiscreteGeometry.BinaryMatrixHeatFlow

Finite graph heat steps and quasi-compatibility across refinement levels.

On each finite sampled graph the heat equation is the exact discrete equation
`du/dt = -L u`.  This module proves the first refinement-facing statement:
if the coarse and fine Laplacians quasi-commute with zoom-out, then one explicit
Euler heat step quasi-commutes with zoom-out as well.

No matrix exponential or continuum Laplace--Beltrami limit is claimed here.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.QuasiLaplacianCompatibility.Variantfd0eaa4d82e4f70bb8aaa1b557cd942b38225c530dca36dc61eddf971249aa37

namespace Folder
namespace Rebuild
namespace DiscreteGeometry

noncomputable section

/-- A finite-signal operator step for the heat equation `du/dt = -L u`. -/
def heatEulerStep
    {V : Type}
    (L : (V → ℝ) → V → ℝ)
    (η : ℝ)
    (f : V → ℝ) : V → ℝ :=
  fun x => f x - η * L f x

/-- The Euler heat step for the Γ-kernel graph Laplacian. -/
def graphHeatEulerStep
    {V : Type}
    [Fintype V]
    (state : V → PaddedBitState)
    (Γ : GammaWeight)
    (ε η : ℝ)
    (f : V → ℝ) : V → ℝ :=
  heatEulerStep (graphLaplacian state Γ ε) η f

@[simp]
theorem graphHeatEulerStep_const
    {V : Type}
    [Fintype V]
    (state : V → PaddedBitState)
    (Γ : GammaWeight)
    (ε η c : ℝ) :
    graphHeatEulerStep state Γ ε η (fun _ : V => c) = fun _ => c := by
  funext x
  simp [graphHeatEulerStep, heatEulerStep]

/--
Quasi-commutation of coarse and fine Laplacians with a zoom-out map.

The zoom map is required to preserve subtraction and scalar multiplication.
Those linearity hypotheses are proof-relevant: without them the Euler-step
compatibility theorem would not follow from Laplacian quasi-commutation.
-/
structure QuasiLaplacianCompatibility
    (Coarse Fine : Type)
    [Fintype Coarse]
    [Fintype Fine] where
  zoom : (Fine → ℝ) → Coarse → ℝ
  Lc : (Coarse → ℝ) → Coarse → ℝ
  Lf : (Fine → ℝ) → Fine → ℝ
  error : ℝ
  error_nonneg : 0 ≤ error
  zoom_sub :
    ∀ f g, zoom (fun x => f x - g x) = fun y => zoom f y - zoom g y
  zoom_const_mul :
    ∀ a f, zoom (fun x => a * f x) = fun y => a * zoom f y
  quasi_commutes :
    ∀ f, ‖zoom (Lf f) - Lc (zoom f)‖ ≤ error * ‖f‖

namespace QuasiLaplacianCompatibility

variable
    {Coarse Fine : Type}
    [Fintype Coarse]
    [Fintype Fine]
    (Q : QuasiLaplacianCompatibility Coarse Fine)

/-- The Laplacian commutator controlled by a quasi-compatibility datum. -/
def laplacianCommutator
    (f : Fine → ℝ) : Coarse → ℝ :=
  Q.zoom (Q.Lf f) - Q.Lc (Q.zoom f)

theorem laplacianCommutator_bound
    (f : Fine → ℝ) :
    ‖Q.laplacianCommutator f‖ ≤ Q.error * ‖f‖ :=
  Q.quasi_commutes f

/--
Exact algebraic identity for one heat Euler step.

The Euler-step commutator is just `-η` times the Laplacian commutator.
-/
theorem heatEulerStep_commutator_identity
    (η : ℝ)
    (f : Fine → ℝ) :
    Q.zoom (heatEulerStep Q.Lf η f) -
        heatEulerStep Q.Lc η (Q.zoom f) =
      fun x => -η * (Q.laplacianCommutator f x) := by
  funext x
  unfold heatEulerStep laplacianCommutator
  rw [Q.zoom_sub, Q.zoom_const_mul]
  simp only [Pi.sub_apply]
  ring

/--
Discrete Euler-step quasi-heat-flow compatibility.

This is the first checked heat-flow statement across refinement levels:
heat first and zoom out differs from zoom first and heat by at most
`|η| * error * ‖f‖`.
-/
theorem heatEulerStep_quasi_commutes
    (η : ℝ)
    (f : Fine → ℝ) :
    ‖Q.zoom (heatEulerStep Q.Lf η f) -
        heatEulerStep Q.Lc η (Q.zoom f)‖ ≤
      |η| * Q.error * ‖f‖ := by
  have hcomm := Q.quasi_commutes f
  have hid := Q.heatEulerStep_commutator_identity η f
  rw [hid]
  have hnorm :
      ‖(fun x => -η * Q.laplacianCommutator f x)‖ =
        |η| * ‖Q.laplacianCommutator f‖ := by
    calc
      ‖(fun x => -η * Q.laplacianCommutator f x)‖
          = ‖(-η : ℝ) • Q.laplacianCommutator f‖ := by
              rfl
      _ = ‖(-η : ℝ)‖ * ‖Q.laplacianCommutator f‖ :=
              norm_smul _ _
      _ = |η| * ‖Q.laplacianCommutator f‖ := by
              simp [Real.norm_eq_abs]
  rw [hnorm]
  calc
    |η| * ‖Q.laplacianCommutator f‖
        ≤ |η| * (Q.error * ‖f‖) := by
            exact mul_le_mul_of_nonneg_left hcomm (abs_nonneg η)
    _ = |η| * Q.error * ‖f‖ := by
            ring

theorem heatEulerStep_quasi_commutes_of_nonneg_step
    {η : ℝ}
    (hη : 0 ≤ η)
    (f : Fine → ℝ) :
    ‖Q.zoom (heatEulerStep Q.Lf η f) -
        heatEulerStep Q.Lc η (Q.zoom f)‖ ≤
      η * Q.error * ‖f‖ := by
  simpa [abs_of_nonneg hη] using Q.heatEulerStep_quasi_commutes η f

theorem laplacian_commutes_of_zero_error
    (herror : Q.error = 0)
    (f : Fine → ℝ) :
    Q.zoom (Q.Lf f) = Q.Lc (Q.zoom f) := by
  have h := Q.quasi_commutes f
  rw [herror, zero_mul] at h
  have hnorm :
      ‖Q.zoom (Q.Lf f) - Q.Lc (Q.zoom f)‖ = 0 :=
    le_antisymm h (norm_nonneg _)
  exact sub_eq_zero.mp (norm_eq_zero.mp hnorm)

theorem heatEulerStep_commutes_of_zero_error
    (herror : Q.error = 0)
    (η : ℝ)
    (f : Fine → ℝ) :
    Q.zoom (heatEulerStep Q.Lf η f) =
      heatEulerStep Q.Lc η (Q.zoom f) := by
  have hcomm := Q.laplacian_commutes_of_zero_error herror f
  have hid := Q.heatEulerStep_commutator_identity η f
  apply sub_eq_zero.mp
  rw [hid]
  funext x
  simp [laplacianCommutator, hcomm]

end QuasiLaplacianCompatibility

end

end DiscreteGeometry
end Rebuild
end Folder
```
