# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrimeAsymptotics.Variant6c20b8f9b96b84f34561a4bf3f337829d98363063ed83768f958a825938419b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfa2c02b1d8a91fc5a0b31cab67e4c3d77ff4da0` · SHA-256 `6c20b8f9b96b84f34561a4bf3f337829d98363063ed83768f958a825938419b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Prime-asymptotic analytic blueprint boundary.

This marker groups PNT-adjacent asymptotic blueprint material without importing
the unresolved corpus.
-/

namespace Formal.Blueprint.Analytic.PrimeAsymptotics

def files : List String :=
  [ "BrunTitchmarsh"
  , "Consequences"
  , "HoffsteinLockhart"
  , "IwaniecKowalskiCh1"
  , "MediumPNT"
  , "StrongPNT"
  ]

theorem files_count : files.length = 6 := by
  rfl

end Formal.Blueprint.Analytic.PrimeAsymptotics
```
