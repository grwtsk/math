# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GoodHeights.Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dba3f39a75f2bde58693a7099808443cac7773ca",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dba3f39a75f2bde58693a7099808443cac7773ca`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.WeilEF.Landau` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.LocalCount` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.Tail` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_far_point](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/declarations/exists-far-point--d3b9399bb09a2d743d014b53.md) | 30 | `result-track:d3b9399bb09a2d743d014b53ae2e0796375750de365c4edbcafe79c235111d5b` |
| 2 | `lemma` | [abs_im_sub_le_norm_sub](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/declarations/abs-im-sub-le-norm-sub--678186e303446d8a91f32a1f.md) | 79 | `result-track:678186e303446d8a91f32a1f32fa8790a04a0076634b889359effaeabc6f115e` |
| 3 | `lemma` | [isNontrivialZero_of_mem_closedBall](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/declarations/isnontrivialzero-of-mem-closedball--c57204d3f54a7777ba851d64.md) | 83 | `result-track:c57204d3f54a7777ba851d64a2eb20f535a75626a485d88b13dfa454b7b72fd9` |
| 4 | `lemma` | [im_mem_of_mem_closedBall](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/declarations/im-mem-of-mem-closedball--55770ce744a639507bf44945.md) | 93 | `result-track:55770ce744a639507bf44945df51e2b5f908641a3fbccdc160eb92e87618b373` |
| 5 | `lemma` | [sum_mult_six_windows](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/declarations/sum-mult-six-windows--c56fc860f5505e99b4490c79.md) | 101 | `result-track:c56fc860f5505e99b4490c7965063e4b5541181d6342b08e5ace512c96979211` |
| 6 | `lemma` | [card_le_sum_mult](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/declarations/card-le-sum-mult--ec6e64a187807bc42bad8c6b.md) | 147 | `result-track:ec6e64a187807bc42bad8c6beded533668ae6f2a4a6952d0914f7e15a7241550` |
| 7 | `theorem` | [good_heights_at](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/declarations/good-heights-at--feac84e06530a112c60fc6a1.md) | 159 | `result-track:feac84e06530a112c60fc6a192aea676df69d48db6beee78ccc133b18b92f129` |
| 8 | `theorem` | [good_heights](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GoodHeights/Variant24a22156d99341d701adb4a220bccd1682f8477fed95c27cc6e859f52eca9c3d.lean/declarations/good-heights--4f1252c9a898800da24cc1d8.md) | 330 | `result-track:4f1252c9a898800da24cc1d81bfde408a083fa3bbb8e3a74ac2251eeb2698f01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
