import AnalyticNumberMathlib

/-!
# Axiom audit for the Mathlib-backed theorem surface

Run from the package root (`formal/`):

  lake env lean Audit/MathlibAxioms.lean

Expected output: each theorem depends only on the standard Lean/Mathlib
foundations (`Classical.choice`, `propext`, `Quot.sound`). No project-local
analytic postulate, `sorryAx`, or native-code reduction may appear.
-/

#print axioms AnalyticNumber.MathlibBridge.GeometricSeries.geometric_series_through_boundary_calculus
#print axioms AnalyticNumber.MathlibBridge.ExponentialSeries.exponential_series_through_boundary_calculus
#print axioms AnalyticNumber.MathlibBridge.Compactness.compactness_through_boundary_calculus
#print axioms AnalyticNumber.MathlibBridge.IntervalArithmetic.sqrt_two_interval_through_boundary_calculus
#print axioms AnalyticNumber.MathlibBridge.BaselSeries.basel_case_study_through_boundary_calculus
