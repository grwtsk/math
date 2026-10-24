# Complete source: GRWTSK.Analysis.FunctionalAnalysis.TraceFormula.Variant5f94d6af4870794d01c84ac4fef2e07b269f5c7e8942a26ed77f01586a6c0305

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dd33efe2a5c7fdaf8b07122e83d6b3143e5189e` · SHA-256 `5f94d6af4870794d01c84ac4fef2e07b269f5c7e8942a26ed77f01586a6c0305`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
