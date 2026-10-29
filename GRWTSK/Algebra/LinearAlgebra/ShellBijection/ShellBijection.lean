import Folder.Expansion.ShellBijection

/-!
# Folder.Theorem.BinaryMatrix.ShellBijection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.binary_matrix.shell_bijection
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace BinaryMatrix

theorem decode_encode_shell
    {s : Carrier.GridShape}
    (M : Carrier.BinaryMatrix)
    (hm : M.m = s.rows + 2)
    (hn : M.n = s.cols + 2) :
    Expansion.decodeShell (Expansion.encodeShell M hm hn) = M :=
  Expansion.decode_encode_shell M hm hn

end BinaryMatrix
end Theorem
end Folder
