# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SimpleFinitePole.Variant4883aa67098b2657017b18e857487927785fc9456b250a5c50fde4afa2ca0bd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d4654bafd31febfbaec1b4f1433d72d4df0105f` · SHA-256 `4883aa67098b2657017b18e857487927785fc9456b250a5c50fde4afa2ca0bd5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.OrderedStream
import Surface.Legacy.BinaryLogicMatrix.Stream.TensorIntegrity

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure SimpleFinitePoleDescriptor where
  poleName : String
  orderedStream : OrderedBinaryLogicMatrixStream
  poleOrder : Nat
  residueMatrix : SomeBinaryLogicMatrix
  defectResidues : List IntegrityDefect
  arithmeticDescriptor : FiniteArithmeticDescriptor
  noMeromorphicFunctionClaim : True
  noBSDClaim : True
  noCriticalLineClaim : True
  noDeBruijnNewmanDynamicsClaim : True
  claimBoundary : List String

theorem simpleFinitePole_has_matrix_residue
    (P : SimpleFinitePoleDescriptor) :
    Nonempty
      (BinaryLogicMatrix P.residueMatrix.rows P.residueMatrix.cols) :=
  ⟨P.residueMatrix.matrix⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
