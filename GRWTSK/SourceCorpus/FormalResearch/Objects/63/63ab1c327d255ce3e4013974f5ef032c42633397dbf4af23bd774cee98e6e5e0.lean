import Folder.Research.TorsionShellComparison

/-!
# Folder.Theorem.Research.TorsionShellComparison

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.torsion_shell_comparison
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Research
namespace TorsionShellComparison

theorem shell_twist_of_zero_is_identity
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : Folder.Research.TorsionShellComparison.EllipticToShellTorsion G s) :
    R.map (Arithmetic.ECPoint.infinity (E := E)) =
      Folder.Expansion.ShellTorsion.id s :=
  Folder.Research.TorsionShellComparison.shell_twist_of_zero_is_identity R

theorem shell_twist_respects_add
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {s : Carrier.GridShape}
    (R : Folder.Research.TorsionShellComparison.EllipticToShellTorsion G s)
    (P Q : Arithmetic.ECPoint E) :
    R.map (G.add P Q) =
      Folder.Expansion.ShellTorsion.comp (R.map P) (R.map Q) :=
  Folder.Research.TorsionShellComparison.shell_twist_respects_add R P Q

end TorsionShellComparison
end Research
end Theorem
end Folder
