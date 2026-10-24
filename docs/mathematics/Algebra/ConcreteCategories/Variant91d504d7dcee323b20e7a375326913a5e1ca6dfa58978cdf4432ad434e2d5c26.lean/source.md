# Complete source: GRWTSK.Algebra.ConcreteCategories.Variant91d504d7dcee323b20e7a375326913a5e1ca6dfa58978cdf4432ad434e2d5c26

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f42ec6f0463f7abbe9fa0b0cf6031ba803940f7` · SHA-256 `91d504d7dcee323b20e7a375326913a5e1ca6dfa58978cdf4432ad434e2d5c26`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

universe u

variable (R : Type u) [Semiring R]
/-- info: ↧R : SemiRingCat -/
#guard_msgs in
#check SemiRingCat.of R

variable (R : Type u) [CommSemiring R]
/-- info: ↧R : CommSemiRingCat -/
#guard_msgs in
#check CommSemiRingCat.of R

variable (R : Type u) [Ring R] in
/-- info: ↧R : RingCat -/
#guard_msgs in
#check RingCat.of R

variable (R : Type u) [CommRing R] in
/-- info: ↧R : CommRingCat -/
#guard_msgs in
#check CommRingCat.of R

variable (X : Type u) [TopologicalSpace X] in
/-- info: ↧X : TopCat -/
#guard_msgs in
#check TopCat.of X

variable (X : Type u) [TopologicalSpace X] in
/-- info: ↧X : TopCat -/
#guard_msgs in
#check TopCat.of X

variable (X : Type u) [Fintype X] in
/-- info: ↧X : FintypeCat -/
#guard_msgs in
#check FintypeCat.of X

variable (R : Type u) [TopologicalSpace R] [CommRing R] [IsTopologicalRing R] in
/-- info: ↧R : TopCommRingCat -/
#guard_msgs in
#check TopCommRingCat.of R
```
