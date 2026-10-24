import SourceActualBumpVerticalBudget
set_option linter.style.header false
set_option linter.hashCommand false
set_option linter.style.setOption false
set_option pp.all true
set_option pp.maxSteps 100000000
set_option maxHeartbeats 10000000
set_option maxRecDepth 100000
set_option pp.rawOnError false
set_option pp.fullNames true
open FormalResearch.RiemannHypothesis.SourceActualBumpVerticalBudget
#print bump_laplace_endpoint_formula
#print actual_bump_vertical_norm_le
