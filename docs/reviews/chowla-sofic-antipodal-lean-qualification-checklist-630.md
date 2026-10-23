# Lean qualification checklist: antipodal count and canonical-energy consumers

Date: 2026-10-22
PR: grwtsk/math#638
Inspected head: 12619d91b574f6ef773d7dc1a9c4f6e3db6b5c11
Source blobs:
- FiniteAntipodalWalshExpansion.lean: 741bd4ed545637891c2edd55e416224e2c5936b6
- LiouvilleAntipodalPairCount.lean: fa7317db7d49c79f0514018b7a4623c05e7247cf

Status: SOURCE_REVIEW / NO_COMPILER_RECEIPT / NOT_KERNEL_AUDITED.

## Minimal exact compile target

1. Resolve pinned Lean 4.33.0 and Mathlib
   db584cd6d46c92f209a44c0f1c829460d327499d.
2. Elaborate FiniteAntipodalWalshExpansion.lean first.
3. Elaborate LiouvilleAntipodalPairCount.lean with its complete
   transitive imports. Do not substitute the paper identity
   for an elaborated proof.
4. Inspect exact elaborated types and #print axioms for:
   product_one_sub_eq_powerset_sum;
   antipodal_character_product;
   sum_powerset_eq_subtype_sum;
   normalized_full_subtype_characters_eq_one_add_mixed;
   dyadicSignedMixedEnergy_eq_antipodal_count;
   canonicalOddLiftEnergy_eq_antipodal_count;
   canonicalOddLiftEnergy_antipodal_lower_bound.
5. Require independent replay of the exact source tree.

## Specific source-level type risks

- The expression `Finset.sum_attach H.powerset` needs
  its exact pinned theorem signature checked; the desired
  RHS ranges over subsets of H, not merely an attached
  version of the already enumerated powerset.
- `Finset.prod_image` must use the exact subtype-value
  injectivity hypothesis.
- `Finset.sum_filter` and `Finset.sum_product`
  need the correct rewrite direction and implicit predicates.
- `Finset.sum_equiv`, `Equiv.sum_comp`, and
  `Finset.insert_inj` must be verified against the
  pinned Mathlib declarations.
- The final `simp_rw` expansion must rewrite inside
  the ordered-pair sum and leave the correct normalized
  powerset expression.
- No explicit `sorry` in the source establishes only
  a textual condition, not successful elaboration.

## Fail-closed acceptance

Any elaboration failure, unknown axiom, missing exact
type, or absent independent replay blocks promotion.
No CI workflow is authorized or launched by this
checklist. No new mathematical cancellation estimate
is claimed. Keep PR #638 draft and unmerged.
