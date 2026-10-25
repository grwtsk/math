import Mathematics.RHIsolation.Foundation

/-!
# Public RH-isolation theorem surface

This module records the final authority split without introducing a shortcut
from spectral proposals to analytic zeros.
-/

namespace Mathematics.RHIsolation

theorem finite_height_authority_is_analytic
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {cut : CriticalStripCut}
    (certificate :
      FiniteHeightRHCertificate authority cut)
    {z : ℂ}
    (owned : cut.owns z)
    (zero : xi z = 0) :
    z.re = (1 : ℝ) / 2 :=
  finiteHeightRH_sound certificate z owned zero

theorem spectral_proposal_cannot_close_analytic_zero
    (candidate : SpectralCandidate) :
    ¬ CarriesAnalyticZeroAuthority candidate :=
  spectralCandidate_has_no_analyticAuthority candidate

end Mathematics.RHIsolation
