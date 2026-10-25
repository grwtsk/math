# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintCoinductive.Variant710f7a6cae8ca893b1fa54d15250ef7596ae582a7b6e424446be398416172002

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `349b5a977e39220e9ae61bd12af77d02f435aa26` · SHA-256 `710f7a6cae8ca893b1fa54d15250ef7596ae582a7b6e424446be398416172002`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.Lint

/-! Tests that linters skip auto-generated declarations from coinductive predicates. -/

/-- A coinductive stream predicate for testing. -/
coinductive MyStream (α : Type) : Prop where
  | cons : α → MyStream α → MyStream α

mutual
  /-- Coinductive half of a mutual block for testing. -/
  coinductive tick : Prop where
  | mk : ¬tock → tick

  /-- Inductive half of a mutual block for testing. -/
  inductive tock : Prop where
  | mk : ¬tick → tock
end

#guard_msgs in
#lint- only docBlame
```
