import Surface.Legacy.BinaryLogicMatrix.Symmetry

namespace Surface.Legacy

def iteratedAction
    {G : FiniteSymmetryGroup}
    (act : G.carrier → FiberTensorSite → FiberTensorSite)
    (element : G.carrier) : Nat → FiberTensorSite → FiberTensorSite
| 0, site => site
| Nat.succ n, site => act element (iteratedAction act element n site)

structure TorsionAtSite
    (G : FiniteSymmetryGroup)
    (T : BinaryMatrixFiberTensor)
    (tw : FiberTwist G T) where
  site : FiberTensorSite
  element : G.carrier
  order : Nat
  order_pos : 0 < order
  torsionSound :
    iteratedAction tw.actOnSite element order site = site

theorem torsionAtSite_has_positive_order
    {G : FiniteSymmetryGroup}
    {T : BinaryMatrixFiberTensor}
    {tw : FiberTwist G T}
    (tor : TorsionAtSite G T tw) :
    0 < tor.order := by
  exact tor.order_pos

theorem torsionAtSite_returns_to_site
    {G : FiniteSymmetryGroup}
    {T : BinaryMatrixFiberTensor}
    {tw : FiberTwist G T}
    (tor : TorsionAtSite G T tw) :
    iteratedAction tw.actOnSite tor.element tor.order tor.site = tor.site := by
  exact tor.torsionSound

end Surface.Legacy
