# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.DroppedBlockBoundaryCost

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8a807494ccdb309e30fef9909068cb0139d0287` · SHA-256 `12c09611fd54bd37de93b7bb45f83c527591faf735b652514cea558d7c998499`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.SturmianBlockCounts
import GRWTSK.Spectral.FreeIDS
open GRWTSK.Spectral.SturmianBlockCounts GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.FreeIDS
private theorem free_one : freeCount 1 0 = 1 := by
  have hc : cutoff 1 0 = 1 := by
    simp [cutoff, angleFraction]
    field_simp
    norm_num
  rw [freeCount_eq_ceil, hc]
  norm_num
private theorem free_two : freeCount 2 0 = 1 := by
  have hc : cutoff 2 0 = (3/2:ℝ) := by
    simp [cutoff, angleFraction]
    field_simp
    norm_num
  rw [freeCount_eq_ceil, hc]
  norm_num
private theorem zero_count (N : ℕ) (origin : ℤ) :
    sturmianCount N 0 0 0 origin 0 = freeCount N 0 := by
  simp only [sturmianCount, freeCount, hamiltonian_zero]

example : |blockCountSum 2 1 0 0 0 0 0 - (sturmianCount 2 0 0 0 0 0 : ℝ)| ≤ 0 := by
  norm_num [blockCountSum, zero_count, free_one, free_two]
```
