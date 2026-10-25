# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Checkh.Variant96e908b63989ee68211839c0f0356c4c854c1a0a1a492d25a89cbe46ae14115b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1c0ec36c71a752cb61b9e2c5bb6f2e2932b5325` · SHA-256 `96e908b63989ee68211839c0f0356c4c854c1a0a1a492d25a89cbe46ae14115b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ProofWidgets.Extra.CheckHighlight

/-- info: Decidable.em (p : Prop) : p ∨ ¬p -/
#guard_msgs in
#checkh Decidable.em

/-- info: Decidable.em (p : Prop) [Decidable p] : p ∨ ¬p -/
#guard_msgs in
#checkh' Decidable.em
```
