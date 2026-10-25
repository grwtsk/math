# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AxiomAudit.Variant6134ac9aa488250b1470f5a2b789af4aef5470b482ed7da4b64e3f3c17b5bef0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `521f022d289bbf362b1c7a17b05d18a79816f802` · SHA-256 `6134ac9aa488250b1470f5a2b789af4aef5470b482ed7da4b64e3f3c17b5bef0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Util.AssertNoSorry
import LeanCert.Engine.Eval.Core
import LeanCert.Core.IntervalRat.Taylor
import LeanCert.Core.IntervalRat.TrigReduced

/-!
Axiom/sorry guardrail for the certified interval evaluation path.
These should stay free of `sorryAx`.
-/

assert_no_sorry LeanCert.Engine.evalIntervalCore_correct
assert_no_sorry LeanCert.Engine.evalIntervalCore1_correct
assert_no_sorry LeanCert.Core.IntervalRat.mem_logComputable
assert_no_sorry LeanCert.Core.IntervalRat.mem_sinComputableReduced
assert_no_sorry LeanCert.Core.IntervalRat.mem_cosComputableReduced
assert_no_sorry LeanCert.Engine.mem_erfPointComputable
```
