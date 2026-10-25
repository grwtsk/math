# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BetaAudit.Variantfb5367f6506f4293c712fb6e8160950f679e81f4b4160aabbc470ee535235f0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19f833e53e712e521f658e91bd20900ce8117603` · SHA-256 `fb5367f6506f4293c712fb6e8160950f679e81f4b4160aabbc470ee535235f0d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.TypeTheory.PureTypeSystem.BetaFixtures

#check FormalResearch.TypeTheory.BetaReduction.next_correct
#check FormalResearch.TypeTheory.BetaReduction.accessibleNext_correct
#check FormalResearch.TypeTheory.BetaReduction.longest_trace
#check FormalResearch.TypeTheory.BetaReduction.normalizeFuel_certified
#check FormalResearch.TypeTheory.BetaReduction.normalizeFuel_preserves_typing
#check FormalResearch.TypeTheory.BetaReduction.normalizeFuel_unique
#print axioms FormalResearch.TypeTheory.BetaReduction.next_correct
#print axioms FormalResearch.TypeTheory.BetaReduction.accessible_wellFounded
#print axioms FormalResearch.TypeTheory.BetaReduction.longest_trace
#print axioms FormalResearch.TypeTheory.BetaReduction.normalizeFuel_certified
#print axioms FormalResearch.TypeTheory.BetaReduction.normalizeFuel_preserves_typing
#print axioms FormalResearch.TypeTheory.BetaReduction.normalizeFuel_unique
#print axioms FormalResearch.TypeTheory.BetaReduction.body_redex_typing
#print axioms FormalResearch.TypeTheory.BetaReduction.omega_not_strongly_normalizing
#print axioms FormalResearch.TypeTheory.BetaReduction.omega_fuel_failure
#eval (FormalResearch.TypeTheory.BetaReduction.normalizeFuel 1
  FormalResearch.TypeTheory.BetaReduction.identityRedex).map fun term =>
    decide (term = OAI.PureTypeSystem.Expr.var 0)
#eval (FormalResearch.TypeTheory.BetaReduction.normalizeFuel 3
  FormalResearch.TypeTheory.BetaReduction.omegaTerm).isNone
```
