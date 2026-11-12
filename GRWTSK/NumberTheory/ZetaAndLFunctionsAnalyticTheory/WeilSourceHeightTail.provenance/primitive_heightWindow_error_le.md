# primitive_heightWindow_error_le

Local attribution: grwtsk contributors. Date/version: 2026-11-12, v1.
Statement locator: WSHT-v1-05. MSC2020 primary: 11M41.
Fully qualified declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.primitive_heightWindow_error_le`.
Source: [WeilSourceHeightTail.lean](../WeilSourceHeightTail.lean).
Classification: local consequence / source-specific return, not a direct paper
formalization or a novelty claim. Originality UNASSESSED.

## Literal statement and hypotheses

```lean
theorem primitive_heightWindow_error_le
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k J : ℕ) (hk : 1 ≤ k)
    (H : ℝ) (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    ‖((∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)) +
        (if N = 1 then W 0 + W 1 else 0)) -
      ∑ rho ∈ heightWindow chi hprim H, (zeroMultiplicity chi rho : ℂ) * W rho.1‖ ≤
        derivativeL1Cost f k ^ 2 * tailBudget A (1 / 2) (8 * sourceCountConstant chi) 1 k J
```

The quantified character/test/support/cutoff assumptions above are retained
literally. No RH, GRH, arithmetic count/growth, simple-zero or numerical-list
premise is added. A primitive character at level one is included. The source endpoint is
not silently identified with the physical `primitiveArithmeticValue`.

## Primary argument and dependency correspondence

Let v be the full original summand and u its indicator on the canonical finite heightWindow. Norm comparison proves Summable u, and tsum_eq_sum identifies its total with the literal finite head. The pointwise identity v-u equals the omitted height indicator follows from strict membership abs(Im rho)<H and its complement H<=abs(Im rho). Subtract the finite-head HasSum from the count-free actual-source HasSum. The resulting tail HasSum has target equal to the original contour integral plus both poles minus the head. Apply tsum_of_norm_bounded and primitive_height_tail_absolute_bound. No contour is evaluated at H.

Exact declaration suppliers: WeilSourceHeightTail.lean: primitive_hasSum_contour_weight_source_bound; primitive_height_tail_absolute_bound. WeilZeroSumReturn.lean: summable_norm_contour_weight_of_heightCount. DirichletZeroCounting.lean: heightCount_le_source_bound. DirichletZeroMultiplicity.lean: mem_heightWindow. Pinned Mathlib: HasSum.sub; Summable.of_norm_bounded; tsum_eq_sum; tsum_of_norm_bounded.

The complete analytical argument and exact source digests are in
[README.md](README.md). Local source dependencies are pinned to math@3b02408c60b704321cdf7e2afa452d458778ca1d.
The prior count source has blob `9a9fc7bcf6f16b8953ce4d69cf86cbe1b161614a`;
its constants differ from the separately written uniform 324 estimate.

The summation APIs used in this development, directly or through its local
suppliers, are at `d13f23b723b8a846827a245b89c10fc7d3f11612`:
Johannes Hölzl, `Topology/Algebra/InfiniteSum/Order.lean` and `Group.lean`,
blobs `33c7a42409953218c559973feeefd441eca9f5d5` and
`59ab373226bf669c56ef3ab1fda7e63c75176d39`; Sébastien Gouëzel, Heather Macbeth,
Johannes Hölzl and Yury Kudryashov, `Analysis/Normed/Group/InfiniteSum.lean`,
blob `8d025095fe1651bee64c5e50b94011c5640e4139`. See the direct pinned links in
[README section 6](README.md#6-primary-source-comparison-and-exact-provenance).
Upstream Apache-2.0 authorship is preserved; local source is MIT.
This mapping records consequences and API use, not an independent upstream replay.

Consumer: Exact finite-height approximation of the pole-inclusive arithmetic contour endpoint and primitive_heightWindow_error_le_first_order.

Hostile check: H may coincide with a zero ordinate. This is legitimate for an absolutely convergent sum decomposition, not a claim that a finite contour can pass through that zero. The head is noncomputable and not a certified numerical zero list.

## Evidence and unresolved obligations

SOURCE_PROOF_CANDIDATE. Elaboration, complete dependency build, fresh kernel
replay, transitive axiom audit, certified computation, independent analytical
review and repository-wide validation: NOT_RUN. Imported candidates and known
historical failures are not promoted. Physical gamma/orientation assembly,
full-domain arithmetic nonnegativity and certified finite enumeration remain
separate obligations. Source publication and literal-text checks are not proof
acceptance. No new frontier registry verification status is claimed.

Lean pin: `leanprover/lean4:v4.34.1`; Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: math#1801, scope comment 6829992098. The enclosing publication
commit and source byte hashes are recorded by the issue receipt. The current
canonical proof skill was unavailable; dependent execution was not performed.

Proposed axiom query after authorized elaboration (NOT_RUN):

```lean
#print axioms GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.primitive_heightWindow_error_le
```
