/- Local attribution: grwtsk contributors. Source candidates; verification NOT_RUN. -/
import Analysis.Misc.erdos_379

namespace GRWTSK.NumberTheory.SequencesAndSets.TaoErdos.Erdos379

noncomputable abbrev binomialPrimePowerHeight (n : ℕ) : ℕ := _root_.S n

/-- The explicit prime-power/totient family; no uniformity beyond these premises. -/
theorem prime_power_family (p r : ℕ) (hp : p.Prime)
    (hpr : p > 2 ^ (r - 1)) (hr : 1 < r) :
    r ≤ binomialPrimePowerHeight (2 ^ ((p ^ r).totient)) :=
  _root_.key_cor hp hpr hr

/-- Exact extended-natural limsup conclusion, without replacing it by a limit. -/
theorem unbounded_binomial_height :
    Filter.atTop.limsup (fun n ↦ (binomialPrimePowerHeight n : ENat)) = ⊤ :=
  _root_.erdos_379

end GRWTSK.NumberTheory.SequencesAndSets.TaoErdos.Erdos379
