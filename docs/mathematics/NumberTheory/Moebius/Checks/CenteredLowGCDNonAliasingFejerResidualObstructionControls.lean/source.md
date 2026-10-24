# Complete source: GRWTSK.NumberTheory.Moebius.Checks.CenteredLowGCDNonAliasingFejerResidualObstructionControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6844c8f99dd8a667df7c06c04d33b2c4b1e104f0` · SHA-256 `19597b9d13a10c6678c8614253cefbd32620d044b00f617b4c08931716cd6c31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerResidualObstruction

set_option autoImplicit false

open GRWTSK.NumberTheory.Moebius.CenteredLowGCD

#check gcdCutoffIndicator
#check gcdCutoffMobiusCoefficient
#check gcdCutoffMobiusCoefficient_divisor_sum
#check centeredLowGCDBilinear_eq_gcdCutoffMobiusSquareExpansion
#check centeredLowGCDBilinear_eq_mass_sq_add_highCutoff
#check gcdCutoffCorrectionCoefficient
#check gcdCutoffCorrectionTail
#check lowCoprime_add_nonCoprime_eq_mass_sq_add_correction
#check abs_gcdCutoffCorrectionCoefficient_le_card
#check gcdCutoffCorrectionWeightedQuotientMass_sqrt_le
#check abs_gcdCutoffCorrectionTail_sqrt_le_logFive
#check abs_gcdCutoffCorrectionTail_sqrt_le_target_of_sharpTail
#check nonAliasingFejerCenteredVonMangoldtMass
#check nonAliasingFejerResidual_eq_centeredMass_sq_add_correction
#check abs_nonAliasingFejerResidual_sub_centeredMass_sq_le_logFive
#check NonAliasingFejerSharpDivisibilityTail
#check centeredMass_sq_le_of_residual_and_sharpTail
#check abs_residual_le_of_centeredMass_sq_and_sharpTail
#check abs_nonAliasingFejer_positiveShift_sqrt_le_of_centeredMass_sq
```
