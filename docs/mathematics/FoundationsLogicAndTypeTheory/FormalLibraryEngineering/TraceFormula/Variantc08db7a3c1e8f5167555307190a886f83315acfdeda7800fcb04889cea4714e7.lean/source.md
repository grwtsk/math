# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceFormula.Variantc08db7a3c1e8f5167555307190a886f83315acfdeda7800fcb04889cea4714e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df34d7559d7f71aedf79b986f6ccc621a0b06361` · SHA-256 `c08db7a3c1e8f5167555307190a886f83315acfdeda7800fcb04889cea4714e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.TraceFormula

/-!
# Folder.Theorem.RH.TraceFormula

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports trace-interface facts.
Ontology: proof.rh.trace_formula
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace TraceFormula

theorem trace_pairing_has_spectral_distribution
    (P : Folder.RH.TracePairing) :
    ∃ S : Folder.RH.RHSpectralDistribution, S = P.spectral :=
  Folder.RH.trace_pairing_has_spectral_distribution P

theorem trace_pairing_has_index_distribution
    (P : Folder.RH.TracePairing) :
    ∃ I : Folder.RH.RHIndexDistribution, I = P.index :=
  Folder.RH.trace_pairing_has_index_distribution P

theorem explicit_trace_formula
    (pairing : Folder.RH.TracePairing)
    (htrace : Folder.RH.ExplicitTraceFormulaStatement pairing)
    (φ : Folder.RH.RHTestFunction) :
    pairing.spectral.eval φ = pairing.index.eval φ :=
  Folder.RH.explicit_trace_formula pairing htrace φ

end TraceFormula
end RH
end Theorem
end Folder
```
