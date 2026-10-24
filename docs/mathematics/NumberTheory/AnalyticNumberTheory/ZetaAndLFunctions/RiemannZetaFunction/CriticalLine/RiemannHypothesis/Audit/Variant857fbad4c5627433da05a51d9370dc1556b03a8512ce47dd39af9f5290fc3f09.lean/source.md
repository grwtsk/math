# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant857fbad4c5627433da05a51d9370dc1556b03a8512ce47dd39af9f5290fc3f09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59e241d8069cac011e64ce6b411bda33e08a330b` · SHA-256 `857fbad4c5627433da05a51d9370dc1556b03a8512ce47dd39af9f5290fc3f09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

set_option linter.hashCommand false

open FormalResearch.RiemannHypothesis.SourceMangoldtNorm

#check @interactionShiftMass
#print axioms interactionShiftMass
#check @interactionShiftMass_nonneg
#print axioms interactionShiftMass_nonneg
#check @symmetricTranslation_norm_apply_le
#print axioms symmetricTranslation_norm_apply_le
#check @symmetricTranslation_norm_le_one
#print axioms symmetricTranslation_norm_le_one
#check @sourceCorrelation_sub_one_abs_le
#print axioms sourceCorrelation_sub_one_abs_le
#check @sourceCorrelation_tendsto_one
#print axioms sourceCorrelation_tendsto_one
#check @interaction_probe_eq_sum
#print axioms interaction_probe_eq_sum
#check @interaction_probe_mass_error
#print axioms interaction_probe_mass_error
#check @mangoldtInteraction_norm_apply_le
#print axioms mangoldtInteraction_norm_apply_le
#check @mangoldtInteraction_norm_le_mass
#print axioms mangoldtInteraction_norm_le_mass
#check @interaction_probe_le_norm
#print axioms interaction_probe_le_norm
#check @mass_le_mangoldtInteraction_norm
#print axioms mass_le_mangoldtInteraction_norm
#check @mangoldtInteraction_norm_eq_mass
#print axioms mangoldtInteraction_norm_eq_mass
#check @interaction_probe_eq_mass_of_shiftMass_zero
#print axioms interaction_probe_eq_mass_of_shiftMass_zero
#check @mangoldtInteraction_eq_zero_iff_mass_eq_zero
#print axioms mangoldtInteraction_eq_zero_iff_mass_eq_zero
#check @interactionShiftMass_le_scaled_mass
#print axioms interactionShiftMass_le_scaled_mass
#check @weightedMangoldt_term_le_coefficient
#print axioms weightedMangoldt_term_le_coefficient
#check @weightedMangoldt_le_mass
#print axioms weightedMangoldt_le_mass
#check @mangoldtInteraction_norm_lower
#print axioms mangoldtInteraction_norm_lower
#check @mangoldtInteraction_norm_not_eventually_bounded
#print axioms mangoldtInteraction_norm_not_eventually_bounded
```
