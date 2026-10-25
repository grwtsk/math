# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConversionAudit.Variant387880b8051da717d535dddf03b8e3d99fe44b91c0241902d10d1548c7b42add

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c480c37fb6dffe7647c02c0160dfcbda5da674b` · SHA-256 `387880b8051da717d535dddf03b8e3d99fe44b91c0241902d10d1548c7b42add`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.TypeTheory.PureTypeSystem.BetaConversion
import FormalResearch.TypeTheory.PureTypeSystem.BetaFixtures

#check FormalResearch.TypeTheory.BetaReduction.conversionFuel
#check FormalResearch.TypeTheory.BetaReduction.conversion_iff_normal_eq
#check FormalResearch.TypeTheory.BetaReduction.conversionFuel_correct
#check FormalResearch.TypeTheory.BetaReduction.conversionFuel_complete
#print axioms FormalResearch.TypeTheory.BetaReduction.conversion_iff_normal_eq
#print axioms FormalResearch.TypeTheory.BetaReduction.conversionFuel_correct
#print axioms FormalResearch.TypeTheory.BetaReduction.conversionFuel_complete
#eval FormalResearch.TypeTheory.BetaReduction.conversionFuel 1 0
  FormalResearch.TypeTheory.BetaReduction.identityRedex
  (OAI.PureTypeSystem.Expr.var 0)
```
