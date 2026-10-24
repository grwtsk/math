# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Series.Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04ba7182ace697c537207e1160d0828bcf2ce096",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04ba7182ace697c537207e1160d0828bcf2ce096`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.UniformLimitsDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.WithTop` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendstoUniformlyOn_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/tendstouniformlyon-tsum--2dc8932a0844f6c6993aa97c.md) | 47 | `result-track:2dc8932a0844f6c6993aa97c5f036333103d0e9db068082372b6b0e123d27d2c` |
| 2 | `theorem` | [tendstoUniformlyOn_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/tendstouniformlyon-tsum-nat--dd1e5bd96749950ef5051111.md) | 63 | `result-track:dd1e5bd96749950ef5051111d05e83d3ad9d91bdfbdbc81c2d317d3e1e7c5771` |
| 3 | `theorem` | [tendstoUniformly_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/tendstouniformly-tsum--8261eec9bcef0318a022931b.md) | 72 | `result-track:8261eec9bcef0318a022931bbc13e19c38fc561c1b73cd9bd0c24fc20278573b` |
| 4 | `theorem` | [tendstoUniformly_tsum_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/tendstouniformly-tsum-nat--6e38435ac096f65258cc0f80.md) | 79 | `result-track:6e38435ac096f65258cc0f803c642e8ed7cfe648cd4a67bcf2dc8565b40199b2` |
| 5 | `theorem` | [continuousOn_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/continuouson-tsum--dfebd6890ad86cdbc8633cb4.md) | 88 | `result-track:dfebd6890ad86cdbc8633cb445589ba86bc8e7d8c090b37ff2b9df424e92b387` |
| 6 | `theorem` | [continuous_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/continuous-tsum--bf7c9d5c8f40a492c24d9f52.md) | 99 | `result-track:bf7c9d5c8f40a492c24d9f52c9c73363e725de9d5e96bb8ebd63c467cda9be9b` |
| 7 | `theorem` | [summable_of_summable_hasFDerivAt_of_isPreconnected](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/summable-of-summable-hasfderivat-of-ispreconnected--cd566fc58a391260959e5bb6.md) | 114 | `result-track:cd566fc58a391260959e5bb63b4c93e279242684eda087771d2b189f27cc162d` |
| 8 | `theorem` | [hasFDerivAt_tsum_of_isPreconnected](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/hasfderivat-tsum-of-ispreconnected--928d7942c30e74547e5eed3a.md) | 131 | `result-track:928d7942c30e74547e5eed3a07d36f163ca3587d8f0bbffbdaf767231e24eb2e` |
| 9 | `theorem` | [summable_of_summable_hasFDerivAt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/summable-of-summable-hasfderivat--eae9e4e284dbe36089e9aece.md) | 149 | `result-track:eae9e4e284dbe36089e9aece3d27a43cd9c17404a25e98a382134b6897a0db64` |
| 10 | `theorem` | [hasFDerivAt_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/hasfderivat-tsum--b0415260e5f98da82e8f63da.md) | 160 | `result-track:b0415260e5f98da82e8f63daa9b92d81b3f1b593e1df6cbb4022f3e266dbe1a0` |
| 11 | `theorem` | [differentiable_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/differentiable-tsum--24a59b33cfce952b93e91634.md) | 172 | `result-track:24a59b33cfce952b93e91634adf08b1d4623ba865b79099e147f368286a99e08` |
| 12 | `theorem` | [fderiv_tsum_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/fderiv-tsum-apply--4ea9ca487398db7f9a0b303b.md) | 184 | `result-track:4ea9ca487398db7f9a0b303b9188d3093a8f28d2dd88f93a9e75a932564dded5` |
| 13 | `theorem` | [fderiv_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/fderiv-tsum--32eefb94dce2636b81ac0970.md) | 190 | `result-track:32eefb94dce2636b81ac09707808cc16def5774d6d2143b8d6bb9a9828be6083` |
| 14 | `theorem` | [iteratedFDeriv_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/iteratedfderiv-tsum--2a209e46e27bfbdcdceb7222.md) | 201 | `result-track:2a209e46e27bfbdcdceb7222b76ddc3f2768abe3e9cc5b70c04114f6751726bc` |
| 15 | `theorem` | [iteratedFDeriv_tsum_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/iteratedfderiv-tsum-apply--134daecd3b6086dc3046b817.md) | 225 | `result-track:134daecd3b6086dc3046b817b3b2279a88c6fbcda47f168e24da8ae5205a0684` |
| 16 | `theorem` | [contDiff_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/contdiff-tsum--7fde943f8c61b5e256c5e65d.md) | 236 | `result-track:7fde943f8c61b5e256c5e65d94611849aa0f47e3c3b4bce2cd47c16d00ff82c5` |
| 17 | `theorem` | [contDiff_tsum_of_eventually](../../../../../mathematics/Analysis/AsymptoticAnalysis/Series/Variantb8b63da51523f48a0c6ec907049b6d68d2783fb998c15da6684bc8d8f4fdbe38.lean/declarations/contdiff-tsum-of-eventually--9147d8b19e7f00967060167e.md) | 263 | `result-track:9147d8b19e7f00967060167e88246ade2fd1582a76f8be06ea7c38943e65c127` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
