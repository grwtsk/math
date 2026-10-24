# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedLaplaceContinuationStatements.Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a92f56e91664aab1500ccf6f3f9ee3bda0c3db9",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a92f56e91664aab1500ccf6f3f9ee3bda0c3db9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/actuallaplace--b0e51dd8390a5f2616c357dc.md) | 33 | `declaration-track:b0e51dd8390a5f2616c357dcc881b25c106b13898c094ce5c5705230400c32b3` |
| 2 | `theorem` | [decay_derivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/decay-derivative-bound--26165f28e3ca5b5e6c87090b.md) | 36 | `result-track:26165f28e3ca5b5e6c87090bc7f8a93f7cabdcade1b5b864235eff84b773ae9a` |
| 3 | `theorem` | [actualLaplace_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/actuallaplace-differentiableat--e600aae56427d520cbd90796.md) | 49 | `result-track:e600aae56427d520cbd90796ae3c386e0a925f8fb2a947d226bdc438b4101fbf` |
| 4 | `theorem` | [V_differentiableAt_of_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/v-differentiableat-of-ne-zero--987d32a458cb161526361c76.md) | 101 | `result-track:987d32a458cb161526361c76c76c6d19a7c71d20a2f38b3a20014e8f33060b54` |
| 5 | `theorem` | [repairedTransfer_differentiableAt_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/repairedtransfer-differentiableat-of-ne--76df8476837422096a05dd92.md) | 110 | `result-track:76df8476837422096a05dd92985b990d9241d130f6a27de80587a0bb43adddf6` |
| 6 | `theorem` | [repairedTransfer_analyticAt_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/repairedtransfer-analyticat-pole--e6dfcb8f3f390bf48615eacf.md) | 126 | `result-track:e6dfcb8f3f390bf48615eacf72b65f973702bc0880c5f4254a1dd569fa9ec6d2` |
| 7 | `theorem` | [repairedTransfer_differentiableOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/repairedtransfer-differentiableon-positive--6e666f4a758c72ee3e35be18.md) | 135 | `result-track:6e666f4a758c72ee3e35be187b2551843d8f81c008b92c981e4c2d7c4304872e` |
| 8 | `theorem` | [actualLaplace_analyticOn_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/actuallaplace-analyticon-positive--dc8a7b7b71e4166acce2d26c.md) | 147 | `result-track:dc8a7b7b71e4166acce2d26ced7ae6d235244dfec3e51f0c449072550ab7a78c` |
| 9 | `theorem` | [actualLaplace_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/actuallaplace-eq-repairedtransfer--99eb46a3443700a0576c2351.md) | 154 | `result-track:99eb46a3443700a0576c2351f1eb6a00185ace173e8dade1ef8ecaf12d580604` |
| 10 | `theorem` | [actualLaplace_at_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/actuallaplace-at-pole--4898498d39e34fed425bd802.md) | 169 | `result-track:4898498d39e34fed425bd8020a7c95f960d1303d45c79648cda3d8002c5b4c81` |
| 11 | `theorem` | [actualLaplace_pole_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/actuallaplace-pole-ne-zero--03f804838fcaf9acdc7994e8.md) | 173 | `result-track:03f804838fcaf9acdc7994e8f12bae044b251694fa8de76da654e55e01e39d82` |
| 12 | `theorem` | [actual_laplace_integral_eq_repairedTransfer](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/actual-laplace-integral-eq-repairedtransfer--0a63e5ba9d0d938e102a2f1c.md) | 178 | `result-track:0a63e5ba9d0d938e102a2f1cc11d4f086e61be501f9dce9d98fba02cc133fc69` |
| 13 | `theorem` | [actual_laplace_integral_at_pole](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/actual-laplace-integral-at-pole--974bb70dde351e14ec7d298c.md) | 184 | `result-track:974bb70dde351e14ec7d298c1d5c964365e3a88967764fe5bfc8f04b7b5def96` |
| 14 | `theorem` | [actual_laplace_integral_zero_of_nontrivial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/actual-laplace-integral-zero-of-nontrivial--8930813543d32509b14d389a.md) | 190 | `result-track:8930813543d32509b14d389a67a08d6b53b851006a049c6854a96abe86b85cba` |
| 15 | `theorem` | [actual_laplace_integral_zero_occurrence](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/actual-laplace-integral-zero-occurrence--d5b2f167ac43c7d904a92e87.md) | 201 | `result-track:d5b2f167ac43c7d904a92e872421618f19d5c6fbcd753031ab2365022f1a64b9` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--42c7778a6f33fccfb6506d03.md) | 221 | `declaration-track:42c7778a6f33fccfb6506d032faf1f67ed3f7d91dcfa5703af6fd8ac68653ba5` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--f927510084b9baa1f90ae71a.md) | 223 | `declaration-track:f927510084b9baa1f90ae71a46bf05e4b3677cb8431e0bfed2b497fdc24c6fd0` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--b73b5f7ec31edf8b2663c629.md) | 225 | `declaration-track:b73b5f7ec31edf8b2663c629433c1726892d74296fdf52a0b7e50bf8a8dbee5d` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--92be2a3ab6cb447814b4c424.md) | 227 | `declaration-track:92be2a3ab6cb447814b4c424556b51b42eabf054ef2c467f06c4473549f36686` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--ec670b343d27e934a03045ec.md) | 230 | `declaration-track:ec670b343d27e934a03045ec50a8b1454d7f3f58bc04f0ea5bc37dadbe03b315` |
| 21 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--aaac0cb5861b0fe37a6e0a52.md) | 231 | `declaration-track:aaac0cb5861b0fe37a6e0a52adb5a2a0053ae427633db2f1e1c5c466707f0eb1` |
| 22 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--92c2c97d69c1fe2dcecc9456.md) | 233 | `declaration-track:92c2c97d69c1fe2dcecc9456f87379644aa4b64d82c7ccaffc9af59c40404c5a` |
| 23 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--893481c2e090a3a74bfa163b.md) | 235 | `declaration-track:893481c2e090a3a74bfa163ba4d043f08447ea4c512398c8c6663d8ddee22b53` |
| 24 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--1e822602fe4bdccf4f1dab2e.md) | 237 | `declaration-track:1e822602fe4bdccf4f1dab2e213f32b0d1dee48b03c53a2fc049eb45ae54238d` |
| 25 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--b84c50da3ec2fc50571b2442.md) | 238 | `declaration-track:b84c50da3ec2fc50571b2442cbd710d2534bea57602693982d0b709bc9eae5c5` |
| 26 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--997ed3113d5877849797aecb.md) | 239 | `declaration-track:997ed3113d5877849797aecbacb07e036217922e93fefc19749760292b5988e5` |
| 27 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--3a9b76b0341bddff13827305.md) | 242 | `declaration-track:3a9b76b0341bddff138273059edc6e09d95454cec9181d5668467e9316a36e04` |
| 28 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--9d58c2d688b1fa1c8e81567d.md) | 245 | `declaration-track:9d58c2d688b1fa1c8e81567d5ad8a7a51b867f27cb0c077a9e1e5af99056e7ac` |
| 29 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceContinuationStatements/Variantb6ff05b62a073a9b67d21d881b1d461e7a9c130d9a26cbdb6b2845d86f46201f.lean/declarations/example--740d0e0f3fd142eb9f10e36a.md) | 250 | `declaration-track:740d0e0f3fd142eb9f10e36a69e60bcf031511e8507d1e4744757f8e7463503f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
