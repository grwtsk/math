# Antipodal counting proof: qualification gate after source assembly

Date: 2026-10-22
Owner: grwtsk/math #630; arithmetic scope #441
Inspected PR #638 head: 99b9fcdae73a94e490e17962d9ddc7dcf5c2b9c0
Status: SOURCE_COMPLETE / NOT_COMPILED / NOT_KERNEL_AUDITED

The assembled source GRWTSK/NumberTheory/ArithmeticFunctions/
LiouvilleAntipodalPairCount.lean is blob
34baa21e5aaf8c6416a073eda23f8683f53e0623 (624 lines).
Its generic powerset supplier FiniteAntipodalWalshExpansion.lean
is blob 741bd4ed545637891c2edd55e416224e2c5936.
Both contain zero explicit proof-hole commands at this pin.
This does NOT establish that the files elaborate.

Selected theorem:
  dyadicSignedMixedEnergy_eq_antipodal_count
  M>0 -> X(M,H)=2^|H|*A(M,H)/M²-1.

Preflight risks requiring actual Lean verification:
1. Finset.sum_attach is used as an equality between an
   ordinary powerset sum and a subtype-indexed sum. Check
   the exact theorem type at pinned Mathlib and its direction.
2. Finset.sum_product and Finset.sum_filter are used to
   reorganize the ordered-root count. Check their elaborated
   forms and the implicit type of the filtered predicate.
3. Finset.prod_image and the subtype value injection require
   an exact function-injectivity proof at the pinned version.
4. The generic product_one_sub_eq_powerset_sum proof relies
   on powerset_insert, sum_disjUnion, sum_image and
   Finset.insert_inj; these have not been checked by Lean.
5. The final proof uses simp_rw on an indexed detector equality
   and rewrites the complete normalized sum. Its rewrite
   orientation and expression unification must be checked.
6. No declaration in the full transitive import graph can be
   promoted before a clean compile and #print axioms audit.

Acceptance gate:
- Check out exact head and pinned Lean 4.33.0 / Mathlib
  db584cd6d46c92f209a44c0f1c829460d327499d.
- Elaborate the generic supplier, then the antipodal
  module, recording compiler output and exact theorem types.
- Inspect every selected theorem's transitive axioms.
- Reject any unresolved elaboration error, sorryAx,
  unapproved axiom or missing receipt.
- Independently replay the same exact source tree.
- Keep PR #638 draft until those checks succeed.

No Lean, Lake, native code, CI or independent replay
was executed as part of this qualification note.
The mathematical identity is finite and does not
imply an asymptotic antipodal collision estimate,
Chowla cancellation, GUE or RH.
