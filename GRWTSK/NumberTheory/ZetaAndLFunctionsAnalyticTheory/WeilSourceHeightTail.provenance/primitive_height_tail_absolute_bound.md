# primitive_height_tail_absolute_bound

Local attribution: grwtsk contributors. Date/version: 2026-11-12, v1.
Statement locator: WSHT-v1-04. MSC2020 primary: 11M41.
Fully qualified declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.primitive_height_tail_absolute_bound`.
Source: [WeilSourceHeightTail.lean](../WeilSourceHeightTail.lean).
Classification: local consequence / source-specific return, not a direct paper
formalization or a novelty claim. Originality UNASSESSED.

## Literal statement and hypotheses

```lean
theorem primitive_height_tail_absolute_bound
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k J : ℕ) (hk : 1 ≤ k)
    (H : ℝ) (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    let v := fun rho : CriticalStripZero chi =>
      if H ≤ |rho.1.im| then (zeroMultiplicity chi rho : ℂ) * W rho.1 else 0
    Summable (fun rho => ‖v rho‖) ∧
      (∑' rho, ‖v rho‖) ≤ derivativeL1Cost f k ^ 2 *
        tailBudget A (1 / 2) (8 * sourceCountConstant chi) 1 k J
```

The quantified character/test/support/cutoff assumptions above are retained
literally. No RH, GRH, arithmetic count/growth, simple-zero or numerical-list
premise is added. A primitive character at level one is included. The source endpoint is
not silently identified with the physical `primitiveArithmeticValue`.

## Primary argument and dependency correspondence

Set m(rho) to the original analytic multiplicity, z(rho)=-i(rho-1/2), D=sourceCountConstant chi. heightCount_le_iff converts the complete source count into all-finite-subsets height control. dyadic_count_of_height_count gives C=2*D*(3+1)=8*D. radial_tail_moment at B=1/2 proves summability and the exact budget of the positive radial decay moment. From 2^J<=1+H and H<=abs(Im rho), the omitted height term lies in this radial tail. The literal Fourier adapter and norm_fourier_correlation_le_decay give a pointwise nonnegative majorant. Direct comparison proves absolute summability, and Summable.tsum_le_tsum bounds the SUM OF NORMS. README sections 3 and 5 give the full argument and boundary analysis.

Exact declaration suppliers: DirichletZeroCounting.lean: heightCount_le_source_bound; sourceCountConstant_nonneg. DirichletZeroMultiplicity.lean: heightCount_le_iff. WeilCorrelationMoment.lean: spectralCoordinate_radius_bounds_of_strip. WeilContourWeight.lean: correlation_contour_weight_eq_fourier. WeilCorrelationDecay.lean: norm_fourier_correlation_le_decay. GRWTSK/MeasureAndIntegration/DyadicDecayMoment.lean: dyadic_count_of_height_count; radial_tail_moment. Pinned Mathlib: Summable.of_norm_bounded; Summable.tsum_le_tsum; HasSum.mul_left.

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

Consumer: primitive_heightWindow_error_le: turn this absolute remainder into the exact error of the original contour endpoint. No generic replacement form is introduced.

Hostile check: Subset monotonicity is applied only to the nonnegative moment. A signed radial sum can vanish by cancellation while a height sub-tail is arbitrarily large. Cutoff equality H=abs(Im rho) stays in the tail; central zeros are not lost.

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
#print axioms GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.primitive_height_tail_absolute_bound
```
