import Folder.Rebuild.Derived.TorsionComplex
import Folder.Rebuild.ProofStatus

/-!
# Folder.Rebuild.Derived.CheckedQuasiIsomorphism

Checked quasi-isomorphism shadow relation for finite torsion complexes.
-/

namespace Folder
namespace Rebuild
namespace Derived

structure CheckedQuasiIsoShadow
    (A B : FiniteTorsionComplex) where
  euler_eq : eulerShadow A = eulerShadow B
  torsion_mass_eq : torsionMass A = torsionMass B

theorem checkedQuasiIsoShadow_refl
    (A : FiniteTorsionComplex) :
    CheckedQuasiIsoShadow A A where
  euler_eq := rfl
  torsion_mass_eq := rfl

theorem checkedQuasiIsoShadow_symm
    {A B : FiniteTorsionComplex}
    (h : CheckedQuasiIsoShadow A B) :
    CheckedQuasiIsoShadow B A where
  euler_eq := h.euler_eq.symm
  torsion_mass_eq := h.torsion_mass_eq.symm

theorem checkedQuasiIsoShadow_trans
    {A B C : FiniteTorsionComplex}
    (hAB : CheckedQuasiIsoShadow A B)
    (hBC : CheckedQuasiIsoShadow B C) :
    CheckedQuasiIsoShadow A C where
  euler_eq := hAB.euler_eq.trans hBC.euler_eq
  torsion_mass_eq := hAB.torsion_mass_eq.trans hBC.torsion_mass_eq

theorem checkedQuasiIsoShadow_preserves_euler
    {A B : FiniteTorsionComplex}
    (h : CheckedQuasiIsoShadow A B) :
    eulerShadow A = eulerShadow B :=
  h.euler_eq

theorem checkedQuasiIsoShadow_preserves_torsionMass
    {A B : FiniteTorsionComplex}
    (h : CheckedQuasiIsoShadow A B) :
    torsionMass A = torsionMass B :=
  h.torsion_mass_eq

structure LegacyQuasiIsoAnchor where
  sourceLabel : String
  legacyStatement : Prop
  status : RebuildProofStatus := RebuildProofStatus.classicalAnchorOnly

end Derived
end Rebuild
end Folder
