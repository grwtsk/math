# Complete source: GRWTSK.Topology.GeneralTopology.CanonicalAudit.Variant073ba058d49308004948129b34d11501b10b95f1a1dca829e4b0a185745a7c9e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba5427495910b46ad7872617820b774443427295` · SHA-256 `073ba058d49308004948129b34d11501b10b95f1a1dca829e4b0a185745a7c9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.RationalPhase

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let entries := env.constants.toList.filter fun item =>
    (`FormalResearch.PositiveAtlas.RationalPhase).isPrefixOf item.1
  for (name, info) in entries.mergeSort (fun a b => Name.lt a.1 b.1) do
    let axioms ← collectAxioms name
    logInfo m!"AUDIT_NAME {name}"
    logInfo m!"AUDIT_TYPE {info.type}"
    logInfo m!"AUDIT_AXIOMS {axioms.qsort Name.lt |>.toList}"
```
