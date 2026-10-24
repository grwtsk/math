# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourcePeanoBoundaryAtoms.Variant6aa4600ee864ec07b0b723df33faed6903f3ca68ac36925dce4853897229f72d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c6d7b97c9303c71fa0f47b54961cbae4e4f1548` · SHA-256 `6aa4600ee864ec07b0b723df33faed6903f3ca68ac36925dce4853897229f72d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-!
# Actual boundary Peano curvature and the full finite atom readout

The reflected source primitive retains the exact scale A⁹ exp(-A). Its ordinary
curvature is paired with every atom of the original closed prime-power inventory.
No smooth density is assigned to that inventory, and source-primitive positivity
does not assert positivity or a source-resolution bound for its curvature readout.

Research direction, source selection and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex, from the attached ChatGPT Peano proof note.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms

open SourcePairing SourcePositivePeanoPrimitive SourcePeanoProfileTransport
open SourceMangoldtAbel SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimatePrimeSmoothDefect EstimateMertensResidual PrimePowerDescent

/-- The source-resolution scale is explicit and is never absorbed into a free constant. -/
def peanoScale (A : ℝ) : ℝ := A ^ 9 * Real.exp (-A)

/-- The actual source primitive is reflected across the literal upper support endpoint. -/
def boundaryPeano (A y : ℝ) : ℝ :=
  peanoScale A * sourcePeanoPrimitive A (2 * A - y)

/-- The actual reflected correlation keeps its A⁹ amplitude before exponential weighting. -/
def boundaryKernel (A y : ℝ) : ℝ :=
  A ^ 9 * sourceCorrelation explicitSecondDerivative A (2 * A - y)

/-- Reflection and a fixed-scale multiplier preserve the actual primitive's global C². -/
theorem boundaryPeano_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (boundaryPeano A) := by
  unfold boundaryPeano
  exact contDiff_const.mul ((sourcePeanoPrimitive_contDiff_two hA).comp
    (show ContDiff ℝ 2 (fun y : ℝ => 2 * A - y) by fun_prop))

private theorem boundaryPeano_second_deriv_eq_scaled {A : ℝ}
    (hA : 0 < A) (y : ℝ) :
    deriv (deriv (boundaryPeano A)) y =
      peanoScale A * deriv (deriv (sourcePeanoPrimitive A)) (2 * A - y) := by
  have hp := sourcePeanoPrimitive_contDiff_two hA
  have hp1 : ContDiff ℝ 1 (deriv (sourcePeanoPrimitive A)) := hp.deriv'
  have hc (s : ℝ) : HasDerivAt (fun z => (2 : ℝ) * A - z) (-1) s := by
    simpa only [id_eq] using (hasDerivAt_id s).const_sub ((2 : ℝ) * A)
  have hd : deriv (boundaryPeano A) =
      fun s => -peanoScale A * deriv (sourcePeanoPrimitive A) (2 * A - s) := by
    funext s
    have h := ((hp.differentiable (by norm_num) (2 * A - s)).hasDerivAt.comp s
      (hc s)).const_mul (peanoScale A)
    exact (h.congr_deriv (by ring)).deriv
  have h := ((hp1.differentiable (by norm_num) (2 * A - y)).hasDerivAt.comp y
    (hc y)).const_mul (-peanoScale A)
  rw [hd]
  exact (h.congr_deriv (by ring)).deriv

/-- Two reflection derivatives give a plus sign and the exact boundary exponential. -/
theorem boundaryPeano_second_deriv {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (deriv (boundaryPeano A)) y = Real.exp (-y / 2) * boundaryKernel A y := by
  rw [boundaryPeano_second_deriv_eq_scaled hA, sourcePeanoPrimitive_second_deriv hA]
  unfold peanoScale boundaryKernel
  have he : Real.exp (-A) * Real.exp ((2 * A - y) / 2) = Real.exp (-y / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    _ = A ^ 9 * (Real.exp (-A) * Real.exp ((2 * A - y) / 2)) *
        sourceCorrelation explicitSecondDerivative A (2 * A - y) := by ring
    _ = _ := by rw [he]; ring

/-- Positivity is transported only for the source primitive on its certified closed interval. -/
theorem boundaryPeano_nonneg {A y : ℝ} (hA : 0 < A)
    (hthreshold : (136 / 7 : ℝ) ≤ A ^ 2) (hy0 : 0 ≤ y) (hy2 : y ≤ 2 * A) :
    0 ≤ boundaryPeano A y := by
  unfold boundaryPeano
  exact mul_nonneg (by unfold peanoScale; positivity)
    (sourcePeanoPrimitive_nonneg hA hthreshold (by linarith) (by linarith))

/-- Every original closed prime-power atom is retained with its literal Λ(n)/n coefficient. -/
theorem peanoScale_mul_closedPrimeMoment_eq_atoms {A : ℝ} (hA : 0 < A) :
    peanoScale A * closedPrimeMoment A =
      ∑ n ∈ primePowerInventory (2 * A),
        ArithmeticFunction.vonMangoldt n / (n : ℝ) *
          deriv (deriv (boundaryPeano A)) (2 * A - Real.log n) := by
  rw [closedPrimeMoment_eq_mangoldtLogSum, mangoldtLogSum, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  rw [boundaryPeano_second_deriv_eq_scaled hA,
    show 2 * A - (2 * A - Real.log (n : ℝ)) = Real.log n by ring,
    sourcePeanoPrimitive_second_deriv hA]
  unfold criticalPrimeTest
  ring

/-- The unchanged Mertens residual has the same normalized full finite atom readout. -/
theorem peanoScale_mul_mertensResidual_eq_atoms {A : ℝ} (hA : 1 ≤ A) :
    peanoScale A * mertensResidual A =
      ∑ n ∈ primePowerInventory (2 * A),
        ArithmeticFunction.vonMangoldt n / (n : ℝ) *
          deriv (deriv (boundaryPeano A)) (2 * A - Real.log n) := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  exact peanoScale_mul_closedPrimeMoment_eq_atoms (by linarith)

end FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms
```
