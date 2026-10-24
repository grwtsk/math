# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ComplexDeriv.Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2fed74813003ef7ebca369f567737d4d89f3828",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2fed74813003ef7ebca369f567737d4d89f3828`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean/declarations/hasstrictderivat-tan--20b1043a91975434c3d1c438.md) | 32 | `result-track:20b1043a91975434c3d1c4380edee324a3905a10c3d7f60746ffae959dfd10d2` |
| 2 | `theorem` | [hasDerivAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean/declarations/hasderivat-tan--0c0167f12d5d09cd07b22f59.md) | 37 | `result-track:0c0167f12d5d09cd07b22f59cfb5bd63f45cd9beb372bb6420248a5dc8014efb` |
| 3 | `theorem` | [tendsto_norm_tan_of_cos_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean/declarations/tendsto-norm-tan-of-cos-eq-zero--9ad9dd9cf96c91d5d4a27a87.md) | 42 | `result-track:9ad9dd9cf96c91d5d4a27a873ec7d12a4f01cc9bea5de1105b63a47787f8a3b7` |
| 4 | `theorem` | [tendsto_norm_tan_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean/declarations/tendsto-norm-tan-attop--ecaebb51a9a277660571fee1.md) | 51 | `result-track:ecaebb51a9a277660571fee19e14af30803e31bbd8cd9ef851f55f59488bd91c` |
| 5 | `theorem` | [continuousAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean/declarations/continuousat-tan--4b4a946bc28eb441725ca168.md) | 60 | `result-track:4b4a946bc28eb441725ca1682cd52eeb9758908e2423d0ae293d9f77ba3742c9` |
| 6 | `theorem` | [differentiableAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean/declarations/differentiableat-tan--56bfc2648554803ce79afd9b.md) | 66 | `result-track:56bfc2648554803ce79afd9bcbb172d506f3e545336fc98644e91d97469c23da` |
| 7 | `theorem` | [deriv_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean/declarations/deriv-tan--487d58f897fde42c785ef8dd.md) | 70 | `result-track:487d58f897fde42c785ef8dd4b96a51504bc254eeeaf2489cb6be3b9f5d5d898` |
| 8 | `theorem` | [contDiffAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant8ebfd7bb059b6a7d176c108019a584cd3a3670b328edc13049af77d3d971eabd.lean/declarations/contdiffat-tan--a1b8567bcfb10436a99671cd.md) | 77 | `result-track:a1b8567bcfb10436a99671cdb89f36d1d530944241e5c4aafd245938762ac32a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
