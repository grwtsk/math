# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExpandedAudit.Variant7414235e54879b4e03a31faff5d2548f051dcbb863aefa7ee6255b412d719d75

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3d69c640c25d41f1ae56e14c358bc8bebaddc1f` · SHA-256 `7414235e54879b4e03a31faff5d2548f051dcbb863aefa7ee6255b412d719d75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceFourNineLedger
set_option linter.hashCommand false
#check RH16FourNineLedger.fourNineLedgerCost
#print axioms RH16FourNineLedger.fourNineLedgerCost
#check RH16FourNineLedger.actual_ledger_error_tail_four_nine
#print axioms RH16FourNineLedger.actual_ledger_error_tail_four_nine
#check RH16FourNineLedger.fourNineLedgerCost_antitone
#print axioms RH16FourNineLedger.fourNineLedgerCost_antitone
#check RH16FourNineLedger.fourNineLedgerCost_ninety_one_lt_1168
#print axioms RH16FourNineLedger.fourNineLedgerCost_ninety_one_lt_1168
#check RH16FourNineLedger.fourNineLedgerCost_lt_1168
#print axioms RH16FourNineLedger.fourNineLedgerCost_lt_1168
#check RH16FourNineLedger.actual_ledger_error_tail_lt_1168
#print axioms RH16FourNineLedger.actual_ledger_error_tail_lt_1168
#check RH16FourNineLedger.residual_tail_of_readout_four_nine
#print axioms RH16FourNineLedger.residual_tail_of_readout_four_nine
#check RH16FourNineLedger.all_real_lower_of_readout_four_nine
#print axioms RH16FourNineLedger.all_real_lower_of_readout_four_nine
#check RH16FourNineLedger.all_real_lower_with_fixed_four_nine_cap
#print axioms RH16FourNineLedger.all_real_lower_with_fixed_four_nine_cap
#check RH16FourNineLedger.estimate_of_readout_fixed_four_nine_cap
#print axioms RH16FourNineLedger.estimate_of_readout_fixed_four_nine_cap
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {m}"
```
