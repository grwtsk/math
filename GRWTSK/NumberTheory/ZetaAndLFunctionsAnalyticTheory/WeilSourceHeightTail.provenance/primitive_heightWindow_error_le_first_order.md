# primitive_heightWindow_error_le_first_order

Local attribution: grwtsk contributors. Date/version: 2026-11-12, v1.
Statement locator: WSHT-v1-06. MSC2020 primary: 11M41.
Fully qualified declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.primitive_heightWindow_error_le_first_order`.
Source: [WeilSourceHeightTail.lean](../WeilSourceHeightTail.lean).
Classification: local consequence / source-specific return, not a direct paper
formalization or a novelty claim. Originality UNASSESSED.

## Literal statement and hypotheses

```lean
theorem primitive_heightWindow_error_le_first_order
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (J : ℕ) (H : ℝ)
    (hJ : (2 : ℝ) ^ J ≤ 1 + H) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    ‖((∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)) +
        (if N = 1 then W 0 + W 1 else 0)) -
      ∑ rho ∈ heightWindow chi hprim H, (zeroMultiplicity chi rho : ℂ) * W rho.1‖ ≤
        16 * Real.exp A * sourceCountConstant chi * derivativeL1Cost f 1 ^ 2 *
          ((J : ℝ) + 2) * (1 / 2 : ℝ) ^ J
```

The quantified character/test/support/cutoff assumptions above are retained
literally. No RH, GRH, arithmetic count/growth, simple-zero or numerical-list
premise is added. A primitive character at level one is included. The source endpoint is
not silently identified with the physical `primitiveArithmeticValue`.

## Primary argument and dependency correspondence

Specialize primitive_heightWindow_error_le to k=1. The existing tailBudget_one evaluates r=1/2. With B=1/2, C=8*D and c=1, exp(2*A*B)=exp(A), and the coefficient is 16*D*(J+2)*2^(-J). The source proof performs only this exact algebra after the previous complete-tail theorem.

Exact declaration suppliers: WeilSourceHeightTail.lean: primitive_heightWindow_error_le. GRWTSK/MeasureAndIntegration/DyadicDecayMoment.lean: tailBudget_one.

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

Consumer: An explicit error budget at arbitrary allowed H, including H=2^J, for fixed source and admissible test.

Hostile check: The estimate retains exp(A), derivativeL1Cost(f,1)^2 and the character-dependent D. Increasing support or modulation can increase the budget; no unrestricted L2 or varying-test uniform convergence follows.

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
#print axioms GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.primitive_heightWindow_error_le_first_order
```
