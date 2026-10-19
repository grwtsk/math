import Folder.Fiber.Bundle
import Folder.Monodromy.Path

/-!
# Folder.Fiber.Transport

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: fiber.transport
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Fiber

universe u v

structure TransportSystem
    {Base : Type u}
    (B : Bundle.{u, v} Base)
    (Step : Base → Base → Prop) where
  transportStep :
    ∀ {a b}, Step a b → B.Fiber a ≃ B.Fiber b

def transportPath
    {Base : Type u}
    {B : Bundle.{u, v} Base}
    {Step : Base → Base → Prop}
    (T : TransportSystem B Step)
    {a b : Base} :
    Monodromy.Path Step a b → B.Fiber a ≃ B.Fiber b
  | Monodromy.Path.nil => Equiv.refl _
  | Monodromy.Path.cons e p => (T.transportStep e).trans (transportPath T p)

@[simp]
theorem transportPath_nil
    {Base : Type u}
    {B : Bundle.{u, v} Base}
    {Step : Base → Base → Prop}
    (T : TransportSystem B Step)
    {a : Base} :
    transportPath T (Monodromy.Path.nil : Monodromy.Path Step a a) =
      Equiv.refl _ :=
  rfl

theorem transportPath_append
    {Base : Type u}
    {B : Bundle.{u, v} Base}
    {Step : Base → Base → Prop}
    (T : TransportSystem B Step)
    {a b c : Base}
    (p : Monodromy.Path Step a b)
    (q : Monodromy.Path Step b c) :
    transportPath T (p.append q) =
      (transportPath T p).trans (transportPath T q) := by
  induction p with
  | nil =>
      rfl
  | cons e rest ih =>
      ext x
      simp [transportPath, Monodromy.Path.append, ih, Equiv.trans_apply]

end Fiber
end Folder
