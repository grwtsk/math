import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.TorsionWitness

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.GammaScattering

structure GammaScatteringAudit where
  scattering : Think.RadoProjectedModularHeatflow.MemoryCore.GammaPNTScattering
  principalPartsCanceled : scattering.principalPartsCanceled
  pntResidueZero : scattering.normalizer.residue = 0
  noAnalyticAuthorityImported : Prop

def GammaScatteringAudit.admitted
    (A : GammaScatteringAudit) : Prop :=
  A.scattering.principalPartsCanceled ∧
    A.scattering.normalizer.residue = 0 ∧
    A.noAnalyticAuthorityImported

theorem admitted_gamma_scattering_has_no_authority_import
    (A : GammaScatteringAudit)
    (h : A.admitted) :
    A.noAnalyticAuthorityImported := by
  exact h.2.2

theorem admitted_gamma_scattering_has_pnt_residue_zero
    (A : GammaScatteringAudit)
    (h : A.admitted) :
    A.scattering.normalizer.residue = 0 := by
  exact h.2.1

end Think.RadoProjectedModularHeatflow.GammaScattering
