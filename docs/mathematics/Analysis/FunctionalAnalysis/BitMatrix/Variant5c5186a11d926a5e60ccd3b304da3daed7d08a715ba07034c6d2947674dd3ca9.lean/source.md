# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BitMatrix.Variant5c5186a11d926a5e60ccd3b304da3daed7d08a715ba07034c6d2947674dd3ca9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c80b10e8f49d46285f76a46de7471e67cdf87e83` · SHA-256 `5c5186a11d926a5e60ccd3b304da3daed7d08a715ba07034c6d2947674dd3ca9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Core.Basic
import BitMatrix.Algebra
import BitMatrix.Algebra.InvolutionProjection
import BitMatrix.Algebra.Symmetry
import BitMatrix.Adapters.CausalQuantizer
import BitMatrix.Adapters.DAFRefinement
import BitMatrix.Adapters.Fabric
import BitMatrix.Carrier
import BitMatrix.Codec
import BitMatrix.Configuration
import BitMatrix.Dynamics
import BitMatrix.Dynamics.Avalanche
import BitMatrix.Dynamics.DynamicalZeta
import BitMatrix.FiniteField.Galois
import BitMatrix.FiniteField.GaloisRound
import BitMatrix.FiniteField.Regular
import BitMatrix.FiniteField.Round
import BitMatrix.Formal
import BitMatrix.Geometry.GlobalProjection
import BitMatrix.Geometry.Euclidean
import BitMatrix.Geometry.Stroke
import BitMatrix.Network.IntegralPermutationLift
import BitMatrix.Network.Permutation
import BitMatrix.Quantization.Core
import BitMatrix.Reduction.SAT
import BitMatrix.Runtime.MatrixReducerIR
import BitMatrix.Runtime.MatrixRing
import BitMatrix.Runtime.Numeric
import BitMatrix.Runtime.PacketRing
import BitMatrix.Runtime.RingBuffer
import BitMatrix.Runtime.Semantics
import BitMatrix.Runtime.Spectral
import BitMatrix.Runtime
import BitMatrix.Rhetorical
import BitMatrix.Surgery.Submatrix
import BitMatrix.Topology

/-!
# BitMatrix

The sole public aggregate for production BitMatrix semantics. Test modules
remain behind `BitMatrix.Tests` and are never imported here.
-/
```
