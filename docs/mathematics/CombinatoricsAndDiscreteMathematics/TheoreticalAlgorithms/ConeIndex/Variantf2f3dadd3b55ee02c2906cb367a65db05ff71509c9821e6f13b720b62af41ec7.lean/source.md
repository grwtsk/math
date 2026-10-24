# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConeIndex.Variantf2f3dadd3b55ee02c2906cb367a65db05ff71509c9821e6f13b720b62af41ec7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `262327b00f774984fbfba0130982aed8802d78a3` · SHA-256 `f2f3dadd3b55ee02c2906cb367a65db05ff71509c9821e6f13b720b62af41ec7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface
namespace Spectral
namespace ConeIndex

/-! Audit-facing index for the finite-Hilbert spectral convergence cone. -/

def coneName : String := "FiniteHilbertSpectralConvergence"

def publicTheoremDeclarations : List String := [
  "FiniteGraphLaplacianConvergenceCertificate.certifiedForHilbertEvidence",
  "HilbertTraceEvidenceInput.finiteConvergence_present",
  "standardHilbertTraceBridge_no_evidenceInput"
]

def certificateOnlyDeclarations : List String := [
  "FiniteGraphLaplacianConvergenceCertificate",
  "HilbertTraceEvidenceInput",
  "AnalyticPDESpectralTheoremInput"
]

def hardInputDeclarations : List String := [
  "samplingHypothesis",
  "kernelScalingHypothesis",
  "boundaryCompatibility",
  "hilbertEmbeddingCompatibility",
  "traceOrResolventControl"
]

def forbiddenClaims : List String := [
  "finite graph as direct Hilbert evidence",
  "matrix dashboard as spectral theorem",
  "PDE data as spectral theorem without convergence"
]

end ConeIndex
end Spectral
end Surface
```
