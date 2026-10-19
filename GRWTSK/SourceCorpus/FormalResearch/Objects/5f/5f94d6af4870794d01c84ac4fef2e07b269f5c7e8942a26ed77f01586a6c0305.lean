import Folder.RH.Distributions
import Folder.RH.SpectralRealization

/-!
# Folder.RH.TraceFormula

Radiation role: trace-interface
BinaryMatrix spine: This module records the trace-formula vocabulary without exposing proposition fields.
Ontology: rh.trace_formula
Pivot role: spectral
Zero typology: zeta
Contract boundary: proof-obligation-interface
Composite stack role: rh
-/

namespace Folder
namespace RH

noncomputable section

/--
Trace-formula statement for a fixed pair of distributions.

The project does not currently prove this statement from analytic trace theory.
It is exposed as a theorem obligation so callers cannot upgrade distribution
records or labels into a proof.
-/
def ExplicitTraceFormulaStatement
    (pairing : TracePairing) : Prop :=
  ∀ φ : RHTestFunction, pairing.spectral.eval φ = pairing.index.eval φ

theorem explicit_trace_formula
    (pairing : TracePairing)
    (htrace : ExplicitTraceFormulaStatement pairing)
    (φ : RHTestFunction) :
    pairing.spectral.eval φ = pairing.index.eval φ :=
  htrace φ

end

end RH
end Folder
