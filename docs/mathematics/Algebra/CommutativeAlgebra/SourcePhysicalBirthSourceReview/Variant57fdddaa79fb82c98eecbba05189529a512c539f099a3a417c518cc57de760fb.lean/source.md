# Complete source: GRWTSK.Algebra.CommutativeAlgebra.SourcePhysicalBirthSourceReview.Variant57fdddaa79fb82c98eecbba05189529a512c539f099a3a417c518cc57de760fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c082c50173b82044f9d4a2d88e906b7bf7739c7` · SHA-256 `57fdddaa79fb82c98eecbba05189529a512c539f099a3a417c518cc57de760fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
