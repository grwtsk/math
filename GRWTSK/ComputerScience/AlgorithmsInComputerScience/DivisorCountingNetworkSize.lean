import GRWTSK.ComputerScience.AlgorithmsInComputerScience.DivisorCountingNetworks
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Size parameter for the Boolean multiplication network

Authors: grwtsk contributors

Instantiates the absolute constants in Akshima et al., Theorem 3 for the
degree condition in OpenAI Appendix D.1. See `DivisorCountingNetworks.md`.
-/

namespace GRWTSK.IntegerFactorization.Counting.Network

/-- With this linear choice of size parameter, the source degree fits the
literal D.1 cap (including the inserted equality vertices) at every width. -/
def contractionSize (b : ℕ) := 136^2 * (b+1)

theorem subdivide_portCount (G : OrderedPorts V E) (v : V ⊕ E) :
    (G.subdivide.ports v).length = subdivisionDegree G v := by
  cases v <;> simp [OrderedPorts.subdivide, subdivisionDegree]

theorem multiplication_network_size (G : OrderedPorts V E) [Fintype E] (b : ℕ)
    (wires : Fintype.card E < 1100*(b+1))
    (degree : ∀ v, ((G.ports v).length : ℝ) < 136*((b+1 : ℕ) : ℝ)^(3/4 : ℝ)) :
    Fintype.card (E × Bool) ≤ contractionSize b ∧
      ∀ v, ((G.subdivide.ports v).length : ℝ) ≤ (contractionSize b : ℝ)^(9/10 : ℝ) := by
  have h : (1 : ℝ) ≤ ((b+1 : ℕ) : ℝ) := by exact_mod_cast Nat.succ_le_succ (Nat.zero_le b)
  have scale : (136 : ℝ) ≤ ((136:ℝ)^2)^(9/10 : ℝ) := by
    rw [← Real.rpow_natCast, ← Real.rpow_mul (by norm_num)]
    calc 136 = (136:ℝ)^(1:ℝ) := (Real.rpow_one _).symm
         _ ≤ _ := Real.rpow_le_rpow_of_exponent_le (by norm_num) (by norm_num)
  have fit : 136*((b+1 : ℕ) : ℝ)^(3/4 : ℝ) ≤ (contractionSize b : ℝ)^(9/10 : ℝ) := by
    unfold contractionSize
    simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
    rw [Real.mul_rpow (by positivity) (by positivity)]
    exact mul_le_mul scale (Real.rpow_le_rpow_of_exponent_le h (by norm_num))
      (by positivity) (by positivity)
  constructor
  · rw [subdivision_edges]
    unfold contractionSize
    norm_num1 at *
    omega
  · rintro (v | e)
    · rw [subdivide_portCount]
      exact (degree v).le.trans fit
    · rw [subdivide_portCount]
      have hp := Real.one_le_rpow h (show (0:ℝ) ≤ 3/4 by norm_num)
      change (2:ℝ) ≤ _
      exact (show (2:ℝ) ≤ 136*((b+1 : ℕ) : ℝ)^(3/4 : ℝ) by linarith).trans fit

end GRWTSK.IntegerFactorization.Counting.Network
