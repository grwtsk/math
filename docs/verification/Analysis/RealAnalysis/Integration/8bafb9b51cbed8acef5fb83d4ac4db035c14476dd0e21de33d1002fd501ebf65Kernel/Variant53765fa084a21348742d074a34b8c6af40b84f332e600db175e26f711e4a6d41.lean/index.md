# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel.Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a3b89bffa30445e9d3b88650c85c0104bf00e99",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a3b89bffa30445e9d3b88650c85c0104bf00e99`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaTailPairKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/thetatailpairkernel--730035f443817ebb744eb1eb.md) | 16 | `declaration-track:730035f443817ebb744eb1eb36103ccba0feabd3a7b9df93625483e807788aaa` |
| 2 | `theorem` | [thetaTailPairKernel_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/thetatailpairkernel-nonnegative--7c4fc211d1de2e93c5ce46b4.md) | 20 | `result-track:7c4fc211d1de2e93c5ce46b49fb2db11b5dd6124bee50d37bb756037f33ac739` |
| 3 | `theorem` | [continuous_thetaTailPairKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/continuous-thetatailpairkernel--51fa594a307070b7091e259e.md) | 26 | `result-track:51fa594a307070b7091e259e5ca49bef0694d949fce391ab8f5e67b7f032d45b` |
| 4 | `def` | [thetaTailPairIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/thetatailpairintegrand--221b251c59fb9ba0f3772f07.md) | 32 | `declaration-track:221b251c59fb9ba0f3772f07baf1bb80674486169c54edf0246dc79ce2730381` |
| 5 | `theorem` | [measurable_thetaTailPairIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/measurable-thetatailpairintegrand--82f5185ced7ed8bff8c5afe8.md) | 36 | `result-track:82f5185ced7ed8bff8c5afe83d0866e261e9701cbfd383ac3d755d4f79d1270d` |
| 6 | `theorem` | [thetaTailPairIntegrand_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/thetatailpairintegrand-nonnegative--8c09a096f8cf9d306bb352b5.md) | 42 | `result-track:8c09a096f8cf9d306bb352b59770d335436f74e92d31199f3fd7c3c0735c9c7f` |
| 7 | `theorem` | [thetaTailPairIntegrand_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/thetatailpairintegrand-right--042a529327c7e23edb286630.md) | 49 | `result-track:042a529327c7e23edb286630c1012dd303184c1261d5643b4eb41d2ae08850e7` |
| 8 | `theorem` | [thetaTailPairIntegrand_right_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/thetatailpairintegrand-right-of-neg--30dc9ce7c12a06cf8dd5ef8e.md) | 55 | `result-track:30dc9ce7c12a06cf8dd5ef8eae25c0a1e9da6b552588a4d3bd886fb67f1622f5` |
| 9 | `theorem` | [thetaTailPairIntegrand_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/thetatailpairintegrand-left--13af6b1693929f7e06743588.md) | 60 | `result-track:13af6b1693929f7e0674358853d35ceda546d8700b61501055426e00667c7058` |
| 10 | `theorem` | [thetaTailPairIntegrand_right_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/thetatailpairintegrand-right-integrable--dbdacdd9d978f8bff3da460b.md) | 64 | `result-track:dbdacdd9d978f8bff3da460b883e624ddbf72e479f9616282a76ccba7e0440e4` |
| 11 | `theorem` | [thetaTailPairIntegrand_left_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/thetatailpairintegrand-left-integrable--553be7ec4709381731cd6d11.md) | 77 | `result-track:553be7ec4709381731cd6d11b5235b11e467ef14cf01591ec902720b21079c17` |
| 12 | `theorem` | [thetaTailPairIntegrand_integral_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/thetatailpairintegrand-integral-right--b3c7baa0c218356743d36d1c.md) | 83 | `result-track:b3c7baa0c218356743d36d1c3f981d729dc7aa045cb64f5b9099c8c679775560` |
| 13 | `theorem` | [thetaTailPairIntegrand_integral_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/thetatailpairintegrand-integral-left--70e316b1c79c02b9c18d0e78.md) | 99 | `result-track:70e316b1c79c02b9c18d0e788d482b63832f942e76d708121097e37796288420` |
| 14 | `theorem` | [tailPairing_succ_eq_iteratedIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant53765fa084a21348742d074a34b8c6af40b84f332e600db175e26f711e4a6d41.lean/declarations/tailpairing-succ-eq-iteratedintegral--9935864bc44f032f94ba73ce.md) | 115 | `result-track:9935864bc44f032f94ba73cec77fd6e027add486e23257f9c331f25ac5527cdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
