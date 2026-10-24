import Mathematics.SemiLocalDefect.Hardy.Balance

/-!
# Balance gauge equivalence

Gauge changes preserve the product of finite allocations.  Defect and trace
invariance require their own realization certificates.
-/

namespace Mathematics.SemiLocalDefect.Hardy

open scoped BigOperators

universe uPrime uSymbol uOperator uTest

structure BalanceGauge
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (cut : Finset Prime) where
  factor : Prime → Symbol
  product_one :
    ∏ prime ∈ cut, factor prime = 1

def BalanceGauge.act
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    {cut : Finset Prime}
    (gauge : BalanceGauge (Symbol := Symbol) cut)
    (allocation : Prime → Symbol) :
    Prime → Symbol :=
  fun prime =>
    gauge.factor prime * allocation prime

theorem BalanceGauge.product_act
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    {cut : Finset Prime}
    (gauge : BalanceGauge (Symbol := Symbol) cut)
    (allocation : Prime → Symbol) :
    ∏ prime ∈ cut, gauge.act allocation prime =
      ∏ prime ∈ cut, allocation prime := by
  simp only [BalanceGauge.act]
  rw [Finset.prod_mul_distrib, gauge.product_one,
    one_mul]

structure BalanceGaugeInvariantDefect
    (model : OperatorModel)
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime] where
  defect :
    (cut : Finset Prime) →
      (Prime → Symbol) →
      model.Operator
  invariant :
    ∀ cut
      (gauge :
        BalanceGauge (Symbol := Symbol) cut)
      allocation,
      defect cut (gauge.act allocation) =
        defect cut allocation

structure BalanceGaugeInvariantTrace
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (Test : Type uTest) where
  trace :
    (cut : Finset Prime) →
      (Prime → Symbol) →
      Test → ℝ
  invariant :
    ∀ cut
      (gauge :
        BalanceGauge (Symbol := Symbol) cut)
      allocation test,
      trace cut (gauge.act allocation) test =
        trace cut allocation test

end Mathematics.SemiLocalDefect.Hardy
