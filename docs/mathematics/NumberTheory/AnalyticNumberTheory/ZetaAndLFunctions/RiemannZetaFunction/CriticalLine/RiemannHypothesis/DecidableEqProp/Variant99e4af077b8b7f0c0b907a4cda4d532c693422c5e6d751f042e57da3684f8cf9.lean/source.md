# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DecidableEqProp.Variant99e4af077b8b7f0c0b907a4cda4d532c693422c5e6d751f042e57da3684f8cf9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eebcf62b7ebcf3cb8254de9158655f6b6cfad357` · SHA-256 `99e4af077b8b7f0c0b907a4cda4d532c693422c5e6d751f042e57da3684f8cf9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module -- shake: keep-all
import Mathlib

/-!
# No decidable equality for `Prop`

We import everything to verify that nothing exposes a `DecidableEq` instance for `Prop`.
-/

/--
error: failed to synthesize
  DecidableEq Prop

Hint: Additional diagnostic information may be available using the `set_option diagnostics true` command.
-/
#guard_msgs in
#synth DecidableEq Prop
```
