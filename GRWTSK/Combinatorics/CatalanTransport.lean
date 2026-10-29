import Folder.Catalan.ExpansionIndex
import Folder.Fiber.Coherence
import Folder.Monodromy.EllipticTorsionAction

/-!
# Folder.Monodromy.CatalanTransport

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: monodromy.catalan_transport
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: torsion
-/


namespace Folder
namespace Monodromy

def ExpandStep (T U : Catalan.CTree) : Prop :=
  ∃ a : Catalan.Address, T.expandAt? a = some U

structure CatalanExpansionSystem
    (k : Nat) where
  bundle : Fiber.Bundle Catalan.CTree
  Step : Catalan.CTree → Catalan.CTree → Prop
  transport : Fiber.TransportSystem bundle Step

def contractPath
    {k : Nat}
    (C : CatalanExpansionSystem k)
    {T U : Catalan.CTree}
    (p : Path C.Step T U) :
    C.bundle.Fiber U ≃ C.bundle.Fiber T :=
  (Fiber.transportPath C.transport p).symm

theorem expand_contract_roundtrip
    {k : Nat}
    (C : CatalanExpansionSystem k)
    {T U : Catalan.CTree}
    (p : Path C.Step T U)
    (x : C.bundle.Fiber T) :
    (Fiber.transportPath C.transport p).symm
      ((Fiber.transportPath C.transport p) x) = x :=
  Equiv.symm_apply_apply _ x

theorem contract_expand_roundtrip
    {k : Nat}
    (C : CatalanExpansionSystem k)
    {T U : Catalan.CTree}
    (p : Path C.Step T U)
    (y : C.bundle.Fiber U) :
    (Fiber.transportPath C.transport p)
      ((Fiber.transportPath C.transport p).symm y) = y :=
  Equiv.apply_symm_apply _ y

structure CatalanMonodromySystem
    {K : Type _} [Field K]
    (k : Nat)
    (E : Arithmetic.ShortWeierstrass K)
    (G : Arithmetic.ECGroupLaw E) where
  expansion : CatalanExpansionSystem k
  torsionAction :
    ∀ T : Catalan.CTree,
      TorsionAction G (expansion.bundle.Fiber T)
  compatible :
    ∀ {T U} (e : expansion.Step T U)
      (P : Arithmetic.ECPoint E)
      (x : expansion.bundle.Fiber T),
        expansion.transport.transportStep e
          ((torsionAction T).act P x)
        =
        (torsionAction U).act P
          (expansion.transport.transportStep e x)

theorem torsion_transportPath_commutes
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    (M : CatalanMonodromySystem k E G)
    {T U : Catalan.CTree}
    (p : Path M.expansion.Step T U)
    (P : Arithmetic.ECPoint E)
    (x : M.expansion.bundle.Fiber T) :
    Fiber.transportPath M.expansion.transport p
      ((M.torsionAction T).act P x)
    =
    (M.torsionAction U).act P
      (Fiber.transportPath M.expansion.transport p x) := by
  induction p with
  | nil =>
      rfl
  | cons e rest ih =>
      simp [Fiber.transportPath, M.compatible e P x, ih]

theorem catalan_elliptic_monodromy_roundtrip
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    (M : CatalanMonodromySystem k E G)
    {T U : Catalan.CTree}
    (p : Path M.expansion.Step T U)
    (P : Arithmetic.ECPoint E)
    (x : M.expansion.bundle.Fiber T) :
    (Fiber.transportPath M.expansion.transport p).symm
      ((M.torsionAction U).act (G.neg P)
        ((M.torsionAction U).act P
          (Fiber.transportPath M.expansion.transport p x)))
    = x := by
  rw [torsion_action_roundtrip]
  exact Equiv.symm_apply_apply _ x

end Monodromy
end Folder
