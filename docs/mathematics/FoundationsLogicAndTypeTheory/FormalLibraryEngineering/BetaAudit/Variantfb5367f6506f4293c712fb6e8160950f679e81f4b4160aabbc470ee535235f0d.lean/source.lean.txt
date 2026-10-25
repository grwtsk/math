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
