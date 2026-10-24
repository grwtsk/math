# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeBruijn.Variant37ea56ab424c4723e551619b1a284bb2bb11d83249b4de8ea82fc6094328274c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e047c7134b879b1fe64731d50df95e59fb5e70a6` · SHA-256 `37ea56ab424c4723e551619b1a284bb2bb11d83249b4de8ea82fc6094328274c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Finite action-window coverage
-/

namespace Mathematics.GraphAccess

structure DeBruijnCoverageCertificate (Window : Type u) where
  alphabetRef : String
  order : Nat
  declaredWindows : List Window
  coveredWindows : List Window
  alphabetComplete : Prop
  alphabetCompleteEvidence : alphabetComplete
  covers :
    ∀ window, window ∈ declaredWindows → window ∈ coveredWindows

theorem debruijn_covers_every_action_window
    {Window : Type u}
    (certificate : DeBruijnCoverageCertificate Window)
    (window : Window)
    (declared : window ∈ certificate.declaredWindows) :
    window ∈ certificate.coveredWindows :=
  certificate.covers window declared

end Mathematics.GraphAccess
```
