import SourcePhysicalBirthSource
open RH16PhysicalBirthKernel
#print actualPhysicalWeight
#print axioms actualPhysicalWeight
#print actualPhysicalKernel
#print axioms actualPhysicalKernel
#print physicalCurvaturePolynomial
#print axioms physicalCurvaturePolynomial
#print actualPhysicalWeight_eq_profile
#print axioms actualPhysicalWeight_eq_profile
#print actualPhysicalKernel_eq_polynomial
#print axioms actualPhysicalKernel_eq_polynomial
#print actualPhysicalPrimitive
#print axioms actualPhysicalPrimitive
#print actualPhysicalPrimitive_second_eq_weight
#print axioms actualPhysicalPrimitive_second_eq_weight
#print actualPhysicalPrimitive_fourth_eq_kernel
#print axioms actualPhysicalPrimitive_fourth_eq_kernel

open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
