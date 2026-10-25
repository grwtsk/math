# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GammaScattering.Variant63b1311d5f0ddb2bf87958a71de82fe3b61a799f92356dbb38d134274cd7e4e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e43050e6b71603d7cc3b9265895ae20e982a4acf` · SHA-256 `63b1311d5f0ddb2bf87958a71de82fe3b61a799f92356dbb38d134274cd7e4e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
