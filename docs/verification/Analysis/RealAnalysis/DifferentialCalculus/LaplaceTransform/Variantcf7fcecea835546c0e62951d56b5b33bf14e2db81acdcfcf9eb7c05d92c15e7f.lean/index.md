# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LaplaceTransform.Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8dac013a34d72b894631e897ae0d46d6b752a4f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8dac013a34d72b894631e897ae0d46d6b752a4f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/primitiveweillaplaceintegrand--e166c01935e351ac83f0c58c.md) | 33 | `declaration-track:e166c01935e351ac83f0c58c20a5e72aaf88dd24f4c71691d77fda7bc74bb89a` |
| 2 | `def` | [primitiveWeilLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/primitiveweillaplace--64a10f3be9d26049d2a76b05.md) | 39 | `declaration-track:64a10f3be9d26049d2a76b055b30a0393bc66caeb90cd4f0374a220c94361acd` |
| 3 | `theorem` | [continuous_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/continuous-primitiveweillaplaceintegrand--ae2e8a92567a262a4f847350.md) | 46 | `result-track:ae2e8a92567a262a4f84735036d4c3537f80f35a115c6eb9ad47374a0287d6c4` |
| 4 | `theorem` | [support_primitiveWeilLaplaceIntegrand_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/support-primitiveweillaplaceintegrand-subset--b254cc1491b0de5c9d0c0102.md) | 54 | `result-track:b254cc1491b0de5c9d0c01023915b7832bcabc49c91cfc31fbe94f8419283c37` |
| 5 | `theorem` | [hasCompactSupport_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/hascompactsupport-primitiveweillaplaceintegrand--09657d790abb4d736b17984a.md) | 65 | `result-track:09657d790abb4d736b17984a98aab58e6a5470602fb5a36f5abc048ca251582a` |
| 6 | `theorem` | [integrable_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/integrable-primitiveweillaplaceintegrand--94176de6f051e14c9ad8652c.md) | 72 | `result-track:94176de6f051e14c9ad8652c7dc3d8b596bb58cd2537bcee3718899c90c3b15f` |
| 7 | `def` | [primitiveWeilLaplaceDerivativeIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/primitiveweillaplacederivativeintegrand--71576b631d177e36b80e2293.md) | 81 | `declaration-track:71576b631d177e36b80e22939dd6cd02f6ba1315ee49721c0103004068025014` |
| 8 | `theorem` | [hasDerivAt_primitiveWeilLaplaceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/hasderivat-primitiveweillaplaceintegrand--50dfb9ff0f581fefada28966.md) | 85 | `result-track:50dfb9ff0f581fefada28966ef3ed6089e18a4f51ccf95031c4bd79f4dc41076` |
| 9 | `def` | [primitiveWeilLaplaceDerivativeBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/primitiveweillaplacederivativebound--76f95ba37d04fcad66a59e23.md) | 96 | `declaration-track:76f95ba37d04fcad66a59e230fc22d3658e28a7fddb4f0a838906034c5d4eeae` |
| 10 | `theorem` | [integrable_primitiveWeilLaplaceDerivativeBound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/integrable-primitiveweillaplacederivativebound--acffabfffdad81e6506c6940.md) | 101 | `result-track:acffabfffdad81e6506c69403600000001bfd39aa6937f35a53d7a72aeb568ee` |
| 11 | `theorem` | [primitiveWeilLaplaceDerivative_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/primitiveweillaplacederivative-le--1f7241022581871b8714e673.md) | 120 | `result-track:1f7241022581871b8714e673cd93a5d3c7158f0f86145375c9924cc65830b249` |
| 12 | `theorem` | [continuous_primitiveWeilLaplaceDerivativeIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/continuous-primitiveweillaplacederivativeintegrand--9f6fae82c3c77a3290779798.md) | 149 | `result-track:9f6fae82c3c77a3290779798290510a3ca33c3b9a74140575087cb9d2665fa64` |
| 13 | `theorem` | [hasDerivAt_primitiveWeilLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/hasderivat-primitiveweillaplace--124c8b2670e084885a78eeb0.md) | 159 | `result-track:124c8b2670e084885a78eeb0ac4ac6de588ec991701db3d65e861c39c6ec6e6d` |
| 14 | `theorem` | [differentiable_primitiveWeilLaplace](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/differentiable-primitiveweillaplace--1f2459a437ce3e2d608fd915.md) | 184 | `result-track:1f2459a437ce3e2d608fd9158284a527a415865ac88c2c35f951aca677f6cc34` |
| 15 | `theorem` | [primitiveWeilLaplace_star](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/primitiveweillaplace-star--ae22cfcb8186d71e8a9fcbdd.md) | 191 | `result-track:ae22cfcb8186d71e8a9fcbdd747b4e921a37ee2e4c697f97934089a8072ffd0f` |
| 16 | `theorem` | [primitiveWeilLaplaceIntegrand_autocorrelation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/primitiveweillaplaceintegrand-autocorrelation--b30195198053d3ca158c17c4.md) | 211 | `result-track:b30195198053d3ca158c17c4936f5cc6186ddcac86f3bd1d3dd3b16a92a011cf` |
| 17 | `theorem` | [primitiveWeilLaplace_autocorrelation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/primitiveweillaplace-autocorrelation--8aaed34dd61d4cbc7c38d6a9.md) | 243 | `result-track:8aaed34dd61d4cbc7c38d6a999a26f98780025281828197d8b5862eb259459a3` |
| 18 | `theorem` | [primitiveWeilLaplace_autocorrelation_on_criticalLine](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LaplaceTransform/Variantcf7fcecea835546c0e62951d56b5b33bf14e2db81acdcfcf9eb7c05d92c15e7f.lean/declarations/primitiveweillaplace-autocorrelation-on-criticalline--9d04d2132251d18bea689db9.md) | 261 | `result-track:9d04d2132251d18bea689db909b014af8738e57356262d0f997fc710da4af366` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
