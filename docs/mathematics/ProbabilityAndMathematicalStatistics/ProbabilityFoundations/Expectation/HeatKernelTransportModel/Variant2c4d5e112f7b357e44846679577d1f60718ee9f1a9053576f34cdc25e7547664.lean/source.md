# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.HeatKernelTransportModel.Variant2c4d5e112f7b357e44846679577d1f60718ee9f1a9053576f34cdc25e7547664

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1908b0cda39332a8201f61466a45d5c451a1b677` · SHA-256 `2c4d5e112f7b357e44846679577d1f60718ee9f1a9053576f34cdc25e7547664`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.CanonicalPath.HeatKernelTransportModel

Radiation role: research-boundary
BinaryMatrix spine: This module records a heat-kernel index model, not BinaryMatrix heat.
Ontology: canonical.heat_kernel_transport_model
Pivot role: spectral
Zero typology: index-invariance-contract
Contract boundary: contract
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Contract model inspired by heat-kernel index theory.

This does not construct Rodgers-Tao derived transport.
-/
structure HeatKernelIndexModel where
  OperatorFamily : Type
  HeatKernelData : Type
  supertrace : Type
  indexInvariantUnderHeat : Prop
  indexInvariantUnderHeat_certified : indexInvariantUnderHeat
  sourceLabel : String

theorem heat_kernel_index_invariant_if_supplied
    (H : HeatKernelIndexModel) :
    H.indexInvariantUnderHeat :=
  H.indexInvariantUnderHeat_certified

end CanonicalPath
end Folder
```
