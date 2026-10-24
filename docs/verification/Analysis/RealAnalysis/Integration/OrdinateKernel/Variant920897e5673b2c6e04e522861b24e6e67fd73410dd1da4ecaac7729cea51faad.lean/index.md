# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.OrdinateKernel.Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2fc37a9dd523e0df3dc371663f898c0ab4bb7a0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2fc37a9dd523e0df3dc371663f898c0ab4bb7a0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ordinateKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/declarations/ordinatekernel--6e9d99d201e5c1d07881c545.md) | 27 | `declaration-track:6e9d99d201e5c1d07881c5453de2942f2513b3c340ba1e437b9df9bd38528baa` |
| 2 | `theorem` | [ordinate_kernel_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/declarations/ordinate-kernel-nonnegative--9a91e97c90e03696cc722474.md) | 29 | `result-track:9a91e97c90e03696cc72247417af2560509db20d67005dc6bcb18240d91cb7bb` |
| 3 | `theorem` | [negative_seven_real_power](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/declarations/negative-seven-real-power--8f8f45ba234b8e37a7e8769a.md) | 34 | `result-track:8f8f45ba234b8e37a7e8769a164acf3ac3d70b17f4106196b0f198e12ad7ef40` |
| 4 | `theorem` | [ordinate_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/declarations/ordinate-kernel-integrable--b1d9e2a904ac2d70f7b8680f.md) | 41 | `result-track:b1d9e2a904ac2d70f7b8680fefe1b1b22d3ea6b433f77d977aa664bc025306e5` |
| 5 | `theorem` | [ordinate_kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/declarations/ordinate-kernel-integral--b7cb4ac91555f3b43ffaadbf.md) | 52 | `result-track:b7cb4ac91555f3b43ffaadbf534a1dc3ff39f68d337b5611e0778d6fab7b779a` |
| 6 | `theorem` | [ordinate_kernel_integral_max](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/declarations/ordinate-kernel-integral-max--d8bca6190e4d4522a94a0c32.md) | 69 | `result-track:d8bca6190e4d4522a94a0c32eb1a67a5300f8b81800272817b89b781c0df7043` |
| 7 | `theorem` | [closed_ordinate_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/declarations/closed-ordinate-kernel-integrable--5c273abde0fa3e87e8acdc30.md) | 75 | `result-track:5c273abde0fa3e87e8acdc301043ddd917b5bf14cf82b8f27be5c915f87b09d8` |
| 8 | `theorem` | [closed_ordinate_kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/declarations/closed-ordinate-kernel-integral--5c861b45792137849f5f51a1.md) | 81 | `result-track:5c861b45792137849f5f51a143a8604c57fe2cd4e9d4fdeec319b12892acf2eb` |
| 9 | `theorem` | [strict_ordinate_weight_eq_closed_integral_sub_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/declarations/strict-ordinate-weight-eq-closed-integral-sub-endpoint--e0c0d13e32a4b73d231864ad.md) | 109 | `result-track:e0c0d13e32a4b73d231864ad89e425fd22a7538cf30272e1bd41ea0f9f7f718f` |
| 10 | `theorem` | [touching_ordinate_endpoint_cancels](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variant920897e5673b2c6e04e522861b24e6e67fd73410dd1da4ecaac7729cea51faad.lean/declarations/touching-ordinate-endpoint-cancels--e2a482ebb82c80e18469c75d.md) | 121 | `result-track:e2a482ebb82c80e18469c75d141f719aebf6837dc32b78bc5c7ad24b50ed4b7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
