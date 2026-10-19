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
