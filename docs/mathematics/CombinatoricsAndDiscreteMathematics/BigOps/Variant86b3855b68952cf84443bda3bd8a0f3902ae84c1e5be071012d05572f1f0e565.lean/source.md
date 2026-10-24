# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOps.Variant86b3855b68952cf84443bda3bd8a0f3902ae84c1e5be071012d05572f1f0e565

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `563271c14a00cfa2355c36df127098ac7aeb7a2e` · SHA-256 `86b3855b68952cf84443bda3bd8a0f3902ae84c1e5be071012d05572f1f0e565`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

section
variable {ι M : Type*} [CommMonoid M] [AddCommMonoid M] [Fintype ι] {s : Finset ι} {p : ι → Prop}
  [DecidablePred p] {f : ι → M}

/-! ### Big operators over a finset -/

/-- info: ∑ i ∈ s, f i : M -/
#guard_msgs in
#check Finset.sum s fun i ↦ f i

/-- info: ∏ i ∈ s, f i : M -/
#guard_msgs in
#check Finset.prod s fun i ↦ f i

/-- info: ∑ i ∈ s with p i, f i : M -/
#guard_msgs in
#check Finset.sum {j ∈ s | p j} fun i ↦ f i

/-- info: ∏ i ∈ s with p i, f i : M -/
#guard_msgs in
#check Finset.prod {j ∈ s | p j} fun i ↦ f i

/-! ### Big operators over a finset with `funBinderTypes` on -/

set_option pp.funBinderTypes true

/-- info: ∑ i : ι, f i : M -/
#guard_msgs in
#check Finset.sum Finset.univ fun i ↦ f i

/-- info: ∏ i : ι, f i : M -/
#guard_msgs in
#check Finset.prod Finset.univ fun i ↦ f i

/-- info: ∑ i : ι with p i, f i : M -/
#guard_msgs in
#check Finset.sum {j | p j} fun i ↦ f i

/-- info: ∏ i : ι with p i, f i : M -/
#guard_msgs in
#check Finset.prod {j | p j} fun i ↦ f i

/-! ### Big operators over a finset with `funBinderTypes` off -/

set_option pp.funBinderTypes false

/-- info: ∑ i, f i : M -/
#guard_msgs in
#check Finset.sum Finset.univ fun i ↦ f i

/-- info: ∏ i, f i : M -/
#guard_msgs in
#check Finset.prod Finset.univ fun i ↦ f i

/-- info: ∑ i with p i, f i : M -/
#guard_msgs in
#check Finset.sum {j | p j} fun i ↦ f i

/-- info: ∏ i with p i, f i : M -/
#guard_msgs in
#check Finset.prod {j | p j} fun i ↦ f i

end
```
