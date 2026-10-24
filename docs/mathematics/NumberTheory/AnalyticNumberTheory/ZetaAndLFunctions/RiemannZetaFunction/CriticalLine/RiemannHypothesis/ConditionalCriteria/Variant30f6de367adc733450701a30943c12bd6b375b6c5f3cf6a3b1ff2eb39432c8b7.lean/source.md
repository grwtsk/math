# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ConditionalCriteria.Variant30f6de367adc733450701a30943c12bd6b375b6c5f3cf6a3b1ff2eb39432c8b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e76dc68d03f7b91866d3ea5e2df4fd20a8ab2bfe` · SHA-256 `30f6de367adc733450701a30943c12bd6b375b6c5f3cf6a3b1ff2eb39432c8b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.BoundaryCriterion

/-!
# Folder.RH.ConditionalCriteria

Radiation role: conditional-criterion
BinaryMatrix spine: This module records checked conditional RH criteria.
Ontology: rh.conditional_criteria
Pivot role: spectral
Zero typology: zeta
Contract boundary: conditional-theorem
Composite stack role: rh
-/

namespace Folder
namespace RH

noncomputable section

/--
Conditional H0 real-zero criterion from a spectral realization.

This is a checked Lean theorem about the route shape. It does not construct the
operator, prove the zero correspondence, or prove spectral reality.
-/
theorem h0_real_zeros_from_spectral_realization
    (O : RHOperatorData)
    (hzero :
      ∀ z : ℂ,
        H0Zero z ↔
          ∃ mu ∈ RHSpectrum O.D, spectralParameter mu = z)
    (hreal :
      ∀ mu ∈ RHSpectrum O.D, H0ZeroIsReal (spectralParameter mu)) :
    H0RealZeros :=
  h0_real_zeros_from_spectral_reality_and_zero_correspondence
    hzero hreal

/--
Conditional Hilbert-Polya style RH criterion.

The hard inputs remain explicit theorem parameters. This theorem must not be
presented as a proof of RH unless `hsa`, `hcompact`, `hzero`, `hreal`, and
`htranslate` are themselves checked theorems or approved imported theorems.
-/
theorem rh_of_h0_selfadjoint_realization
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
  have _hsa_checked : IsSelfAdjoint O.D :=
    D_selfAdjoint O hsa
  have _hcompact_checked : HasCompactResolvent O.D :=
    D_compactResolvent O hcompact
  exact htranslate.mpr
    (h0_real_zeros_from_spectral_realization O hzero hreal)

/--
Conditional trace/positivity boundary criterion.

This keeps trace equality, positivity, zero correspondence, spectral reality,
and H0 translation as explicit inputs. It is a route theorem, not a final RH
proof.
-/
theorem rh_of_trace_positivity_and_zero_correspondence
    (O : RHOperatorData)
    (pairing : TracePairing)
    (htrace :
      ∀ φ : RHTestFunction,
        pairing.spectral.eval φ = pairing.index.eval φ)
    (hpos : ProvenPositivity O)
    (hzero :
      ∀ z : ℂ,
        H0Zero z ↔
          ∃ mu ∈ RHSpectrum O.D, spectralParameter mu = z)
    (hreal :
      ∀ mu ∈ RHSpectrum O.D, H0ZeroIsReal (spectralParameter mu))
    (htranslate : RiemannHypothesis ↔ H0RealZeros) :
    RiemannHypothesis := by
  let B := boundary_alignment_from_trace_and_positivity pairing O htrace hpos
  have hZeros : H0RealZeros :=
    critical_line_from_boundary_alignment
      B O { sourceLabel := "conditional exact-zero data" } hzero hreal
  exact htranslate.mpr hZeros

end

end RH
end Folder
```
