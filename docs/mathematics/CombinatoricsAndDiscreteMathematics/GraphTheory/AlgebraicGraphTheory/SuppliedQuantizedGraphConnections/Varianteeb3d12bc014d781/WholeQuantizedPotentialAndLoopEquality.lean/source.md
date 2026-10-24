# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.AlgebraicGraphTheory.SuppliedQuantizedGraphConnections.Varianteeb3d12bc014d781.WholeQuantizedPotentialAndLoopEquality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79b2394a80fb0faaa1a02a947277ca9647499164` · SHA-256 `6271f78144d9caccdb15cdfcc8e03212146a1e48d21ce44cb4a10750b978bff0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeQuantizedPotentialAndLoopEquality — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: eeb3d12bc014d7817aca1744f55f803904d9ea8100941c003a4ec0c1fd015309
Organized SHA-256: 2138f477aa9396f461bcd1bdc3bfc62c98fae4f27e516488f597405a26c6f70b
PMD: 510.7.030.090 algebraic graph theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole five-field package retained: original CubeSpectralField, supplied CubeHeatFlow, NNReal time, PhaseQuantizer and ScanTwist. q composes the supplied time-indexed map with pointwise quantization; connection is potential coboundary plus scan. torsionClass only wraps the complete representative record from the captured provider. The exact loop-integral equality is a genuine original theorem application, with every T and indexed closed path premise and the original export control retained. No analytic heat/semigroup law, quotient construction, torsion annihilation, spectral realization or nonzero-modulus premise is inferred. -/

import Folder.Cellular.ShellCohomology

/-!
# Folder.Cellular.HeatQuantizedTorsion

Radiation role: phase-connection
BinaryMatrix spine: This module turns BinaryMatrix-radiated cell data into finite phase, scan, or connection data.
Ontology: cellular.heat_quantized_torsion
Pivot role: none
Zero typology: shell
Contract boundary: proved
Composite stack role: phase
-/


namespace Folder
namespace Cellular

structure HeatQuantizedShellTorsion
    (d k m : Nat) where
  field : CubeSpectralField d k
  heat : CubeHeatFlow d k
  time : NNReal
  quantizer : PhaseQuantizer m
  scan : ScanTwist d k m

namespace HeatQuantizedShellTorsion

def q
    (T : HeatQuantizedShellTorsion d k m) :
    Cochain0 d k m :=
  quantizedField T.quantizer (T.heat.heat T.time T.field)

def connection
    (T : HeatQuantizedShellTorsion d k m) :
    Cochain1 d k m :=
  phaseConnection T.q T.scan

def torsionClass
    (T : HeatQuantizedShellTorsion d k m) :
    ShellTorsionClass d k m :=
  ⟨T.connection⟩

theorem heatQuantizedShellTorsion_loop_eq_scan
    (T : HeatQuantizedShellTorsion d k m)
    (p : EdgePath d k x x) :
    pathIntegral T.connection p =
      pathIntegral T.scan.value p :=
  phaseConnection_loopIntegral_eq_scan T.q T.scan p

end HeatQuantizedShellTorsion

export HeatQuantizedShellTorsion
  (q connection torsionClass heatQuantizedShellTorsion_loop_eq_scan)

end Cellular
end Folder
```
