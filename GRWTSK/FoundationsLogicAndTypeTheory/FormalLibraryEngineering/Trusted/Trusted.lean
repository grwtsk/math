import Surface.AST.Slug

namespace Surface

namespace AST

def TrustedPathClean (forbiddenTokenCount : Nat) : Prop :=
  forbiddenTokenCount = 0

theorem trustedPathClean_zero :
    TrustedPathClean 0 := by
  rfl

end AST

end Surface
