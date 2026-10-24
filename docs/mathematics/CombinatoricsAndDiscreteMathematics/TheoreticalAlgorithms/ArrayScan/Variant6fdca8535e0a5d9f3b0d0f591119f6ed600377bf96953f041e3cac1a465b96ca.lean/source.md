# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayScan.Variant6fdca8535e0a5d9f3b0d0f591119f6ed600377bf96953f041e3cac1a465b96ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0d8a521abb14947cd4c17400e4b07cc65b49388` · SHA-256 `6fdca8535e0a5d9f3b0d0f591119f6ed600377bf96953f041e3cac1a465b96ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Data.Array.Basic

open Array

/- Docstring examples for `Array.scan{l,r,lM,rM}` -/

example [Monad m] (f : α → β → m α) :
    Array.scanlM f x₀ #[a, b, c] = (do
      let x₁ ← f x₀ a
      let x₂ ← f x₁ b
      let x₃ ← f x₂ c
      pure #[x₀, x₁, x₂, x₃]) := by
  simp [scanlM, scanlM.loop]

example [Monad m] (f : α → β → m α) :
    Array.scanlM f x₀ #[a, b, c] (start := 1) (stop := 3) = (do
      let x₁ ← f x₀ b
      let x₂ ← f x₁ c
      pure #[x₀, x₁, x₂]) := by
  simp [scanlM, scanlM.loop]

example [Monad m] (f : α → β → m β) :
    Array.scanrM f x₀ #[a, b, c] = (do
      let x₁ ← f c x₀
      let x₂ ← f b x₁
      let x₃ ← f a x₂
      pure #[x₃, x₂, x₁, x₀]) := by
  simp [scanrM, scanrM.loop]

example [Monad m] (f : α → β → m β) :
    Array.scanrM f x₀ #[a, b, c] (start := 3) (stop := 1) = (do
      let x₁ ← f c x₀
      let x₂ ← f b x₁
      pure #[x₂, x₁, x₀]) := by
  simp [scanrM, scanrM.loop]

#guard scanl (· + ·) 0 #[1, 2, 3] == #[0, 1, 3, 6]

#guard scanr (· + ·) 0 #[1, 2, 3] == #[6, 5, 3, 0]
```
