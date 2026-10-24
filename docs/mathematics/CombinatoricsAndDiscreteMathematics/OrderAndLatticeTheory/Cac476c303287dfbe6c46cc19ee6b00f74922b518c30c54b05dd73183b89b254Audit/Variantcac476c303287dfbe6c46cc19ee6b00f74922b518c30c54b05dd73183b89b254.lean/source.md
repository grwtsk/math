# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Cac476c303287dfbe6c46cc19ee6b00f74922b518c30c54b05dd73183b89b254Audit.Variantcac476c303287dfbe6c46cc19ee6b00f74922b518c30c54b05dd73183b89b254

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9ab9a40d7989690ae1734d48316991ccea13ae1` · SHA-256 `cac476c303287dfbe6c46cc19ee6b00f74922b518c30c54b05dd73183b89b254`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MaximalDefect

set_option autoImplicit false
set_option relaxedAutoImplicit false
-- This diagnostic file intentionally prints declarations. The independently
-- compiled source module is checked with the full standard linter set.
set_option linter.hashCommand false

open FormalResearch.PositiveAtlas.MaximalDefect

#print Supermodular
#print IsMaximizer
#check @maximizers_inf_sup
#check @exists_unique_greatest_maximizer_of_attained
#check @exists_unique_greatest_maximizer
#check @greatest_maximizer_fixed
#check @exists_greatest_maximizer_fixed
#check @bound_of_fixed_points_bound
#check @finset_exists_greatest_maximizer_fixed
#check @canonical_selection_does_not_bound_defect
#check @finite_values_do_not_ensure_greatest_maximizer

#print axioms maximizers_inf_sup
#print axioms exists_unique_greatest_maximizer_of_attained
#print axioms exists_unique_greatest_maximizer
#print axioms greatest_maximizer_fixed
#print axioms exists_greatest_maximizer_fixed
#print axioms bound_of_fixed_points_bound
#print axioms finset_exists_greatest_maximizer_fixed
#print axioms canonical_selection_does_not_bound_defect
#print axioms finite_values_do_not_ensure_greatest_maximizer

-- Semantically expanded consumer type: no source conjecture occurs here.
example {α : Type*} [Lattice α] [Finite α] [Nonempty α]
    {ι : Type*} {f : α → ℝ}
    (hsuper : ∀ x y, f x + f y ≤ f (x ⊓ y) + f (x ⊔ y))
    (symmetry : ι → α ≃o α)
    (hpreserve : ∀ i x, f (symmetry i x) = f x) (C : ℝ)
    (hbound : ∀ x, (∀ i, symmetry i x = x) → f x ≤ C) :
    ∀ x, f x ≤ C :=
  bound_of_fixed_points_bound hsuper symmetry hpreserve C hbound
```
