# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ee2009f6d646ef51374b9d073da5dd6180533c1",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ee2009f6d646ef51374b9d073da5dd6180533c1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_log_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/hasstrictderivat-log-of-pos--880e9331166f98560fded02e.md) | 34 | `result-track:880e9331166f98560fded02e409619d5906838f08f53e7de8188721ccbcfb3d6` |
| 2 | `theorem` | [hasStrictDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/hasstrictderivat-log--2c0a8ef2d6150a2ca05ab2e8.md) | 42 | `result-track:2c0a8ef2d6150a2ca05ab2e8cc4a206846900c13434acd161df4662b28ca8a68` |
| 3 | `theorem` | [hasDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/hasderivat-log--8b1f05b93140a72aef38e185.md) | 50 | `result-track:8b1f05b93140a72aef38e1853b7dd4340450b963fa820bf71a6cfaf2ce5efe1d` |
| 4 | `theorem` | [differentiableAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/differentiableat-log--9a22ed21665e37c26a1e0bcb.md) | 54 | `result-track:9a22ed21665e37c26a1e0bcb736b1cfae6b06172b114cc901b6ce755d38d92ec` |
| 5 | `theorem` | [differentiableOn_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/differentiableon-log--e0f535b69ebfcbcb398c5902.md) | 58 | `result-track:e0f535b69ebfcbcb398c5902a4aed013139d67975f231088eba6592a404230d5` |
| 6 | `theorem` | [differentiableAt_log_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/differentiableat-log-iff--ca359e686388bac4ad860760.md) | 63 | `result-track:ca359e686388bac4ad860760f09a5883146c24a1399d9de3004fe98bc3798342` |
| 7 | `theorem` | [deriv_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/deriv-log--f333a1b2b44001b96dbbb316.md) | 67 | `result-track:f333a1b2b44001b96dbbb316bfd4ddecdc900b0616bdec12631730304bdf157c` |
| 8 | `theorem` | [deriv_log'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/deriv-log--a96da0d43421926878f38957.md) | 74 | `result-track:a96da0d43421926878f389576c6aa28bb4a8afcc9724904da28f2e3404dadd7a` |
| 9 | `theorem` | [contDiffOn_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/contdiffon-log--2ead7528821ecf5f80989f26.md) | 78 | `result-track:2ead7528821ecf5f80989f2601472232067ca6852f98b9cf86b1b6d60e5aa50f` |
| 10 | `theorem` | [contDiffAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/contdiffat-log--bf86b3008e71b73c5b05bd76.md) | 84 | `result-track:bf86b3008e71b73c5b05bd7699102dab1fe56f515e8cc5cfd488dcbac7c83957` |
| 11 | `theorem` | [HasDerivWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/hasderivwithinat-log--762a851da4adf57020e8a1c6.md) | 99 | `result-track:762a851da4adf57020e8a1c6c504241bf72643607653127c282bf9e20b2c5f7b` |
| 12 | `theorem` | [HasDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/hasderivat-log--88075fc1a7abf0e82cf37cf6.md) | 105 | `result-track:88075fc1a7abf0e82cf37cf6ffb81b06c7b2d88b0780870b4d7819cba6c61306` |
| 13 | `theorem` | [HasStrictDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/hasstrictderivat-log--356325fef450890841885459.md) | 111 | `result-track:356325fef4508908418854596bd8fc55ccd2a51822717f0e5808061f0d634f8f` |
| 14 | `theorem` | [derivWithin.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/derivwithin-log--7d862ef0ae19df91c21274a6.md) | 117 | `result-track:7d862ef0ae19df91c21274a6c96203794c5bb6f8d3feb1a2947c5f22bf705385` |
| 15 | `theorem` | [deriv.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/deriv-log--b09bc98180a582f352112a37.md) | 124 | `result-track:b09bc98180a582f352112a375d2e642c78c1b7de1759c2b252d4aa39a49e0458` |
| 16 | `theorem` | [HasFDerivWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/hasfderivwithinat-log--3332b2f0bb463a6fbf481f8b.md) | 136 | `result-track:3332b2f0bb463a6fbf481f8b8e1d21aaeb95cc899a87a635e96bb13a92ebeb05` |
| 17 | `theorem` | [HasFDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/hasfderivat-log--7e11cfec37957e6d388c82dd.md) | 141 | `result-track:7e11cfec37957e6d388c82dd3e9bafce1abd0a3264cdc9840c4cdad331b7a19f` |
| 18 | `theorem` | [HasStrictFDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/hasstrictfderivat-log--6a0558ac38114337bef998d3.md) | 146 | `result-track:6a0558ac38114337bef998d3f32c1952e8ff89ac2e84a1c8c3e3e86459e36211` |
| 19 | `theorem` | [DifferentiableWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/differentiablewithinat-log--81a2ae6bc664ccb3d2b37951.md) | 151 | `result-track:81a2ae6bc664ccb3d2b379517972c9e851ad38323fb5a514e1624c74ec390414` |
| 20 | `theorem` | [DifferentiableAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/differentiableat-log--5c3bb8ee5786a666bd5c48e8.md) | 157 | `result-track:5c3bb8ee5786a666bd5c48e866938e2177903469891efb26a8b38153c7064ca7` |
| 21 | `theorem` | [ContDiffAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/contdiffat-log--2ce3fe55e8aecc499b8bc2a6.md) | 162 | `result-track:2ce3fe55e8aecc499b8bc2a6aa0b123a3d48e2cd4ab40e40cf3b08f1d2dba851` |
| 22 | `theorem` | [ContDiffWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/contdiffwithinat-log--e98be95aceada9aba0ca6e42.md) | 167 | `result-track:e98be95aceada9aba0ca6e428803746cef5ee21c97ddf423adf55390f8d98472` |
| 23 | `theorem` | [ContDiffOn.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/contdiffon-log--8a5552723ee185ed95d42a3d.md) | 172 | `result-track:8a5552723ee185ed95d42a3dce2cce0d2d9f04d89991939f9947e59cd3034773` |
| 24 | `theorem` | [ContDiff.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/contdiff-log--8685f803111e22282478b055.md) | 176 | `result-track:8685f803111e22282478b0559347c73445b272b179030470fff7fbfa1507248a` |
| 25 | `theorem` | [DifferentiableOn.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/differentiableon-log--cffbe1397cf6eb2d99eb8dd2.md) | 181 | `result-track:cffbe1397cf6eb2d99eb8dd2de2df3c413ff133d13230aafddd917928c61e55d` |
| 26 | `theorem` | [Differentiable.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/differentiable-log--626a13017c9ada5d7867ada6.md) | 186 | `result-track:626a13017c9ada5d7867ada603f2ecb573860e634ff47476a7fce1237625deb6` |
| 27 | `theorem` | [fderivWithin.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/fderivwithin-log--0ae99e8186a68e4d54bc644b.md) | 190 | `result-track:0ae99e8186a68e4d54bc644ba5610604a68512ec1cf21baceb3b80ab229209ca` |
| 28 | `theorem` | [fderiv.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/fderiv-log--88bee4e8b328eaa9854bdb08.md) | 197 | `result-track:88bee4e8b328eaa9854bdb082d01338dcb2a10180ff80458fdf5b2a8c994e0bb` |
| 29 | `theorem` | [tendsto_mul_log_one_plus_div_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/tendsto-mul-log-one-plus-div-attop--b6e171895304119910c9e876.md) | 209 | `result-track:b6e171895304119910c9e876a5ae739b2ccb5431a1f286617a866ea34326eb9e` |
| 30 | `theorem` | [abs_log_sub_add_sum_range_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/abs-log-sub-add-sum-range-le--2415cc830879591c506e135c.md) | 227 | `result-track:2415cc830879591c506e135c37c1e639921a9d990b8604c65a90049db5ebba70` |
| 31 | `theorem` | [hasSum_pow_div_log_of_abs_lt_1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/hassum-pow-div-log-of-abs-lt-1--393c56167bb051ad5029b56d.md) | 269 | `result-track:393c56167bb051ad5029b56d97683514c46fc3eca8f0ed1e52c27bf64d76ebbf` |
| 32 | `theorem` | [hasSum_log_sub_log_of_abs_lt_1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/hassum-log-sub-log-of-abs-lt-1--5e7d072c8e85d9115043751d.md) | 295 | `result-track:5e7d072c8e85d9115043751dcdeed31f241fe169a765f27724987260779c7919` |
| 33 | `theorem` | [hasSum_log_one_add_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant063c6c8b5274e46ccedc021191f2cc74723f0caee0f597f8f04132f67073582c.lean/declarations/hassum-log-one-add-inv--798403a531b752beb2b20efa.md) | 317 | `result-track:798403a531b752beb2b20efaedcca004cee72d9ad070312e7ff0aadb58092287` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
