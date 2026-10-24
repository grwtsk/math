# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualEulerOneReview.Variant01cca321c924a049c07164f7f8e55c20e610a5cbb44dba0afdfa0654182f1c5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a4f3b198883d5b41fa9825439fac7b1a542f3d8` · SHA-256 `01cca321c924a049c07164f7f8e55c20e610a5cbb44dba0afdfa0654182f1c5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualEulerOne
open RH16ActualEulerOne
#check periodicB1
#print axioms periodicB1
#check periodicB2
#print axioms periodicB2
#check sourceFloorWeight_eq_neg_periodicB1
#print axioms sourceFloorWeight_eq_neg_periodicB1
#check periodicB2_bounds
#print axioms periodicB2_bounds
#check periodicB2_abs_le
#print axioms periodicB2_abs_le
#check periodicB2_at_integer
#print axioms periodicB2_at_integer
#check periodicB2_continuous
#print axioms periodicB2_continuous
#check periodicB2_hasDerivAt
#print axioms periodicB2_hasDerivAt
#check periodicB2_ae_hasDerivAt
#print axioms periodicB2_ae_hasDerivAt
#check actual_zeta_euler_one
#print axioms actual_zeta_euler_one
#print periodicB1
#print periodicB2
#check Zeta0EqZeta
#print axioms Zeta0EqZeta
#print Zeta23.IsNontrivialZero
#print Zeta23.reflect
#print Zeta23.zetaZeros
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```
