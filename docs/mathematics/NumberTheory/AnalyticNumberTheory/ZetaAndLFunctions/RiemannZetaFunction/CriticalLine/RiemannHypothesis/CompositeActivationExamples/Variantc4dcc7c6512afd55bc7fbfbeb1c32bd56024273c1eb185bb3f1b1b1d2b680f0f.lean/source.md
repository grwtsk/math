# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompositeActivationExamples.Variantc4dcc7c6512afd55bc7fbfbeb1c32bd56024273c1eb185bb3f1b1b1d2b680f0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddce6306569ccd4cca56235d51c65ec9c70b056f` · SHA-256 `c4dcc7c6512afd55bc7fbfbeb1c32bd56024273c1eb185bb3f1b1b1d2b680f0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity
import GRWTSK.FoundationsLogicAndTypeTheory.Order.WellFounded.AdditiveNaturalRank

/-! Exact finite fixtures for the signed horizon decomposition.
The width log(3/2) and horizon log8 admit old primes 2,3,5 and new prime7.
The old composite6 activates in the terminal window and cannot be erased.
These identities and hostile scalar fixtures assert no all-horizon budget. -/
noncomputable section
open scoped BigOperators
open Set MeasureTheory
namespace HSSCP04.Diagnostics
open PPNCP04 HorizonShell

def fixtureWidth : ℝ := Real.log (3/2 : ℝ)
def fixtureHorizon : ℝ := Real.log 8

theorem fixture_width_valid : PinnedShellWidth fixtureWidth := by
  constructor
  · exact Real.log_pos (by norm_num)
  · exact Real.log_lt_log (by norm_num) (by norm_num)

theorem fixture_old_exp : Real.exp (fixtureHorizon-fixtureWidth) = (16/3 : ℝ) := by
  rw [fixtureHorizon,fixtureWidth,Real.exp_sub,
    Real.exp_log (by norm_num : (0:ℝ)<8),Real.exp_log (by norm_num : (0:ℝ)<3/2)]
  norm_num

theorem fixture_old_inventory :
    primeInventory (fixtureHorizon-fixtureWidth) = {2,3,5} := by
  norm_num [primeInventory,integerInventory,fixture_old_exp,Finset.filter_insert]
  decide

theorem fixture_horizon_inventory : primeInventory fixtureHorizon = {2,3,5,7} := by
  norm_num [primeInventory,integerInventory,fixtureHorizon,Real.exp_log,
    Finset.filter_insert]
  decide

theorem fixture_shell : horizonShell fixtureWidth fixtureHorizon = {7} := by
  rw [horizonShell,fixture_horizon_inventory,fixture_old_exp]
  norm_num [Finset.filter_insert]

theorem fixture_horizon_wave {u : ℝ} (hu : u ∈ Icc 0 fixtureHorizon) :
    horizonWave fixtureWidth fixtureHorizon u = -atom 7 u := by
  rw [horizonWave_eq_sum hu,fixture_shell]
  simp

private theorem mu_six : ArithmeticFunction.moebius 6 = 1 := by
  have h := ASBNP04.FiniteProduct.moebius_primeProduct {2,3} (by
    intro p hp; simp only [Finset.mem_insert,Finset.mem_singleton] at hp
    rcases hp with rfl | rfl <;> norm_num)
  norm_num [ASBNP04.FiniteProduct.primeProduct] at h
  exact h
private theorem mu_ten : ArithmeticFunction.moebius 10 = 1 := by
  have h := ASBNP04.FiniteProduct.moebius_primeProduct {2,5} (by
    intro p hp; simp only [Finset.mem_insert,Finset.mem_singleton] at hp
    rcases hp with rfl | rfl <;> norm_num)
  norm_num [ASBNP04.FiniteProduct.primeProduct] at h
  exact h
private theorem mu_fifteen : ArithmeticFunction.moebius 15 = 1 := by
  have h := ASBNP04.FiniteProduct.moebius_primeProduct {3,5} (by
    intro p hp; simp only [Finset.mem_insert,Finset.mem_singleton] at hp
    rcases hp with rfl | rfl <;> norm_num)
  norm_num [ASBNP04.FiniteProduct.primeProduct] at h
  exact h
private theorem mu_thirty : ArithmeticFunction.moebius 30 = -1 := by
  have h := ASBNP04.FiniteProduct.moebius_primeProduct {2,3,5} (by
    intro p hp; simp only [Finset.mem_insert,Finset.mem_singleton] at hp
    rcases hp with rfl | rfl | rfl <;> norm_num)
  norm_num [ASBNP04.FiniteProduct.primeProduct] at h
  exact h

theorem fixture_echo_raw (u : ℝ) :
    maturityEcho fixtureWidth fixtureHorizon u = atom 6 u+atom 10 u+atom 15 u-atom 30 u := by
  classical
  have hp : ({2,3,5}:Finset ℕ).powerset =
      {∅,{2},{3},{5},{2,3},{2,5},{3,5},{2,3,5}} := by decide
  rw [maturityEcho,fixture_old_inventory,fixture_old_exp,hp]
  norm_num [ASBNP04.FiniteProduct.primeProduct,Finset.filter_insert,Finset.filter_singleton,
    Finset.sum_insert,Finset.sum_singleton,
    realMoebius,mu_six,mu_ten,mu_fifteen,mu_thirty]
  rw [Finset.sum_insert (by decide),Finset.sum_insert (by decide),
    Finset.sum_insert (by decide),Finset.sum_singleton]
  norm_num [mu_six,mu_ten,mu_fifteen,mu_thirty]
  ring

private theorem atom_above_fixture {n : ℕ} (hn : 8 < n) {u : ℝ}
    (hu : u ≤ fixtureHorizon) : atom n u = 0 := by
  have hlog : fixtureHorizon < Real.log (n : ℝ) := by
    apply Real.log_lt_log (by norm_num)
    exact_mod_cast hn
  simp [atom,not_le.mpr (hu.trans_lt hlog)]

theorem fixture_echo {u : ℝ} (hu : u ≤ fixtureHorizon) :
    maturityEcho fixtureWidth fixtureHorizon u = atom 6 u := by
  rw [fixture_echo_raw,atom_above_fixture (by decide : 8<10) hu,
    atom_above_fixture (by decide : 8<15) hu,
    atom_above_fixture (by decide : 8<30) hu]
  ring

theorem atom_six_positive {u : ℝ} (hu : Real.log 6 < u) : 0 < atom 6 u := by
  have hz := atom_entry_zero (by decide : 0<6)
  have he : Real.exp (-Real.log (6:ℝ)/2) = (Real.sqrt (6:ℝ))⁻¹ := by
    simp only [atom,le_refl,if_true] at hz
    linarith
  have hlt := Real.exp_lt_exp.mpr (show -u/2 < -Real.log (6:ℝ)/2 by linarith)
  rw [he] at hlt
  simp only [atom,Nat.cast_ofNat,if_pos hu.le]
  linarith

/-- A genuine positive composite bridge on the current terminal interval. -/
theorem missing_composite_bridge_rejected {u : ℝ}
    (hu : u ∈ Icc 0 fixtureHorizon) (h6 : Real.log 6 < u) :
    matureWave fixtureWidth fixtureHorizon u ≠
      pickup (fixtureHorizon-fixtureWidth) u := by
  rw [matureWave_eq_old_pickup_add_echo hu,fixture_echo hu.2]
  linarith [atom_six_positive h6]

theorem scalar_sign_erasure_rejected :
    (1+(-1):ℝ)^2 = 0 ∧
      (1:ℝ)^2+(-1:ℝ)^2+2*|1*(-1:ℝ)| = 4 := by norm_num

theorem unchanged_child_rejected (r : HSSCP04.NarrowRank) :
    ¬HSSCP04.LowerRank r r := HSSCP04.unchanged_rank_rejected r

end HSSCP04.Diagnostics
#print axioms HSSCP04.Diagnostics.fixture_echo
#print axioms HSSCP04.Diagnostics.missing_composite_bridge_rejected
```
