# Complete source: GRWTSK.Algebra.CommutativeAlgebra.SourcePhysicalEndpointConvolutionReview.Variant1d29150815dc3b5d2bfbe4c6a9471ecca62300e72ca59080b7d715275f277b02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cf3d4beb527aff3959a30470f1b19a35f24d991` · SHA-256 `1d29150815dc3b5d2bfbe4c6a9471ecca62300e72ca59080b7d715275f277b02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePhysicalEndpointConvolution
open FormalResearch.RiemannHypothesis.SourcePhysicalEndpointConvolution
#print primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile
#print axioms primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile
#print sourceCorrelation_eq_normalizedOverlap_filter
#print axioms sourceCorrelation_eq_normalizedOverlap_filter
#print endpointQ
#print axioms endpointQ
#print endpointPolynomial
#print axioms endpointPolynomial
#print sourceCorrelation_endpoint_eq_polynomial
#print axioms sourceCorrelation_endpoint_eq_polynomial
#print endpointPolynomial_eq_convolution
#print axioms endpointPolynomial_eq_convolution
#print sourceCorrelation_endpoint_eq_convolution
#print axioms sourceCorrelation_endpoint_eq_convolution

open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```
