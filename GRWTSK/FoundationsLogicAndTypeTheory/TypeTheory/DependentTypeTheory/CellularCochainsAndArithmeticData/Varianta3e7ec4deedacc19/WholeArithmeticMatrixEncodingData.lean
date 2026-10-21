/-
WholeArithmeticMatrixEncodingData - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a
Organized SHA-256: 0658bd3ca17bfee9de940ba83f86aa5579128bb96e4aa922483b36cf44afb99d
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: The unary constant-one matrix and its exact shape theorem form a matrix-theory seam. The entire four-field arithmetic encoding record and unary constructor form a dependent-data seam using the explicit same-source unary companion. For arbitrary records the matrix field has no compatibility equation with either number or factor representation; decoded_matches concerns representation only. No general matrix decoder or injectivity is asserted. All original namespace and control blocks are copied unchanged. Only listed same-source public companion imports are added; original imported providers remain literal and unreplayed.
-/

import Folder.Carrier.BinaryMatrix
import Folder.CellularArithmetic.CellularRepresentation
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.CellularCochainsAndArithmeticData.Varianta3e7ec4deedacc19.UnaryPositiveNaturalMatrix

/-!
# Folder.CellularArithmetic.BinaryMatrixEncoding

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: bm.unary_arithmetic_encoding
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace CellularArithmetic

structure BinaryMatrixArithmeticEncoding where
  number : NumberTheory.PositiveNat
  representation : CellularArithmeticRepresentation
  matrix : Carrier.BinaryMatrix
  decoded_matches : representation.decode = number.val

noncomputable def unaryEncoding
    (n : NumberTheory.PositiveNat) :
    BinaryMatrixArithmeticEncoding where
  number := n
  representation := encodePositiveNat n
  matrix := unaryBinaryMatrixOfNat n
  decoded_matches := decode_encode_positiveNat n

end CellularArithmetic
end Folder
