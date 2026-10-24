# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Positivity.Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa1e6fbb41ce2aabcdf8ec6c4d001cf52eb33312",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa1e6fbb41ce2aabcdf8ec6c4d001cf52eb33312`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Moments.MGFAnalytic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.TaylorSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentialTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/declarations/exponentialterm--045e1e5e93b6bb5b9a0ef8f4.md) | 38 | `declaration-track:045e1e5e93b6bb5b9a0ef8f470f18556843653d53a944054515954d38935e901` |
| 2 | `lemma` | [exponentialTerm_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/declarations/exponentialterm-hassum--8bdaa4f590d3e66901ce9a42.md) | 42 | `result-track:8bdaa4f590d3e66901ce9a423d80384ff134bb731395cebbc85f1da5e14c3a1e` |
| 3 | `theorem` | [integrable_exp_add_of_summable_moments](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/declarations/integrable-exp-add-of-summable-moments--35b49be3cb2d26ffb0c5777e.md) | 58 | `result-track:35b49be3cb2d26ffb0c5777eb05ce4fd1174f92bb9a0c00e40c1e062ffd01d3e` |
| 4 | `theorem` | [integrable_exp_add_of_summable_mgf_moments](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/declarations/integrable-exp-add-of-summable-mgf-moments--ca71f76cf25bdf49e260150a.md) | 97 | `result-track:ca71f76cf25bdf49e260150a5382a8eeaee1fe0f57e6bd64f769d11fdb6f9afd` |
| 5 | `lemma` | [iteratedDeriv_complexMGF_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/declarations/iteratedderiv-complexmgf-real--208a950344e11897e317f042.md) | 106 | `result-track:208a950344e11897e317f042305c718b89133a50aaaca90a8fac2048307f3978` |
| 6 | `theorem` | [integrable_exp_add_of_holomorphic_extension](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/declarations/integrable-exp-add-of-holomorphic-extension--6a16d437e62ad7c15f0e21e4.md) | 116 | `result-track:6a16d437e62ad7c15f0e21e48ba42258b07b54d555f5e77b1efcecd86bad713b` |
| 7 | `theorem` | [not_analyticAt_of_finite_convergence_boundary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/declarations/not-analyticat-of-finite-convergence-boundary--54f88c3a90d10b3915cff3cf.md) | 147 | `result-track:54f88c3a90d10b3915cff3cfb5d7ff42a796bb66ec91c9649fe8495a7d95d17b` |
| 8 | `theorem` | [not_analyticAt_laplace_of_finite_abscissa](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Positivity/Variant731fc76392aeaa60a3e588e8884c90a229906e366ad8f2cd45ecfdda957de4a3.lean/declarations/not-analyticat-laplace-of-finite-abscissa--52e3a31a88bda168196855ff.md) | 196 | `result-track:52e3a31a88bda168196855ffebf0919a5332c2cc1e814bf169e6c695637485b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
