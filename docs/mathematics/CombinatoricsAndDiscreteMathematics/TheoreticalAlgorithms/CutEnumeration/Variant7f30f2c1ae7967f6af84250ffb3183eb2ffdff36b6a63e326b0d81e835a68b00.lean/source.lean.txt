import Mathematics.SemiLocalDefect.WP0.PrimeHorizon

/-!
# Certified cut enumeration

A finite chronological listing of one prime cut, with freshness retained as an
explicit field for downstream telescoping.
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure CutEnumeration
    (U : FinitePrimeHorizon)
    (S : PrimeCut U) where
  order : List U.Prime
  nodup : order.Nodup
  toFinset_eq : order.toFinset = S
  fresh :
    ∀ i : Fin order.length,
      order.get i ∉
        (order.take i.val).toFinset

def CutEnumeration.prefixCut
    {U : FinitePrimeHorizon}
    {S : PrimeCut U}
    (E : CutEnumeration U S)
    (n : Nat) :
    PrimeCut U :=
  (E.order.take n).toFinset

@[simp]
theorem CutEnumeration.prefixCut_zero
    {U : FinitePrimeHorizon}
    {S : PrimeCut U}
    (E : CutEnumeration U S) :
    E.prefixCut 0 = ∅ := by
  simp [CutEnumeration.prefixCut]

@[simp]
theorem CutEnumeration.prefixCut_length
    {U : FinitePrimeHorizon}
    {S : PrimeCut U}
    (E : CutEnumeration U S) :
    E.prefixCut E.order.length = S := by
  simp [
    CutEnumeration.prefixCut,
    E.toFinset_eq
  ]

end Mathematics.SemiLocalDefect.SoninCore
