# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Uniformly.Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfb2d408b233957fd20ceccf75b8ccb5285f62f5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfb2d408b233957fd20ceccf75b8ccb5285f62f5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Theta` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Asymptotics` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.FundThmCalculus` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 16; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.Analysis.Asymptotics.Asymptotics` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBigO_of_isBigOUniformly](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/declarations/isbigo-of-isbigouniformly--5567da3aac45c961ca0fc902.md) | 45 | `result-track:5567da3aac45c961ca0fc902c9d58b04310492f425f25b3e63e1705226faa95a` |
| 2 | `theorem` | [isBigO_rev_of_isBigOUniformly_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/declarations/isbigo-rev-of-isbigouniformly-rev--5abb99497888f875e56ff4db.md) | 54 | `result-track:5abb99497888f875e56ff4dbe7bcd3d9f1766f0003771b66437ebdf7cb02286b` |
| 3 | `theorem` | [isTheta_of_isThetaUniformly](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/declarations/istheta-of-isthetauniformly--04d7190c95abeee953e4790c.md) | 63 | `result-track:04d7190c95abeee953e4790c97326cc288fd77291a87eba471aae1fe386315b5` |
| 4 | `theorem` | [isLittleO_const_fst_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/declarations/islittleo-const-fst-atbot--27eb918d1696a5e9ba581f66.md) | 73 | `result-track:27eb918d1696a5e9ba581f66c8eec19b08ecdf9da07669a5b52578f1ec4a064a` |
| 5 | `theorem` | [isLittleO_const_snd_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/declarations/islittleo-const-snd-atbot--05be3b9f59d4e7dc698c160b.md) | 80 | `result-track:05be3b9f59d4e7dc698c160bf2dbb58bd556efe5bc5d5cef527de01b7863d704` |
| 6 | `theorem` | [isLittleO_const_fst_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/declarations/islittleo-const-fst-attop--904c8e2418f48029fea96e57.md) | 87 | `result-track:904c8e2418f48029fea96e57238821e8a1a11ffdfd12ece9d2d8874536194372` |
| 7 | `theorem` | [isLittleO_const_snd_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/declarations/islittleo-const-snd-attop--39e483cb97dbc978b5cf7efc.md) | 94 | `result-track:39e483cb97dbc978b5cf7efc069e48d32cc65d6aedfc6aaa7999120716ca1e21` |
| 8 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsBigOOfIsBigOUniformly.Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.ContinuousOn.const_isBigOWithUniformlyOn_isCompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-isbigoofisbigouniformly-variant7--44ce0d52a59452bbce81bfb3.md) | 113 | `result-track:44ce0d52a59452bbce81bfb30109c7ccec78eb9ed0ea424a165c9a478449467c` |
| 9 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsBigOOfIsBigOUniformly.Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.ContinuousOn.const_isBigOUniformlyOn_isCompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-isbigoofisbigouniformly-variant7--9841d8d6feb2054082c2fa9d.md) | 126 | `result-track:9841d8d6feb2054082c2fa9dc6ca2c9694a6a0f8e4697d62cc19d1699342e419` |
| 10 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsBigOOfIsBigOUniformly.Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.ContinuousOn.const_isBigOWithUniformlyOn_isCompact_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-isbigoofisbigouniformly-variant7--e60ca4c4b2547ebaa10fe519.md) | 139 | `result-track:e60ca4c4b2547ebaa10fe519860e2d77d4587baf63f8091bd0487e11c5d769d5` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsBigOOfIsBigOUniformly.Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.ContinuousOn.const_isBigOUniformlyOn_isCompact_rev](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-isbigoofisbigouniformly-variant7--5583669e86a29ee7487d8ea2.md) | 156 | `result-track:5583669e86a29ee7487d8ea24153d919eb2469e82c6d74885d5878c875d091ab` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.AsymptoticAnalysis.IsBigOOfIsBigOUniformly.Variant72cbe87eae6ad7beec7edf214f7ba37fff8d1f8a4c61fae3e7fbfabeb2373f0f.ContinuousOn.const_isThetaUniformlyOn_isCompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Uniformly/Variante9f37119c12dc16407dd68dd34c5d3504ba88de92b7e45ec34a7326edd3e0727.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-isbigoofisbigouniformly-variant7--c840f7c1b7fa1558f9a31c6b.md) | 163 | `result-track:c840f7c1b7fa1558f9a31c6bbb541cdb28c01811cc4ffe4dfb843284ccbf34b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
