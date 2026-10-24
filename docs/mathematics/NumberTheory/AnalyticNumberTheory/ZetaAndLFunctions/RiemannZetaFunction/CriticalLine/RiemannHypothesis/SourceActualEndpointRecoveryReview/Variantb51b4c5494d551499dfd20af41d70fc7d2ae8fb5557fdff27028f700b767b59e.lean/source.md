# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEndpointRecoveryReview.Variantb51b4c5494d551499dfd20af41d70fc7d2ae8fb5557fdff27028f700b767b59e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dd022a650fc62d3b5c1ea0086e33470fcf39666` · SHA-256 `b51b4c5494d551499dfd20af41d70fc7d2ae8fb5557fdff27028f700b767b59e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualEndpointRecovery
open RH16ActualEndpointRecovery
#print endpointPlus
#print axioms endpointPlus
#print endpointMinus
#print axioms endpointMinus
#print endpointCommon
#print axioms endpointCommon
#print positiveEndpoint
#print axioms positiveEndpoint
#print negativeEndpoint
#print axioms negativeEndpoint
#print invariantMixed
#print axioms invariantMixed
#print endpoint_product
#print axioms endpoint_product
#print actual_source_endpoint_recovery
#print axioms actual_source_endpoint_recovery

open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```
