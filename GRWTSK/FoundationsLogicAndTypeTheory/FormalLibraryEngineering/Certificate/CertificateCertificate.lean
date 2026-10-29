
/-!
# Folder.Linear.Certificate

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.certificate
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Linear

structure Certificate (Claim : Prop) where
  verify : Claim

theorem Certificate.sound {Claim : Prop}
    (C : Certificate Claim) :
    Claim :=
  C.verify

end Linear
end Folder
