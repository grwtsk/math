import Zeta23.FromPNTPlus.MediumPNT
set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option pp.maxSteps 100000000
set_option maxRecDepth 100000
-- Diagnostic printing of the full genuine PNT proof requires a larger heartbeat budget.
set_option maxHeartbeats 10000000
set_option pp.rawOnError true
set_option pp.proofs true
set_option pp.fullNames true
set_option pp.explicit true
#check MediumPNT
#print axioms MediumPNT
