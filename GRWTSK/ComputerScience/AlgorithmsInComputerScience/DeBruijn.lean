/-!
# Finite action-window coverage
-/

namespace Mathematics.GraphAccess

structure DeBruijnCoverageCertificate (Window : Type u) where
  alphabetRef : String
  order : Nat
  declaredWindows : List Window
  coveredWindows : List Window
  alphabetComplete : Prop
  alphabetCompleteEvidence : alphabetComplete
  covers :
    ∀ window, window ∈ declaredWindows → window ∈ coveredWindows

theorem debruijn_covers_every_action_window
    {Window : Type u}
    (certificate : DeBruijnCoverageCertificate Window)
    (window : Window)
    (declared : window ∈ certificate.declaredWindows) :
    window ∈ certificate.coveredWindows :=
  certificate.covers window declared

end Mathematics.GraphAccess
