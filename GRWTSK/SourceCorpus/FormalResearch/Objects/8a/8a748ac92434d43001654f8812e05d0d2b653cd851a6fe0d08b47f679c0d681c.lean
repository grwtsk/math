import Folder.Fiber.Section
import Folder.Fiber.Transport

/-!
# Folder.Fiber.Coherence

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: fiber.coherence
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Fiber

universe u v

structure CoherentSection
    {Base : Type u}
    {B : Bundle.{u, v} Base}
    {Step : Base → Base → Prop}
    (T : TransportSystem B Step) where
  sec : Section B
  coherent :
    ∀ {a b} (e : Step a b),
      T.transportStep e (sec.value a) = sec.value b

theorem coherent_transportPath
    {Base : Type u}
    {B : Bundle.{u, v} Base}
    {Step : Base → Base → Prop}
    {T : TransportSystem B Step}
    (S : CoherentSection T)
    {a b : Base}
    (p : Monodromy.Path Step a b) :
    transportPath T p (S.sec.value a) =
      S.sec.value b := by
  induction p with
  | nil =>
      rfl
  | cons e rest ih =>
      simp [transportPath, S.coherent e, ih]

end Fiber
end Folder
