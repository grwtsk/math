# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.AbelLimit.Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de589450eee0c96e29c82e8d75a80714666b345b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de589450eee0c96e29c82e8d75a80714666b345b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stolzSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/declarations/stolzset--d887077bc92b2d2d5feee17f.md) | 56 | `declaration-track:d887077bc92b2d2d5feee17f94a0207cb38554e8516a79a705461b83b6ee10c7` |
| 2 | `def` | [stolzCone](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/declarations/stolzcone--ecc3bc82e3405856954e1a16.md) | 59 | `declaration-track:ecc3bc82e3405856954e1a1687c96c06f8636683d10336d377990bad20d5aaef` |
| 3 | `theorem` | [stolzSet_empty](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/declarations/stolzset-empty--89f05c1f03e19f97d11c9732.md) | 61 | `result-track:89f05c1f03e19f97d11c973254ec96ad45d262a68fe244ab5d5cf15a94584d61` |
| 4 | `theorem` | [nhdsWithin_lt_le_nhdsWithin_stolzSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/declarations/nhdswithin-lt-le-nhdswithin-stolzset--f28a055f427fd7993672518d.md) | 70 | `result-track:f28a055f427fd7993672518d6383e881538742459439aec24f8d59e7c4f75c26` |
| 5 | `lemma` | [stolzCone_subset_stolzSet_aux'](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/declarations/stolzcone-subset-stolzset-aux--f3ba8e272aab8ada2a9637a1.md) | 83 | `result-track:f3ba8e272aab8ada2a9637a18d5f1771eddbd0beaad67f7bd29f2d3547eb781f` |
| 6 | `lemma` | [stolzCone_subset_stolzSet_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/declarations/stolzcone-subset-stolzset-aux--6aa641675e153c052aaebaf5.md) | 107 | `result-track:6aa641675e153c052aaebaf5ae3b8f8ca132c77367ef78f4c453db2ad3711a54` |
| 7 | `lemma` | [nhdsWithin_stolzCone_le_nhdsWithin_stolzSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/declarations/nhdswithin-stolzcone-le-nhdswithin-stolzset--f51fc576ec58adb9a4ac7a23.md) | 121 | `result-track:f51fc576ec58adb9a4ac7a235353a30ac25c744be888b23ba5c4fa18f7ec9541` |
| 8 | `lemma` | [abel_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/declarations/abel-aux--de35704234546e4715701115.md) | 136 | `result-track:de35704234546e4715701115edd68e7b04399d4950b89d544bb05ba4789ae791` |
| 9 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_stolzSet](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/declarations/tendsto-tsum-powerseries-nhdswithin-stolzset--9f6f8a8b065df1931905e255.md) | 169 | `result-track:9f6f8a8b065df1931905e255c1227923c1d5f0e4f878e963cbe57a7bd53626f6` |
| 10 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_stolzCone](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/declarations/tendsto-tsum-powerseries-nhdswithin-stolzcone--ac9e22ea0b81d493b85c1ca0.md) | 249 | `result-track:ac9e22ea0b81d493b85c1ca0bd6f5182c74026da271f0599f8855e7afc35a8ed` |
| 11 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/declarations/tendsto-tsum-powerseries-nhdswithin-lt--4bff9e985c8d81794b9e3e45.md) | 255 | `result-track:4bff9e985c8d81794b9e3e45f00dd6dbb24049f8ec474defabb92fb1222a5200` |
| 12 | `theorem` | [tendsto_tsum_powerSeries_nhdsWithin_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/declarations/tendsto-tsum-powerseries-nhdswithin-lt--f6ef581646da925778b1ca65.md) | 271 | `result-track:f6ef581646da925778b1ca653d03dcadbfd54c13c3ab113896309edf381e0f75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
