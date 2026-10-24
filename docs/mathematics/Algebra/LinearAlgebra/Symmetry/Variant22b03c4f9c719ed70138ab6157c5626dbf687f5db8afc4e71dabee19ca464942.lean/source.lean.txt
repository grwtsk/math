import Surface.Legacy.BinaryLogicMatrix.FiberTensor

namespace Surface.Legacy

structure FiniteSymmetryGroup where
  carrier : Type
  mul : carrier → carrier → carrier
  one : carrier
  inv : carrier → carrier
  group_laws : Prop

structure FiberTwist
    (G : FiniteSymmetryGroup)
    (T : BinaryMatrixFiberTensor) where
  actOnSite : G.carrier → FiberTensorSite → FiberTensorSite
  actionSound : Prop

theorem finiteSymmetryGroup_requires_laws
    (G : FiniteSymmetryGroup) :
    G.group_laws → G.group_laws := by
  intro h
  exact h

theorem fiberTwist_requires_action_sound
    {G : FiniteSymmetryGroup}
    {T : BinaryMatrixFiberTensor}
    (tw : FiberTwist G T) :
    tw.actionSound → tw.actionSound := by
  intro h
  exact h

end Surface.Legacy
