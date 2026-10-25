import Mathematics.Resolution.Context

/-!
# Canonical browser and native invocation ingress
-/

namespace Mathematics.Resolution

inductive IngressKind
  | browser
  | native
  deriving DecidableEq, Repr

structure InvocationIntent where
  cutDigest : String
  contextDigest : String
  authorityDigest : String
  deriving DecidableEq, Repr

structure CanonicalResolutionCommand where
  intent : InvocationIntent
  deriving DecidableEq, Repr

def canonicalizeIngress
    (_kind : IngressKind)
    (intent : InvocationIntent) :
    CanonicalResolutionCommand :=
  ⟨intent⟩

theorem browser_native_canonicalize_equally
    (intent : InvocationIntent) :
    canonicalizeIngress .browser intent =
      canonicalizeIngress .native intent :=
  rfl

end Mathematics.Resolution
