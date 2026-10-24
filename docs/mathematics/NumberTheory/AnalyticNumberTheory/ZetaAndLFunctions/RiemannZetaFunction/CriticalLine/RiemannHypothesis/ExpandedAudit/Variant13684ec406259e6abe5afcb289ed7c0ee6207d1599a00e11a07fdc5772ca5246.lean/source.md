# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variant13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c89b44eefd1c48aed13ac8f5f3fecfb33929759` · SHA-256 `13684ec406259e6abe5afcb289ed7c0ee6207d1599a00e11a07fdc5772ca5246`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSquarefreeLedger
set_option linter.hashCommand false
#check RH16SquarefreeLedger.squarefreeLedgerCost
#print axioms RH16SquarefreeLedger.squarefreeLedgerCost
#check RH16SquarefreeLedger.actual_ledger_error_tail_squarefree
#print axioms RH16SquarefreeLedger.actual_ledger_error_tail_squarefree
#check RH16SquarefreeLedger.squarefreeResidualBudget
#print axioms RH16SquarefreeLedger.squarefreeResidualBudget
#check RH16SquarefreeLedger.squarefreeResidualBudget_nonneg
#print axioms RH16SquarefreeLedger.squarefreeResidualBudget_nonneg
#check RH16SquarefreeLedger.residual_tail_of_readout_squarefree
#print axioms RH16SquarefreeLedger.residual_tail_of_readout_squarefree
#check RH16SquarefreeLedger.estimate_of_readout_squarefree
#print axioms RH16SquarefreeLedger.estimate_of_readout_squarefree
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```
