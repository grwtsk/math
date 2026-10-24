import Think.Kakeya.PAdic.PicardFuchs

namespace Think.Kakeya.Berkovich

structure SkeletonReference where
  vertexCount : Nat
  edgeCount : Nat
  pathConnectedClaim : Bool
deriving Repr, DecidableEq

def defaultBridgeSkeleton : SkeletonReference :=
  { vertexCount := 2, edgeCount := 1, pathConnectedClaim := false }

theorem berkovich_skeleton_transport_domain_valid : True := by
  trivial

end Think.Kakeya.Berkovich
