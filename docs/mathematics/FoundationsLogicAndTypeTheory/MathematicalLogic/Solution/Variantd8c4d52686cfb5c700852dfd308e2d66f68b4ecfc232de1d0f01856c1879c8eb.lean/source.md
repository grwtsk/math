# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Solution.Variantd8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f5ffdeb9dff9c1c587af73743197879b622bfab` · SHA-256 `d8c4d52686cfb5c700852dfd308e2d66f68b4ecfc232de1d0f01856c1879c8eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
theorem hex : ∃ x : Nat, x = 0 := ⟨0, rfl⟩

noncomputable def w : Nat := Classical.choose hex

theorem hw : w = 0 := Classical.choose_spec hex
```
