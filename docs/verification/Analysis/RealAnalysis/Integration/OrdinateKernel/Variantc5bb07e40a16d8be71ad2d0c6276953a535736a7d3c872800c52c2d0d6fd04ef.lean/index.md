# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.OrdinateKernel.Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f58a79a8deb9491cb039465c636e51451c8f84e6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f58a79a8deb9491cb039465c636e51451c8f84e6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ordinateKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/declarations/ordinatekernel--e0f5cbfc78da87ca3295bc00.md) | 19 | `declaration-track:e0f5cbfc78da87ca3295bc000c27713b50d1d32a5ea486339f8990150b205b63` |
| 2 | `theorem` | [ordinate_kernel_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/declarations/ordinate-kernel-nonnegative--4b7243b9588a44c13caf781b.md) | 21 | `result-track:4b7243b9588a44c13caf781b499ff0c48ce39627c0dff82c39575b2776a03075` |
| 3 | `theorem` | [negative_seven_real_power](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/declarations/negative-seven-real-power--eba83e47c2cfea0e3fb4a872.md) | 26 | `result-track:eba83e47c2cfea0e3fb4a872459f7392ea51b9a7a0513af012a3d0611f33010b` |
| 4 | `theorem` | [ordinate_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/declarations/ordinate-kernel-integrable--a63f3e15567c648515691769.md) | 33 | `result-track:a63f3e15567c648515691769085ff154331d50bf73758907fc91cc2fda0fbf78` |
| 5 | `theorem` | [ordinate_kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/declarations/ordinate-kernel-integral--57cb1110a8c617028a4a5d39.md) | 44 | `result-track:57cb1110a8c617028a4a5d3966ce67b9a92eaa06c40d9992a67f05717b4e9e24` |
| 6 | `theorem` | [ordinate_kernel_integral_max](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/declarations/ordinate-kernel-integral-max--b39a8ed768dc968139d01e6c.md) | 61 | `result-track:b39a8ed768dc968139d01e6ca1ebb7a088da937bfe208e3e1e4974fe86eac04e` |
| 7 | `theorem` | [closed_ordinate_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/declarations/closed-ordinate-kernel-integrable--ceecc4276e9e3783abac972c.md) | 67 | `result-track:ceecc4276e9e3783abac972cc0da8fe35b051f21aeceff825c4ebdc12a5552d2` |
| 8 | `theorem` | [closed_ordinate_kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/declarations/closed-ordinate-kernel-integral--025df97b07992b1b4b798941.md) | 73 | `result-track:025df97b07992b1b4b798941cfe77fa307a5a3f3f8fa3123a54c0b5ce2bdbfb9` |
| 9 | `theorem` | [strict_ordinate_weight_eq_closed_integral_sub_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/declarations/strict-ordinate-weight-eq-closed-integral-sub-endpoint--45043097196cfc687aba06d6.md) | 101 | `result-track:45043097196cfc687aba06d6445433358cbf252ea67c9def447989900c8f0f7c` |
| 10 | `theorem` | [touching_ordinate_endpoint_cancels](../../../../../../mathematics/Analysis/RealAnalysis/Integration/OrdinateKernel/Variantc5bb07e40a16d8be71ad2d0c6276953a535736a7d3c872800c52c2d0d6fd04ef.lean/declarations/touching-ordinate-endpoint-cancels--9806f1d1c11786f4d4b1f277.md) | 113 | `result-track:9806f1d1c11786f4d4b1f27706f1352453d0ac6b1fe2d38e8074d35cf584e82f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
