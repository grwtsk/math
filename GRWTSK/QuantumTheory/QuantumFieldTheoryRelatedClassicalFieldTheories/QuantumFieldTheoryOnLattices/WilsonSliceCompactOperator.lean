/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib compact-operator theory retains Anatole Dedecker's upstream
authorship and Apache-2.0 license. Imports retain attribution/licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceArzelaAscoli
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonSliceInvariantOperatorPositive
import Mathlib.Analysis.Normed.Operator.Compact.Basic

/-!
# Compactness of the actual slice operator and its actual invariant restriction

The paid Arzela--Ascoli result first makes the distinguished real continuous
output map compact. Postcomposition with the actual continuous-to-L2 map
gives compactness of the maintained operator. Restriction uses the proved
range inclusion and closedness of the existing fixed Hilbert subspace;
the closed-subtype topology is paid by the maintained compact restriction
theorem, rather than assumed to preserve compactness.

Together with the imported, separately proved positivity/self-adjointness
this prepares the compact spectral theorem. No strict positivity, infinite
rank, eigenvalue sequence, reflection-domain density or physical gap is claimed.
At beta0 the existing actual rank-one mean map remains unchanged.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.WilsonSliceCompactOperator

open MeasureTheory
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGeometry
open GRWTSK.Geometry.GaugeTheory.WilsonSliceHaar
open GRWTSK.Geometry.GaugeTheory.WilsonSliceIntegralRepresentative
open GRWTSK.Geometry.GaugeTheory.WilsonSliceL2Operator
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceArzelaAscoli

variable (L : ℕ) [NeZero L]

theorem toContinuous_isCompactOperator (β : ℝ) (hβ : 0 ≤ β) :
    IsCompactOperator (toContinuous L β hβ) := by
  apply (isCompactOperator_iff_isCompact_closure_image_closedBall
    (toContinuous L β hβ).toLinearMap (by norm_num : (0 : ℝ) < 1)).mpr
  exact isCompact_closure_unitBallImage L β hβ

theorem operator_isCompactOperator (β : ℝ) (hβ : 0 ≤ β) :
    IsCompactOperator (operator L β hβ) :=
  (toContinuous_isCompactOperator L β hβ).clm_comp
    (ContinuousMap.toLp 2 (sliceHaar L) ℝ)

/-- Both domain and codomain are the existing closed gauge-invariant L2 subspace. -/
theorem invariantOperator_isCompactOperator (β : ℝ) (hβ : 0 ≤ β) :
    IsCompactOperator (invariantOperator L β hβ) :=
  IsCompactOperator.restrict (f := (operator L β hβ).toLinearMap)
    (operator_isCompactOperator L β hβ) (V := gaugeInvariantSpace L)
    (fun f _ => operator_mem_gaugeInvariantSpace L β hβ f)
    (gaugeInvariantSpace_isClosed L)

end GRWTSK.Geometry.GaugeTheory.WilsonSliceCompactOperator
