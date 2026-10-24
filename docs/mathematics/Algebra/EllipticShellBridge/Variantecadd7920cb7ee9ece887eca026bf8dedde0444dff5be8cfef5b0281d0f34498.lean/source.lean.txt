import Folder.Monodromy.EllipticShellBridge

/-!
# Folder.Theorem.Monodromy.EllipticShellBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.monodromy.elliptic_shell_bridge
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Monodromy
namespace EllipticShellBridge

theorem shell_weil_compatible
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {m d k : Nat}
    {W : Arithmetic.WeilPairingContract G m}
    (C : Folder.Monodromy.ShellWeilCompatibility G m d k W) :
    Folder.Monodromy.LoopPhaseMatchesWeil
      W C.shell C.P C.Q C.exponent C.distinguishedLoop.2 :=
  Folder.Monodromy.shell_weil_compatible C

theorem selected_shell_twist_has_preimage
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {m d k : Nat}
    {R : Arithmetic.MTorsionPoint G m → Folder.Cellular.Cochain1 d k m}
    {T : Folder.Monodromy.SelectedShellTwistGroup d k m}
    (h : Folder.Monodromy.SurjectiveOntoSelectedShellTwists R T)
    {τ : Folder.Cellular.Cochain1 d k m}
    (hτ : τ ∈ T.Twist) :
    ∃ P, R P = τ :=
  Folder.Monodromy.selected_shell_twist_has_preimage h hτ

end EllipticShellBridge
end Monodromy
end Theorem
end Folder
