import Folder.CellularArithmetic.BinaryMatrixEncoding
import Folder.CellularArithmetic.CellularRepresentation
import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.Rebuild.NumberTheory.BinaryArithmetic

Checked unary BinaryMatrix arithmetic facts reused by the rebuild branch.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open Folder.NumberTheory
open Folder.CellularArithmetic

theorem unary_encoding_decodes
    (n : PositiveNat) :
    (unaryEncoding n).representation.decode = n.val :=
  (unaryEncoding n).decoded_matches

theorem unary_encoding_matrix_rows
    (n : PositiveNat) :
    (unaryEncoding n).matrix.m = 1 :=
  (unaryBinaryMatrix_shape n).1

theorem unary_encoding_matrix_cols
    (n : PositiveNat) :
    (unaryEncoding n).matrix.n = n.val :=
  (unaryBinaryMatrix_shape n).2

end NumberTheory
end Rebuild
end Folder
