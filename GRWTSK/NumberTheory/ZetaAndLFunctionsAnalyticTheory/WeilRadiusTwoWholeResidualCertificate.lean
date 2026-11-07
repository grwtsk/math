/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoResidualFiniteBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddConcreteResidual
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoObservedResidual
import R2RectAllRows
import R2PhysicalOverlapBlock000
import R2PhysicalOverlapBlock001
import R2PhysicalOverlapBlock002
import R2PhysicalOverlapBlock003
import R2PhysicalOverlapBlock004
import R2PhysicalOverlapBlock005
import R2PhysicalOverlapBlock006
import R2PhysicalOverlapBlock007
import R2PhysicalOverlapBlock008
import R2PhysicalOverlapBlock009
import R2PhysicalOverlapBlock010
import R2PhysicalOverlapBlock011
import R2PhysicalOverlapBlock012
import R2PhysicalOverlapBlock013
import R2PhysicalOverlapBlock014
import R2PhysicalOverlapBlock015
import R2PhysicalOverlapBlock016
import R2PhysicalOverlapBlock017
import R2PhysicalOverlapBlock018
import R2PhysicalOverlapBlock019
import R2PhysicalOverlapBlock020
import R2PhysicalOverlapBlock021
import R2PhysicalOverlapBlock022
import R2PhysicalOverlapBlock023
import R2PhysicalOverlapBlock024
import R2PhysicalOverlapBlock025
import R2PhysicalOverlapBlock026
import R2PhysicalOverlapBlock027
import R2PhysicalOutsideTrialBlock
import R2PhysicalOutsideTrialBlock029
import R2PhysicalOutsideTrialBlock030
import R2PhysicalOutsideTrialBlock031
import R2PhysicalOutsideTrialBlock032
import R2PhysicalOutsideTrialBlock033
import R2PhysicalOutsideTrialBlock034
import R2PhysicalOutsideTrialBlock035
import R2PhysicalOutsideTrialBlock036
import R2PhysicalOutsideTrialBlock037
import R2PhysicalOutsideTrialBlock038
import R2PhysicalOutsideTrialBlock039
import R2PhysicalOutsideTrialBlock040
import R2PhysicalOutsideTrialBlock041
import R2PhysicalOutsideTrialBlock042
import R2PhysicalOutsideTrialBlock043
import R2PhysicalOutsideTrialBlock044
import R2PhysicalOutsideTrialBlock045
import R2PhysicalOutsideTrialBlock046
import R2PhysicalOutsideTrialBlock047
import R2PhysicalOutsideTrialBlock048
import R2PhysicalOutsideTrialBlock049
import R2PhysicalOutsideTrialBlock050
import R2PhysicalOutsideTrialBlock051
import R2PhysicalOutsideTrialBlock052
import R2PhysicalOutsideTrialBlock053
import R2PhysicalOutsideTrialBlock054
import R2PhysicalOutsideTrialBlock055
import R2PhysicalOutsideTrialBlock056
import R2PhysicalOutsideTrialBlock057
import R2PhysicalOutsideTrialBlock058
import R2PhysicalOutsideTrialBlock059
import R2PhysicalOutsideTrialBlock060
import R2PhysicalOutsideTrialBlock061
import R2PhysicalOutsideTrialBlock062
import R2PhysicalOutsideTrialBlock063
import R2PhysicalOutsideTrialBlock064
import R2PhysicalOutsideTrialBlock065
import R2PhysicalOutsideTrialBlock066
import R2PhysicalOutsideTrialBlock067
import R2PhysicalOutsideTrialBlock068
import R2PhysicalOutsideTrialBlock069
import R2PhysicalOutsideTrialBlock070
import R2PhysicalOutsideTrialBlock071
import R2PhysicalOutsideTrialBlock072
import R2PhysicalOutsideTrialBlock073
import R2PhysicalOutsideTrialBlock074
import R2PhysicalOutsideTrialBlock075
import R2PhysicalOutsideTrialBlock076
import R2PhysicalOutsideTrialBlock077
import R2PhysicalOutsideTrialBlock078
import R2PhysicalOutsideTrialBlock079
import R2PhysicalOutsideTrialBlock080
import R2PhysicalOutsideTrialBlock081
import R2PhysicalOutsideTrialBlock082
import R2PhysicalOutsideTrialBlock083
import R2PhysicalOutsideTrialBlock084
import R2PhysicalOutsideTrialBlock085
import R2PhysicalOutsideTrialBlock086
import R2PhysicalOutsideTrialBlock087
import R2PhysicalOutsideTrialBlock088
import R2PhysicalOutsideTrialBlock089
import R2PhysicalOutsideTrialBlock090
import R2PhysicalOutsideTrialBlock091
import R2PhysicalOutsideTrialBlock092
import R2PhysicalOutsideTrialBlock093
import R2PhysicalOutsideTrialBlock094
import R2PhysicalOutsideTrialBlock095
import R2PhysicalOutsideTrialBlock096
import R2PhysicalOutsideTrialBlock097
import R2PhysicalOutsideTrialBlock098
import R2PhysicalOutsideTrialBlock099
import R2PhysicalOutsideTrialBlock100
import R2PhysicalOutsideTrialBlock101
import R2PhysicalOutsideTrialBlock102
import R2PhysicalOutsideTrialBlock103
import R2PhysicalOutsideTrialBlock104
import R2PhysicalOutsideTrialBlock105
import R2PhysicalOutsideTrialBlock106
import R2PhysicalOutsideTrialBlock107
import R2PhysicalOutsideTrialBlock108
import R2PhysicalOutsideTrialBlock109
import R2PhysicalOutsideTrialBlock110
import R2PhysicalOutsideTrialBlock111
import R2PhysicalOutsideTrialBlock112
import R2PhysicalOutsideTrialBlock113
import R2PhysicalOutsideTrialBlock114
import R2PhysicalOutsideTrialBlock115
import R2PhysicalOutsideTrialBlock116
import R2PhysicalOutsideTrialBlock117
import R2PhysicalOutsideTrialBlock118
import R2PhysicalOutsideTrialBlock119
import R2PhysicalOutsideTrialBlock120
import R2PhysicalOutsideTrialBlock121
import R2PhysicalOutsideTrialBlock122
import R2PhysicalOutsideTrialBlock123

/-!
# The whole radius-two residual on the frozen reconstruction

This isolated certificate consumes every checked physical entry block,
covering all 1984 observed rows and all 513 physical/pole columns. The
bijection of block and lane indices closes the literal entry premise.
The complete remote comparison then bounds the infinite row sum beyond
mode 2048, retaining trace modes through 8192 and its entire remainder.
The signed pole and physical shift `-1/2` keep their literal definitions.

The numerical consumer gives a squared residual norm at most `2/3`
times the squared 65-coordinate retained-vector norm. Its elementary
row-sum and finite-error estimates are in the separate maintained
finite-bounds module. No high floor, paid lower sign, cofinal family or
critical-line conclusion follows from this residual estimate alone.
Source entry comparisons and finite numerical products share the frozen
arrays; independent analytical review is pending and no novelty claim
is made. The generated witness imports belong to the isolated replay,
with the root Lean and Mathlib pins unchanged.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoWholeResidualCertificate

open GRWTSK.NumberTheory.WeilQuadraticForm
open RadiusTwoCandidateEntries RadiusTwoObservedResidual OddTrialResidualMatrix

private def slot (b : Fin 124) (i : Fin 16) : ResidualRows :=
  ⟨16*b.val+i.val, by omega⟩

private theorem block (b : Fin 124) (i : Fin 16) (j : Fin 513) :
    |literalTrialResidualMatrix 2 (-1/2) 64 512 2048 (slot b i) (_root_.GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPhysicalGrid.trialSlot j) -
      ((R2Rect.observedCentresBlocks[b.val]!) i j : ℝ)/2^45| ≤
      ((R2Rect.observedRadiiBlocks[b.val]!) i j : ℝ)/2^45 := by
  fin_cases b
  · exact R2PhysicalOverlapBlock000.allEnclosures i j
  · exact R2PhysicalOverlapBlock001.allEnclosures i j
  · exact R2PhysicalOverlapBlock002.allEnclosures i j
  · exact R2PhysicalOverlapBlock003.allEnclosures i j
  · exact R2PhysicalOverlapBlock004.allEnclosures i j
  · exact R2PhysicalOverlapBlock005.allEnclosures i j
  · exact R2PhysicalOverlapBlock006.allEnclosures i j
  · exact R2PhysicalOverlapBlock007.allEnclosures i j
  · exact R2PhysicalOverlapBlock008.allEnclosures i j
  · exact R2PhysicalOverlapBlock009.allEnclosures i j
  · exact R2PhysicalOverlapBlock010.allEnclosures i j
  · exact R2PhysicalOverlapBlock011.allEnclosures i j
  · exact R2PhysicalOverlapBlock012.allEnclosures i j
  · exact R2PhysicalOverlapBlock013.allEnclosures i j
  · exact R2PhysicalOverlapBlock014.allEnclosures i j
  · exact R2PhysicalOverlapBlock015.allEnclosures i j
  · exact R2PhysicalOverlapBlock016.allEnclosures i j
  · exact R2PhysicalOverlapBlock017.allEnclosures i j
  · exact R2PhysicalOverlapBlock018.allEnclosures i j
  · exact R2PhysicalOverlapBlock019.allEnclosures i j
  · exact R2PhysicalOverlapBlock020.allEnclosures i j
  · exact R2PhysicalOverlapBlock021.allEnclosures i j
  · exact R2PhysicalOverlapBlock022.allEnclosures i j
  · exact R2PhysicalOverlapBlock023.allEnclosures i j
  · exact R2PhysicalOverlapBlock024.allEnclosures i j
  · exact R2PhysicalOverlapBlock025.allEnclosures i j
  · exact R2PhysicalOverlapBlock026.allEnclosures i j
  · exact R2PhysicalOverlapBlock027.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock029.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock030.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock031.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock032.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock033.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock034.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock035.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock036.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock037.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock038.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock039.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock040.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock041.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock042.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock043.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock044.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock045.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock046.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock047.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock048.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock049.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock050.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock051.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock052.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock053.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock054.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock055.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock056.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock057.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock058.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock059.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock060.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock061.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock062.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock063.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock064.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock065.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock066.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock067.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock068.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock069.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock070.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock071.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock072.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock073.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock074.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock075.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock076.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock077.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock078.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock079.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock080.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock081.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock082.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock083.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock084.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock085.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock086.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock087.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock088.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock089.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock090.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock091.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock092.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock093.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock094.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock095.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock096.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock097.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock098.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock099.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock100.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock101.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock102.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock103.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock104.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock105.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock106.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock107.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock108.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock109.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock110.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock111.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock112.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock113.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock114.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock115.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock116.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock117.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock118.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock119.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock120.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock121.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock122.allEnclosures i j
  · exact R2PhysicalOutsideTrialBlock123.allEnclosures i j

private theorem lanes (i : ResidualRows) (j : Fin 513) :
    |literalTrialResidualMatrix 2 (-1/2) 64 512 2048 i (_root_.GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPhysicalGrid.trialSlot j) -
      (R2Rect.observedCentres i j : ℝ)/2^45| ≤ (R2Rect.observedRadii i j : ℝ)/2^45 := by
  let b : Fin 124 := ⟨i.val/16, by have := i.isLt; omega⟩
  let k : Fin 16 := ⟨i.val%16, by omega⟩
  have hSlot : slot b k = i := by
    apply Fin.ext
    dsimp only [slot, b, k]
    omega
  simpa only [hSlot, R2Rect.observedCentres, R2Rect.observedRadii] using block b k j

theorem entries (i : ResidualRows) (j : Trial) :
    |literalTrialResidualMatrix 2 (-1/2) 64 512 2048 i j -
      decodeGrid R2Rect.observedCentres i j| ≤ decodeGrid R2Rect.observedRadii i j :=
  entryEnclosures_of_grid _ _ i (lanes i) j

open OddInclusionWindow OddResidualSourceComparison OddRemoteAllowanceMatrix
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver

/-- Complete literal residual bound on the frozen observation matrices. -/
theorem bound (X : Matrix Trial Head ℝ) (v : Head → ℝ) (η : ℝ) (hη : 0 < η) :
    let x := inclusionTrial (X.mulVec v ∘ Sum.inl)
    let a := X.mulVec v (Sum.inr ())
    Summable (fun n : ℕ => (literalAugmentedRow 512 2 x a (-1/2) (65+n))^2) ∧
      (∑' n : ℕ, (literalAugmentedRow 512 2 x a (-1/2) (65+n))^2) ≤
        (1+η) * quadratic (reconstructionGram (decodeGrid R2Rect.observedCentres * X)) v +
          (1+η⁻¹) * (observationPrice (decodeGrid R2Rect.observedRadii) X * ∑ j : Head, (v j)^2) +
          quadratic (completeRemoteMatrix 512 2048 8192 2 (1/8)) (X.mulVec v) :=
  wholeResidual_bound_of_entries _ _ entries X v η hη

/-- Decode the frozen trial reconstruction on the exact physical and pole slots. -/
def reconstruction : Matrix Trial Head ℝ := RadiusTwoResidualFiniteBounds.X

theorem frozenBound (v : Head → ℝ) (η : ℝ) (hη : 0 < η) :
    let x := inclusionTrial (reconstruction.mulVec v ∘ Sum.inl)
    let a := reconstruction.mulVec v (Sum.inr ())
    Summable (fun n : ℕ => (literalAugmentedRow 512 2 x a (-1/2) (65+n))^2) ∧
      (∑' n : ℕ, (literalAugmentedRow 512 2 x a (-1/2) (65+n))^2) ≤
        (1+η) * quadratic (reconstructionGram (decodeGrid R2Rect.observedCentres * reconstruction)) v +
          (1+η⁻¹) * (observationPrice (decodeGrid R2Rect.observedRadii) reconstruction * ∑ j : Head, (v j)^2) +
          quadratic (completeRemoteMatrix 512 2048 8192 2 (1/8)) (reconstruction.mulVec v) :=
  bound reconstruction v η hη

/-- Every literal high residual coefficient is square summable, and its
complete squared sum is bounded on the actual frozen reconstruction. -/
theorem normBound (v : Head → ℝ) :
    let x := inclusionTrial (reconstruction.mulVec v ∘ Sum.inl)
    let a := reconstruction.mulVec v (Sum.inr ())
    Summable (fun n : ℕ => (literalAugmentedRow 512 2 x a (-1/2) (65+n))^2) ∧
      (∑' n : ℕ, (literalAugmentedRow 512 2 x a (-1/2) (65+n))^2) ≤
        (2/3:ℝ)*∑ j : Head, v j^2 :=
  RadiusTwoResidualFiniteBounds.normBound_of_entries entries v

open MeasureTheory Set OddConcreteResidual OddSineHeadRemoval OddResidualParseval OddSineParseval

/-- The actual pointwise finite-trial output with its first64 sine modes removed. -/
def physicalResidual (v : Head → ℝ) : ℝ → ℝ :=
  removeSineHead 2 64 (borderedTrialOutput 2 (-1/2)
    (reconstruction.mulVec v ∘ Sum.inl) (reconstruction.mulVec v (Sum.inr ())))

/-- The same bound for the complete squared Lebesgue norm of the actual
physical high residual. Parseval uses the literal source sine normalization. -/
theorem physicalNormBound (v : Head → ℝ) :
    (∫ t : ℝ, ‖physicalResidual v t‖^2) ≤ (2/3:ℝ)*∑ j : Head, v j^2 := by
  let y := reconstruction.mulVec v ∘ Sum.inl
  let a := reconstruction.mulVec v (Sum.inr ())
  have hLp := borderedTrialOutput_memLp 2 (by norm_num) (-1/2) y a
  have hP : HasSum (fun n : ℕ => sineCoefficient 2 (physicalResidual v) (65+n)^2)
      (∫ t : ℝ, ‖physicalResidual v t‖^2) :=
    highSine_sq_hasSum 2 (by norm_num) (removeSineHead_memLp 2 64 hLp)
      (removeSineHead_odd 2 64 (Filter.Eventually.of_forall (borderedTrialOutput_odd 2 (-1/2) y a)))
      (removeSineHead_support 2 64 (Filter.Eventually.of_forall
        (fun _ ht => borderedTrialOutput_support 2 (-1/2) y a ht)))
      (fun n hn => sineCoefficient_removeSineHead_low 2 (by norm_num) hLp hn)
  have hRows (n : ℕ) : sineCoefficient 2 (physicalResidual v) (65+n) =
      literalAugmentedRow 512 2 (inclusionTrial y) a (-1/2) (65+n) := by
    change sineCoefficient 2 (removeSineHead 2 64
      (borderedTrialOutput 2 (-1/2) y a)) (65+n) = _
    rw [sineCoefficient_removeSineHead_high 2 (by norm_num) hLp (by omega)]
    simpa only [inclusionTrial_succ, show 64+n+1 = 65+n by omega] using
      (sineCoefficient_borderedTrialOutput (M := 512) 2 (by norm_num) (-1/2)
        (inclusionTrial y) a (64+n))
  rw [← hP.tsum_eq]
  simp_rw [hRows]
  exact (normBound v).2

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoWholeResidualCertificate
