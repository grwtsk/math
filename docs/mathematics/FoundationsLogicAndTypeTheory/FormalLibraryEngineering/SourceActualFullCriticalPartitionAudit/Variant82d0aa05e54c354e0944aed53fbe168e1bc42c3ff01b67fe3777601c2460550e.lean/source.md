# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceActualFullCriticalPartitionAudit.Variant82d0aa05e54c354e0944aed53fbe168e1bc42c3ff01b67fe3777601c2460550e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0441d751c7c67a0e5e7f9d631068f897ee9be7d9` · SHA-256 `82d0aa05e54c354e0944aed53fbe168e1bc42c3ff01b67fe3777601c2460550e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualFullCriticalPartition
import Lean
set_option linter.style.setOption false
set_option pp.all true
set_option pp.maxSteps 1000000
#check @RH16ActualFullCriticalPartition.actualFullCriticalContribution
#print axioms RH16ActualFullCriticalPartition.actualFullCriticalContribution
#check @RH16ActualFullCriticalPartition.actualFullOffcriticalContribution
#print axioms RH16ActualFullCriticalPartition.actualFullOffcriticalContribution
#check @RH16ActualFullCriticalPartition.actual_full_eq_critical_add_offcritical
#print axioms RH16ActualFullCriticalPartition.actual_full_eq_critical_add_offcritical
#check @RH16ActualFullCriticalPartition.actual_full_critical_real_nonneg
#print axioms RH16ActualFullCriticalPartition.actual_full_critical_real_nonneg
#check @RH16ActualFullCriticalPartition.original_quadratic_ge_offcritical
#print axioms RH16ActualFullCriticalPartition.original_quadratic_ge_offcritical
#check @RH16ActualFullCriticalPartition.estimate_of_actual_full_offcritical_cap
#print axioms RH16ActualFullCriticalPartition.estimate_of_actual_full_offcritical_cap
run_cmd do
  let env ← Lean.getEnv
  for name in env.allImportedModuleNames do
    Lean.logInfo m!"HEADER {name}"
```
