import Folder.Fiber.Coherence

/-!
# Folder.Theorem.Fiber.CoherentSection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.fiber.coherent_section
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Fiber

theorem coherent_section_transportPath
    {Base : Type _}
    {B : Bundle Base}
    {Step : Base → Base → Prop}
    {T : TransportSystem B Step}
    (S : CoherentSection T)
    {a b : Base}
    (p : Monodromy.Path Step a b) :
    transportPath T p (S.sec.value a) =
      S.sec.value b :=
  coherent_transportPath S p

end Fiber
end Folder
