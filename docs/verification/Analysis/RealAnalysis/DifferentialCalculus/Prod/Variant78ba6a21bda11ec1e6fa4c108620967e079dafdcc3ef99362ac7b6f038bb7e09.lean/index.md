# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Prod.Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c5b6a1aab2e94e29aa8368360c001c16c0c77f9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c5b6a1aab2e94e29aa8368360c001c16c0c77f9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasDerivAtFilter.prodMk](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivatfilter-prodmk--313789e6246cf7d3f97617d6.md) | 39 | `result-track:313789e6246cf7d3f97617d67a01a4972102e15de0031c2821d868faa4161f46` |
| 2 | `theorem` | [HasDerivWithinAt.prodMk](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivwithinat-prodmk--18f8afee365a84019926ca93.md) | 46 | `result-track:18f8afee365a84019926ca93f4c5abaf0309d86da152661c77bd0f712d2b0e0e` |
| 3 | `theorem` | [HasDerivAt.prodMk](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivat-prodmk--3aeeb5dd2ccced97ca93f92f.md) | 53 | `result-track:3aeeb5dd2ccced97ca93f92f7f0a70a03951d33f105241bf2a33346bba45fa92` |
| 4 | `theorem` | [HasStrictDerivAt.prodMk](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasstrictderivat-prodmk--c51675423a532f6ddcfed4fd.md) | 60 | `result-track:c51675423a532f6ddcfed4fdee9a1ffc3ce455e2b1e26f7be4906b92f945f146` |
| 5 | `theorem` | [hasStrictDerivAt_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasstrictderivat-pi--a800c32eb26808a594b95935.md) | 77 | `result-track:a800c32eb26808a594b95935ed5ac4a34e0ca7fcc640c32e87fd531cd6f94f9c` |
| 6 | `theorem` | [hasDerivAtFilter_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivatfilter-pi--ae95b69c59730ddd5cb55f31.md) | 82 | `result-track:ae95b69c59730ddd5cb55f3193681ae9e454d0a34f8fd6bacbcfdc44c8ecf067` |
| 7 | `theorem` | [hasDerivAt_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivat-pi--2ae04110d86b09c8d001599c.md) | 86 | `result-track:2ae04110d86b09c8d001599cb4025442760669eff2dd1d8d1ee6694b3cced70a` |
| 8 | `theorem` | [hasDerivWithinAt_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivwithinat-pi--0b004e4b9f2e730cc9b741ff.md) | 89 | `result-track:0b004e4b9f2e730cc9b741ff8af2275e2dac6dbfd60b18203260e1e78894543d` |
| 9 | `theorem` | [derivWithin_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/derivwithin-pi--9e54cd4bff1a1422088f0cae.md) | 93 | `result-track:9e54cd4bff1a1422088f0caedb80251a9509cbd48ad482bcd04e8c76dd6f6374` |
| 10 | `theorem` | [deriv_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/deriv-pi--64e28d73364b03f3824d47fb.md) | 99 | `result-track:64e28d73364b03f3824d47fb8064b9d25f84112dff01a62fe07932438362946e` |
| 11 | `theorem` | [hasStrictDerivAt_finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasstrictderivat-fincons--a8a75ccd365f729341d9d203.md) | 118 | `result-track:a8a75ccd365f729341d9d203e2bff9d5c5819b6389fdc1d9d7655b0b00508b66` |
| 12 | `theorem` | [hasStrictDerivAt_finCons'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasstrictderivat-fincons--0c49af22659554bec7b5e328.md) | 125 | `result-track:0c49af22659554bec7b5e3285b12ee44efb503a0224cbac94060c53ba97bfa13` |
| 13 | `theorem` | [HasStrictDerivAt.finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasstrictderivat-fincons--f9461dbd23ded6db485a3342.md) | 130 | `result-track:f9461dbd23ded6db485a3342ba254fd8612a0ff5506823a2f856131af38a0f17` |
| 14 | `theorem` | [hasDerivAtFilter_finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivatfilter-fincons--a3d880d5c8f388fe3ad2441e.md) | 135 | `result-track:a3d880d5c8f388fe3ad2441eb3d9dd15a1be347c4487a206bbb814d0357e94ae` |
| 15 | `theorem` | [hasDerivAtFilter_finCons'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivatfilter-fincons--3057bfb46ab65f6069c4ad5a.md) | 142 | `result-track:3057bfb46ab65f6069c4ad5a7741b028a3d8e4e6e07316f0954bd068b01dc911` |
| 16 | `theorem` | [HasDerivAtFilter.finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivatfilter-fincons--5919b0fcdb2cb22eadb88495.md) | 147 | `result-track:5919b0fcdb2cb22eadb88495cf6e62b111e1711d50b0f7dd44c0133760e26121` |
| 17 | `theorem` | [hasDerivAt_finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivat-fincons--5e5be6ccb91033c5b75f916b.md) | 152 | `result-track:5e5be6ccb91033c5b75f916b87780e5f9a584d022bef9349ba6eedd0cc2f1e38` |
| 18 | `theorem` | [hasDerivAt_finCons'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivat-fincons--827e8f879ea31e590a7e11b3.md) | 159 | `result-track:827e8f879ea31e590a7e11b35cf1e3b943dad522d42168a9b0fec6786d8f9d15` |
| 19 | `theorem` | [HasDerivAt.finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivat-fincons--0a811816454231f2ea134bfa.md) | 164 | `result-track:0a811816454231f2ea134bfab8476fa8feaf9db73ff7295e827a49891e65a03c` |
| 20 | `theorem` | [hasDerivWithinAt_finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivwithinat-fincons--5237b73b1c2c83de60ca01b4.md) | 169 | `result-track:5237b73b1c2c83de60ca01b48e933fa96785eb68fd4460cdcf632eb220ad0f86` |
| 21 | `theorem` | [hasDerivWithinAt_finCons'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivwithinat-fincons--17882193005a7cbe3e33a782.md) | 176 | `result-track:17882193005a7cbe3e33a782c13ae3e68e9389d52824ed7cec430ce05ea93bef` |
| 22 | `theorem` | [HasDerivWithinAt.finCons](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Prod/Variant78ba6a21bda11ec1e6fa4c108620967e079dafdcc3ef99362ac7b6f038bb7e09.lean/declarations/hasderivwithinat-fincons--e01f3c03d92377625529b269.md) | 181 | `result-track:e01f3c03d92377625529b2692e546a3833b987d2cd9011dd3bc78d938eb4c8a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
