/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ConsecutiveSquareNodeSeparation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateSeed
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoGeometricSchurBudget

/-!
# Radius-two high floor from a complete compact Schur tape

The tape orders pivots by increasing physical mode. The finite Schur
chain indexes the same pivots by the dimension of the successor.
The suffix of dimension `n` starts at tape offset `N - n`. The
first row of the preceding suffix supplies the pivot for that step.
Reversal of the finite index set identifies the two price sums.

Consecutive square nodes give the required reciprocal separation on
every suffix. Exact magnitude and anchor replay give the local
integer checks with geometric caps. The original decoded seed and
its paid comparison to the literal matrix stay explicit.
Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCompactSchurReturn

open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurIntegerReplay StructuredSchurCompactReplay StructuredSchurNearestEven
open QuadraticCertificates FiniteSchurResidualChain ConsecutiveSquareNodeSeparation
open RadiusTwoCandidateSeed OddLiteralWindow
open scoped BigOperators

variable {r N : ℕ}

/-- Decode the seed using the original tape order and all five raw coordinates
when the tape has two generator pairs. -/
def decodedSeed (tape : Tape r N) (seed : Fin N → GridRow r) :
    Matrix (Fin N) (Fin N) ℝ :=
  decodeMatrix tape.node
    ⟨fun i => (seed i).diag, fun i => (seed i).v, fun i => (seed i).u⟩

private def chainNodes (tape : Tape r N) (n : ℕ) (hn : n ≤ N) : Fin n → ℤ :=
  tape.node ∘ suffixIndex 0 (N-n) (by omega)

private def chainState (tape : Tape r N) (seed : Fin N → GridRow r)
    (n : ℕ) (hn : n ≤ N) : RawState r n :=
  tape.stateAt 0 seed (N-n) (by omega)

private def chainMatrix (tape : Tape r N) (seed : Fin N → GridRow r) (n : ℕ) :
    Matrix (Fin n) (Fin n) ℝ :=
  if h : n ≤ N then decodeMatrix (chainNodes tape n h) (chainState tape seed n h) else 0

private def chainPivot (tape : Tape r N) (seed : Fin N → GridRow r) (n : ℕ) : ℝ :=
  if h : n < N then decodeGenerator ((chainState tape seed (n+1) (by omega)).diag 0) else 0

private def chainPrice (tape : Tape r N) (n : ℕ) : ℝ :=
  if h : n < N then price (tape.caps (Fin.rev ⟨n,h⟩)) else 0

private def chainColumn (tape : Tape r N) (seed : Fin N → GridRow r) (n : ℕ) : Fin n → ℝ :=
  if h : n < N then decodeColumn ∘ tape.columnAt 0 seed (N-(n+1)) (by omega) else 0

private theorem chainMatrix_seed (tape : Tape r N) (seed : Fin N → GridRow r) :
    chainMatrix tape seed N = decodedSeed tape seed := by
  have hIndex (i : Fin N) :
      suffixIndex 0 0 (show 0+0+N ≤ N by omega) i = i := by
    apply Fin.ext
    simp [suffixIndex]
  simp only [chainMatrix, dite_eq_left le_rfl, chainNodes, chainState, Nat.sub_self,
    Tape.stateAt, Function.comp_apply, Tape.rowAt, hIndex, decodedSeed]
  congr 1
  funext i
  change tape.node (suffixIndex 0 (N-N) _ i) = tape.node i
  apply congrArg tape.node
  apply Fin.ext
  simp [suffixIndex]

private theorem chainPrice_sum (tape : Tape r N) :
    (∑ n ∈ Finset.range N, chainPrice tape n) = ∑ p : Fin N, price (tape.caps p) := by
  rw [← Fin.sum_univ_eq_sum_range (chainPrice tape) N]
  calc
    (∑ i : Fin N, chainPrice tape i.val) =
        ∑ i : Fin N, price (tape.caps (Fin.rev i)) := by
          apply Finset.sum_congr rfl
          intro i _
          simp only [chainPrice, dite_eq_left i.isLt, Fin.eta]
    _ = ∑ p : Fin N, price (tape.caps p) :=
      Equiv.sum_comp Fin.revPerm (fun p : Fin N => price (tape.caps p))

private theorem strictMono_squareNodes (tape : Tape r N) (s : ℕ)
    (hNodes : ∀ i, tape.node i = ((s : ℤ) + (i.val : ℤ))^2) : StrictMono tape.node := by
  intro i j hij
  have hNat : i.val < j.val := hij
  have hInt : (i.val : ℤ) < (j.val : ℤ) := by exact_mod_cast hNat
  rw [hNodes i, hNodes j]
  have hSum : (s : ℤ) + (i.val : ℤ) < (s : ℤ) + (j.val : ℤ) := by omega
  exact pow_lt_pow_left₀ hSum (by positivity) (by decide : 2 ≠ 0)

private theorem stateAt_congr_offset (tape : Tape r N) (seed : Fin N → GridRow r)
    {k k' n : ℕ} (h : 0+k+n ≤ N) (h' : 0+k'+n ≤ N) (hk : k = k') :
    tape.stateAt 0 seed k h = tape.stateAt 0 seed k' h' := by
  subst k'
  rfl

private theorem chainStep_of_squareBlock (tape : Tape r N) (seed : Fin N → GridRow r)
    (s : ℕ) (hs : 65 ≤ s) (hNodes : ∀ i, tape.node i = ((s : ℤ) + (i.val : ℤ))^2)
    (hBlock : tape.BlockCaps 0 seed N (by omega)) (n : ℕ) (hn : n < N) :
    0 < chainPivot tape seed n ∧ 0 ≤ chainPrice tape n ∧
      ∀ x : Fin (n+1) → ℝ, -chainPrice tape n * ∑ i, (x i)^2 ≤
        quadratic (chainMatrix tape seed (n+1) -
          reassemblePivot (chainPivot tape seed n) (chainColumn tape seed n)
            (chainMatrix tape seed n)) x := by
  let k := N-(n+1)
  have hk : k < N := by dsimp [k]; omega
  have hOld : 0+k+(n+1) ≤ N := by dsimp [k]; omega
  have hNew : 0+(k+1)+n ≤ N := by dsimp [k]; omega
  have hOffset : N-n = k+1 := by dsimp [k]; omega
  let node : Fin (n+1) → ℤ := tape.node ∘ suffixIndex 0 k hOld
  let old : RawState r (n+1) := tape.stateAt 0 seed k hOld
  let next : RawState r n := tape.stateAt 0 seed (k+1) hNew
  let c : Fin n → ℤ := tape.columnAt 0 seed k hOld
  let p := suffixIndex 0 k hOld 0
  have hStrict := strictMono_squareNodes tape s hNodes
  have hCheck : checkStep node old next c (tape.caps p) :=
    tape.checkStep_of_block_caps 0 seed (length := N) (by omega) hk hOld hNew hStrict hBlock
  have hInjective : Function.Injective node := by
    intro i j hij
    have h := hStrict.injective hij
    have hv := congrArg Fin.val h
    dsimp [suffixIndex] at hv
    exact Fin.ext (by omega)
  have hNodeReal (i : Fin (n+1)) : (node i : ℝ) = ((s+k+i.val : ℕ) : ℝ)^2 := by
    dsimp only [node, Function.comp_apply]
    rw [hNodes]
    simp [suffixIndex, Int.cast_pow, Int.cast_add, Nat.cast_add, add_assoc]
  have hSep (i : Fin (n+1)) :
      (∑ j, (|(node i : ℝ) - (node j : ℝ)|)⁻¹) ≤ 21/250 := by
    simp_rw [hNodeReal]
    exact sum_inv_abs_square_sub_le_65_small (show 65 ≤ s+k by omega) i
  have hStep := checkStep_chainStep node old next c (tape.caps p) hCheck hInjective hSep
  have hReverse : Fin.rev ⟨n,hn⟩ = p := by
    apply Fin.ext
    simp only [Fin.val_rev, p, suffixIndex, Fin.val_zero, Nat.zero_add, Nat.add_zero, k]
  have hMatrixOld : chainMatrix tape seed (n+1) = decodeMatrix node old := by
    rw [chainMatrix, dite_eq_left (show n+1 ≤ N by omega)]
    rfl
  have hMatrixNew : chainMatrix tape seed n = decodeMatrix (node ∘ Fin.succ) next := by
    rw [chainMatrix, dite_eq_left hn.le]
    congr 1
    · funext i
      apply congrArg tape.node
      apply Fin.ext
      simp only [suffixIndex, Fin.val_succ, hOffset]
      omega
    · exact stateAt_congr_offset tape seed _ _ hOffset
  have hPivot : chainPivot tape seed n = decodeGenerator (old.diag 0) := by
    rw [chainPivot, dite_eq_left hn]
    rfl
  have hPrice : chainPrice tape n = price (tape.caps p) := by
    rw [chainPrice, dite_eq_left hn, hReverse]
  have hCol : chainColumn tape seed n = decodeColumn ∘ c := by
    rw [chainColumn, dite_eq_left hn]
  rwa [hMatrixOld, hMatrixNew, hPivot, hPrice, hCol]

/-- A complete checked block with consecutive physical square nodes and a
paid decoded seed supplies the radius-two high floor. -/
theorem highFloor_two_of_checkedCompactBlock
    (tape : Tape 2 399936) (seed : Fin 399936 → GridRow 2)
    (c : Coefficients (Fin 399936)) (hSource : SeedComparison c)
    (hNodes : ∀ i, tape.node i = (65 + (i.val : ℤ))^2)
    (hInit : decodedSeed tape seed + (1/10 : ℝ) • (1 : Matrix (Fin 399936) (Fin 399936) ℝ) =
      candidateMatrix c)
    (hBlock : tape.BlockCaps 0 seed 399936 (by omega))
    (hBudget : ∑ i, price (tape.caps i) ≤ (39/1000 : ℝ)) :
    HighFloor 2 (-1/2) (1/5) 64 := by
  refine highFloor_two_of_checkedSeed (chainMatrix tape seed) (chainPivot tape seed)
    (chainPrice tape) (chainColumn tape seed) c hSource ?_ ?_ ?_
  · rw [chainMatrix_seed]
    exact hInit
  · exact chainStep_of_squareBlock tape seed 65 (by decide) hNodes hBlock
  · rw [chainPrice_sum]
    exact hBudget

/-- The complete magnitude-only tape pays the existing radius-two reserve
through the geometric caps and the uniform cap bounds. -/
theorem highFloor_two_of_magnitudeTape
    (tape : Tape 2 399936) (seed : Fin 399936 → GridRow 2)
    (c : Coefficients (Fin 399936)) (hSource : SeedComparison c)
    (hNodes : ∀ i, tape.node i = (65 + (i.val : ℤ))^2)
    (hInit : decodedSeed tape seed + (1/10 : ℝ) • (1 : Matrix (Fin 399936) (Fin 399936) ℝ) =
      candidateMatrix c)
    (hPivot : ∀ i, PivotCaps (tape.anchor i) (tape.caps i))
    (hRows : ∀ i, (tape.magnitudeRow 0 seed i (i.val+1)).1 = true)
    (hCol : ∀ i, (tape.caps i).colMul ≤ 5)
    (hGen : ∀ i, (tape.caps i).maxV 0 + (tape.caps i).maxU 0 +
      (tape.caps i).maxV 1 + (tape.caps i).maxU 1 ≤ 100000 * 2^40) :
    HighFloor 2 (-1/2) (1/5) 64 := by
  let paid := tape.withGeometricCaps (400000^2)
  have hUpper (i : Fin 399936) : tape.node i ≤ (400000 : ℤ)^2 := by
    rw [hNodes]
    have hi := i.isLt
    exact pow_le_pow_left₀ (by omega) (by omega) 2
  have hBlock : paid.BlockCaps 0 seed 399936 (by omega) :=
    tape.magnitudeBlock_sound _ 0 seed 399936 (by omega) (strictMono_squareNodes tape 65 hNodes)
      hUpper (fun k => hPivot ⟨0+k.val, by have := k.isLt; omega⟩) (fun i _ => by
        have hi := i.isLt
        simpa only [Nat.sub_zero, min_eq_right (show i.val+1 ≤ 399936 by omega)] using hRows i)
  exact highFloor_two_of_checkedCompactBlock paid seed c hSource hNodes hInit hBlock
    (RadiusTwoGeometricSchurBudget.tapePriceSum_le tape hNodes hCol hGen)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCompactSchurReturn
