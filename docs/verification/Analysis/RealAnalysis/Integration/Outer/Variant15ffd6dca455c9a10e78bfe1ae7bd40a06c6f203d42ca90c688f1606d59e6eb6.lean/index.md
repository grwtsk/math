# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Outer.Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21bde7bc9f1ca4cef171802c818159631272181f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21bde7bc9f1ca4cef171802c818159631272181f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LocalTheorem` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [innerIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/innerintegral--f9716dd3d63e091efd4d9b6f.md) | 35 | `declaration-track:f9716dd3d63e091efd4d9b6f898d02e4d7ec174f1681476be9e6e785ebfb06a9` |
| 2 | `def` | [outerIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/outerintegral--f3fb99dd9e6dbfb384bc0384.md) | 41 | `declaration-track:f3fb99dd9e6dbfb384bc038493756a4222f47967dfb0eaacd1fa409127a1346a` |
| 3 | `def` | [outerRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/outerremainder--ce16e57090de73e68e3c2e1b.md) | 45 | `declaration-track:ce16e57090de73e68e3c2e1b36299c8c645f6971769679fd82dc80263ac7f052` |
| 4 | `theorem` | [admissibleK_eq_innerInventory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/admissiblek-eq-innerinventory--26bcdad46989fd688e370c28.md) | 50 | `result-track:26bcdad46989fd688e370c2892d106295c22fd0d775f139de7a5075543a7b91c` |
| 5 | `theorem` | [sourceKernelTerm_eq_innerWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/sourcekernelterm-eq-innerweight--b3527b0c1634cd540c22e59c.md) | 87 | `result-track:b3527b0c1634cd540c22e59c8fbd39fcbdd1e7ce8e8060e5a1ec2ee6e3dedd36` |
| 6 | `theorem` | [sourceMobiusKernel_eq_inner_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/sourcemobiuskernel-eq-inner-sum--578c40cf3559638213052be6.md) | 99 | `result-track:578c40cf3559638213052be6dd6d2957c2e5ddbbbbdf54c2837b6736357e2ce8` |
| 7 | `theorem` | [divisor_le_sourceUpper](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/divisor-le-sourceupper--d0439053af191c572df775af.md) | 111 | `result-track:d0439053af191c572df775aff5a9d42946d84c241c2850b880a3ab1dc58da1cd` |
| 8 | `theorem` | [sourceMobiusKernel_eq_integral_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/sourcemobiuskernel-eq-integral-add-error--132282ee4f770a1c4ac5ea27.md) | 120 | `result-track:132282ee4f770a1c4ac5ea27fd82406dcee67574a015b92fd8bd611ba313c1e8` |
| 9 | `theorem` | [mertensResidual_eq_outer_integral_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/mertensresidual-eq-outer-integral-add-error--c7c274fa7745b69577fcc8f8.md) | 128 | `result-track:c7c274fa7745b69577fcc8f8818a4f8a7991e437b801c78375bbbac8eef1b434` |
| 10 | `theorem` | [outerRemainder_abs_le_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/outerremainder-abs-le-budget--a1ecd2857ad1ae4a6f2888c3.md) | 142 | `result-track:a1ecd2857ad1ae4a6f2888c31b07fb6ddea7dd6b7b5c3a26e3b5435cdfac90bd` |
| 11 | `theorem` | [outerRemainder_abs_le_twelve](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/outerremainder-abs-le-twelve--9ef75d6071699c5c78b7e410.md) | 167 | `result-track:9ef75d6071699c5c78b7e410c38d868f29d94c888babe83ef01594ce3ff399e5` |
| 12 | `theorem` | [inverse_sqrt_sum_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/inverse-sqrt-sum-le--08ff9245d7a352f0f3b8ef29.md) | 179 | `result-track:08ff9245d7a352f0f3b8ef29922609db5b80f4abbb3ae4765b05c86c7e0da8a0` |
| 13 | `theorem` | [outerRemainder_abs_le_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/outerremainder-abs-le-sqrt--d3d112ee630e512a150e7ed3.md) | 201 | `result-track:d3d112ee630e512a150e7ed3d5defd0df32f00a8f932f6d1ddf0b4b8e2cb1238` |
| 14 | `theorem` | [short_outerRemainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/short-outerremainder-abs-le--be8bfb539eba2a5db0208198.md) | 212 | `result-track:be8bfb539eba2a5db020819826de640f547d21cd1caf6a4541c470706048462e` |
| 15 | `theorem` | [full_outerRemainder_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/declarations/full-outerremainder-abs-le--3db37162338c0763c2c3a7ca.md) | 226 | `result-track:3db37162338c0763c2c3a7cae32d4c0bc632193205d222414a55cc597b801a1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
