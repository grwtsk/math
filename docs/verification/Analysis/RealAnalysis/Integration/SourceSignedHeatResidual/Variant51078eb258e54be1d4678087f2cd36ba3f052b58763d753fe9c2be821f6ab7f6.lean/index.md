# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceSignedHeatResidual.Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe94b55769564b538b433410a267c624a86ba560",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe94b55769564b538b433410a267c624a86ba560`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceSignedHeat` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [heatRemainderKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/heatremainderkernel--b0b4c104aba3e385486c42df.md) | 32 | `declaration-track:b0b4c104aba3e385486c42dfb59e9da8513a0957ece19f6b7c7e5e8b26559cca` |
| 2 | `def` | [heatResidualCorrection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/heatresidualcorrection--e3401f108af544181e5d8fc7.md) | 35 | `declaration-track:e3401f108af544181e5d8fc7f322de6b8c959cde58ced5d86c7c389cd15446a6` |
| 3 | `theorem` | [heatResidualCorrection_eq_mixed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/heatresidualcorrection-eq-mixed--9e02281f5eb793a263eebed2.md) | 39 | `result-track:9e02281f5eb793a263eebed2d08201a2503ae9ea42b170a0090512ba2f8a47d3` |
| 4 | `theorem` | [heatResidualCorrection_eq_paid_sub_terminal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/heatresidualcorrection-eq-paid-sub-terminal--19096eb22453e9d46ac70cec.md) | 49 | `result-track:19096eb22453e9d46ac70cecc02a7135c6c34b0047aedd4c41bc17bdcdca881b` |
| 5 | `theorem` | [heatRemainderKernel_unit_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/heatremainderkernel-unit-difference--fc38014c86e953f9188bcc38.md) | 56 | `result-track:fc38014c86e953f9188bcc38427c0066553501beb32dc02bd45128e5d40f2bd7` |
| 6 | `theorem` | [heatRemainderKernel_not_additive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/heatremainderkernel-not-additive--130cae357c8ace30909ca22f.md) | 65 | `result-track:130cae357c8ace30909ca22f8b3eada3cb5e876d8a3541653ad0b68de2521340` |
| 7 | `def` | [heatResidualCorrectionIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/heatresidualcorrectionintegral--68b02fc18a453a75b5ae9cab.md) | 74 | `declaration-track:68b02fc18a453a75b5ae9cabfd0cfaf14861a27d3f575e4a31309605afb93f02` |
| 8 | `theorem` | [bounded_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/bounded-integrable--e3fcd9e878573af43ac892f1.md) | 81 | `result-track:e3fcd9e878573af43ac892f11c09db6f26ba704fbc3923b7f31ecb1106e104b7` |
| 9 | `theorem` | [add_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/add-bound--c41be5fc00bf1f8cb1fc4b57.md) | 86 | `result-track:c41be5fc00bf1f8cb1fc4b57fef4c22e0906c86bac949431bdddc682aa2deed3` |
| 10 | `theorem` | [heatRemainderKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/heatremainderkernel-integrable--6ecbe6a4cce6883e0c26ffcc.md) | 93 | `result-track:6ecbe6a4cce6883e0c26ffcce45699033481f0b065c4ee03081a8ccd38478116` |
| 11 | `theorem` | [heatRemainderKernel_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/heatremainderkernel-integral-eq--52da7d69bf36fb6e0a424e6d.md) | 104 | `result-track:52da7d69bf36fb6e0a424e6daca4be8ffab1da080934bdc4e1f9d62fb10cd08b` |
| 12 | `theorem` | [heatResidualCorrection_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/heatresidualcorrection-integrable--c7f16a8625833b7a51b5c87a.md) | 119 | `result-track:c7f16a8625833b7a51b5c87ada8754b8442bc6dc2b6531b49144dbc18344b111` |
| 13 | `theorem` | [heatResidualCorrectionIntegral_eq_remainder_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/heatresidualcorrectionintegral-eq-remainder-sub--ae8870600b71c26d9e92ec83.md) | 128 | `result-track:ae8870600b71c26d9e92ec831833bff5bf3c1bed1f349eeec27774906f469403` |
| 14 | `theorem` | [integral_split_full_terminal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/integral-split-full-terminal--cd8ce86cb290151069d7ac6e.md) | 145 | `result-track:cd8ce86cb290151069d7ac6e0d51d073a5b756c5fec32c03f8e6b1a8b6bfc042` |
| 15 | `theorem` | [integral_split_residual_terminal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/integral-split-residual-terminal--7eeb2e95ef72a331a1c27fc1.md) | 157 | `result-track:7eeb2e95ef72a331a1c27fc15cf92bdf64f76b3170219374d409a874b6191900` |
| 16 | `theorem` | [heatResidualCorrectionIntegral_eq_paid_sub_terminals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/heatresidualcorrectionintegral-eq-paid-sub-terminals--f20973fea2618165b4ef5250.md) | 166 | `result-track:f20973fea2618165b4ef525085360e9ea7065cfedb45aa59d0cf4f569b0a5ef3` |
| 17 | `structure` | [ActualSourceResidualJoin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/actualsourceresidualjoin--7fba6a14d95a593989ce57f8.md) | 177 | `declaration-track:7fba6a14d95a593989ce57f829140a3be533649950254a06906aa0ec5405d6f9` |
| 18 | `def` | [sourceResidualSignedHeat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/sourceresidualsignedheat--4e772448d9e29bed923c9490.md) | 187 | `declaration-track:4e772448d9e29bed923c949039623d198e5ba5a6557f3ee95f4eaac5c6c7a37d` |
| 19 | `def` | [sourceResidualHeatRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/sourceresidualheatremainder--05155c7d299feea72669fbaa.md) | 191 | `declaration-track:05155c7d299feea72669fbaa78082c07c152592c121329eca7ed8b34ccfc7888` |
| 20 | `def` | [sourceResidualCorrection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/sourceresidualcorrection--8d6daf5389c7fb1ad4b102fe.md) | 195 | `declaration-track:8d6daf5389c7fb1ad4b102fe9297e54d214ea60b5ba05c56ab641b0abb8abc98` |
| 21 | `def` | [sourcePaidReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/sourcepaidreadout--235e7bddc5bb1228c3c1886d.md) | 199 | `declaration-track:235e7bddc5bb1228c3c1886d4672989104449b80f56f77ad98e85356ff3dd034` |
| 22 | `theorem` | [ActualSourceResidualJoin.paid_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/actualsourceresidualjoin-paid-eq--55024ea674182a73cb5e1163.md) | 203 | `result-track:55024ea674182a73cb5e1163bd88689b7fb8fa9f8ceb4bbb46fb77d7e3fdd63b` |
| 23 | `theorem` | [ActualSourceResidualJoin.paid_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/actualsourceresidualjoin-paid-measurable--8f31cdbb5fbae634f1f8838d.md) | 211 | `result-track:8f31cdbb5fbae634f1f8838d409a218eb2f2af3ca6bd5a195b6ddfc315b024b5` |
| 24 | `theorem` | [ActualSourceResidualJoin.paid_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/actualsourceresidualjoin-paid-bound--4b79cc6975506e90ed3b5509.md) | 218 | `result-track:4b79cc6975506e90ed3b5509d683e27ece621fd978aa8a6451d9e8ec1ade9549` |
| 25 | `theorem` | [compensatedSourceSum_eq_fullTerminal_residualRemainder_correction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/compensatedsourcesum-eq-fullterminal-residualremainder-correction--a2c380fabd8a93049ccd4b7f.md) | 231 | `result-track:a2c380fabd8a93049ccd4b7fac71e3e3ec7dd4d764bf87d03bf7650467249d69` |
| 26 | `theorem` | [compensatedSourceSum_eq_residualTerminal_remainder_paid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/compensatedsourcesum-eq-residualterminal-remainder-paid--7e0dc6b9455e23d78ed7ee3a.md) | 250 | `result-track:7e0dc6b9455e23d78ed7ee3a9becd8f540431f024528545a9f48b6f468ac6d99` |
| 27 | `theorem` | [sourceResidualSignedHeat_terminal_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/sourceresidualsignedheat-terminal-bound--6207cedc0eaef22854e28d09.md) | 268 | `result-track:6207cedc0eaef22854e28d09900d665535d51989c5afe7808e999c8bc2789b10` |
| 28 | `theorem` | [compensated_tail_of_residual_heat_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/compensated-tail-of-residual-heat-split--8b10d700ffdb56aa920b3720.md) | 275 | `result-track:8b10d700ffdb56aa920b3720516d7e5dff6be0ff37b1ac3979c396dae600c75e` |
| 29 | `theorem` | [compensated_tail_of_residual_terminal_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/compensated-tail-of-residual-terminal-bound--c128c04cf4f53d380713dd8f.md) | 289 | `result-track:c128c04cf4f53d380713dd8ffe299447974fc9237b0e951e975667e1669227a1` |
| 30 | `theorem` | [compensated_tail_of_residual_linear_paid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/compensated-tail-of-residual-linear-paid--1c4671fed39eb6959bddb95c.md) | 303 | `result-track:1c4671fed39eb6959bddb95c14e8dba0a8b91c4953f88a3fd3c7d631782a3b55` |
| 31 | `theorem` | [estimate_of_residual_linear_paid](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/estimate-of-residual-linear-paid--cfe3edc438e556e83b3b9560.md) | 315 | `result-track:cfe3edc438e556e83b3b95604dadc58a4e52a6efc3cd9a33987abb757c883c4c` |
| 32 | `theorem` | [estimate_of_residual_heat_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/estimate-of-residual-heat-split--3a6df8ad37cb42c0ab0d77f8.md) | 325 | `result-track:3a6df8ad37cb42c0ab0d77f8c3f1de90029b0d843a835846ef9966adb71f50b6` |
| 33 | `theorem` | [estimate_of_residual_terminal_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant51078eb258e54be1d4678087f2cd36ba3f052b58763d753fe9c2be821f6ab7f6.lean/declarations/estimate-of-residual-terminal-bound--55a05a7c8f6dda3f76482aa2.md) | 335 | `result-track:55a05a7c8f6dda3f76482aa2c54531c274b4af514a26f6d2f74a969ae7748c92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
