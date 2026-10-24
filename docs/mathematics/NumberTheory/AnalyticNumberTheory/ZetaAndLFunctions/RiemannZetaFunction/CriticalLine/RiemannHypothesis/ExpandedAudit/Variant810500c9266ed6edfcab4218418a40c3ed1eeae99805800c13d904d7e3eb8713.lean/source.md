# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variant810500c9266ed6edfcab4218418a40c3ed1eeae99805800c13d904d7e3eb8713

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85300ae1fa710cb78bab5cfc0729314dbf56baea` · SHA-256 `810500c9266ed6edfcab4218418a40c3ed1eeae99805800c13d904d7e3eb8713`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSquarefreeLedgerRadius
set_option linter.hashCommand false
#check RH16SquarefreeLedgerRadius.squarefreeLedgerCost_antitone
#print axioms RH16SquarefreeLedgerRadius.squarefreeLedgerCost_antitone
#check RH16SquarefreeLedgerRadius.squarefreeLedgerCost_ninety_one_lt_1305
#print axioms RH16SquarefreeLedgerRadius.squarefreeLedgerCost_ninety_one_lt_1305
#check RH16SquarefreeLedgerRadius.squarefreeLedgerCost_lt_1305
#print axioms RH16SquarefreeLedgerRadius.squarefreeLedgerCost_lt_1305
#check RH16SquarefreeLedgerRadius.actual_ledger_error_tail_lt_1305
#print axioms RH16SquarefreeLedgerRadius.actual_ledger_error_tail_lt_1305
#check RH16SquarefreeLedgerRadius.all_real_lower_with_fixed_squarefree_cap
#print axioms RH16SquarefreeLedgerRadius.all_real_lower_with_fixed_squarefree_cap
#check RH16SquarefreeLedgerRadius.actual_negative_defect_cap_fixed_squarefree
#print axioms RH16SquarefreeLedgerRadius.actual_negative_defect_cap_fixed_squarefree
#check RH16SquarefreeLedgerRadius.estimate_of_readout_fixed_squarefree_cap
#print axioms RH16SquarefreeLedgerRadius.estimate_of_readout_fixed_squarefree_cap
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```
