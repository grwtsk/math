/- Copyright (c) 2026 grwtsk contributors. MIT.
PASSIVE_ACCEPTANCE_TARGET / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimitiveGcdSourceReindex

/-!
# Full original Möbius prime-free low-gcd double-to-primitive-triple acceptance

This is source text, NOT an executed Lean receipt. A permitted owner
must replay with leanprover/lean4:v4.34.1 and the pinned Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612. Explicitly review
the imported original low-gcd mask, genuine Möbius zeros, sourceKernel,
T-log g shift, finite bijection and complete transitive axiom ledger.

The arithmetic PrimitivePrimeFreeEveryRateOn G remains unproved.
No native or CI execution, RH proof, or permission to dispatch is claimed.
-/

open GRWTSK.NumberTheory.Moebius.PrimitiveGcdFiniteBijection
open GRWTSK.NumberTheory.Moebius.PrimitiveGcdSourceReindex

#check positiveIndex
#check orderedPositivePairs
#check primitivePositiveTriples
#check pairToGcdTriple
#check gcdTripleToPair
#check gcdTripleToPair_pairToGcdTriple
#check pairToGcdTriple_gcdTripleToPair
#check pairToGcdTriple_mem_primitivePositiveTriples
#check gcdTripleToPair_mem_orderedPositivePairs
#check pairToGcdTriple_right_inverse
#check orderedPairs_sum_eq_primitiveTriples
#check rawPrimitiveTripleCross
#check originalOtherLowGcdCross_eq_rawPrimitive
#check otherLowGcdPair_eq_primitiveGuarded
#check rawPrimitive_eq_shiftedPrimitive
#check exactPrimeFreeTripleReindexTarget_proof
#check riemannHypothesis_of_primitivePrimeFree_without_reindex_premise

#print axioms orderedPairs_sum_eq_primitiveTriples
#print axioms originalOtherLowGcdCross_eq_rawPrimitive
#print axioms otherLowGcdPair_eq_primitiveGuarded
#print axioms rawPrimitive_eq_shiftedPrimitive
#print axioms exactPrimeFreeTripleReindexTarget_proof
#print axioms riemannHypothesis_of_primitivePrimeFree_without_reindex_premise
