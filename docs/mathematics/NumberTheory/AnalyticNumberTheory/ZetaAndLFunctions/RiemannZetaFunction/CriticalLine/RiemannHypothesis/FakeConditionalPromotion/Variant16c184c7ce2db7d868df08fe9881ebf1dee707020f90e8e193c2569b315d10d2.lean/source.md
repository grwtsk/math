# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FakeConditionalPromotion.Variant16c184c7ce2db7d868df08fe9881ebf1dee707020f90e8e193c2569b315d10d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d46e2d1ea557aef9580d6716e5f8c5f1c1e69fd4` · SHA-256 `16c184c7ce2db7d868df08fe9881ebf1dee707020f90e8e193c2569b315d10d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.ConditionalCriteria

/-!
Negative fixture for RH conditional-discharge discipline.

This file may typecheck because all hard inputs are explicit parameters. It
must not be accepted by proof-safety or final-cone audits as an unconditional
RH proof.
-/

namespace Folder
namespace RH

theorem fake_riemann_hypothesis
    (O : RHOperatorData)
    (hsa : IsSelfAdjoint O.D)
    (hcompact : HasCompactResolvent O.D)
    (hzero :
      ∀ z : ℂ,
        H0Zero z ↔
          ∃ mu ∈ RHSpectrum O.D, spectralParameter mu = z)
    (hreal :
      ∀ mu ∈ RHSpectrum O.D, H0ZeroIsReal (spectralParameter mu))
    (htranslate : RiemannHypothesis ↔ H0RealZeros) :
    RiemannHypothesis := by
  exact rh_of_h0_selfadjoint_realization
    O hsa hcompact hzero hreal htranslate

end RH
end Folder
```
