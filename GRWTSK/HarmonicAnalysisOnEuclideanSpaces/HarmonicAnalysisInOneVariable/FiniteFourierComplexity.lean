import OAI.Computability.FourierCircuit.Main
import OAI.Computability.FourierTransform.Main
import OAI.LinearAlgebra.FiniteFourier.BatchedTheorem
import OAI.LinearAlgebra.FiniteFourier.IntegralConvolutionTheorem
import OAI.LinearAlgebra.FiniteFourier.Main

/-!
# Finite Fourier Complexity

Local attribution: grwtsk contributors.
Exact upstream interfaces for the isolated family 379 environment.
-/

namespace GRWTSK.HarmonicAnalysisOnEuclideanSpaces.HarmonicAnalysisInOneVariable.FiniteFourierComplexity

export OAI.LinearAlgebra.FiniteFourier (fourierComplexity)
export OAI.LinearAlgebra.FiniteFourier (batchedFourierComplexity)
export OAI.LinearAlgebra.FiniteFourier (integralConvolutionBound)
export OAI.ExactFourier (main_theorem)
export OAI.PowerSaving (transform_main)
export OAI.PowerSaving (convolution_main)

end GRWTSK.HarmonicAnalysisOnEuclideanSpaces.HarmonicAnalysisInOneVariable.FiniteFourierComplexity
