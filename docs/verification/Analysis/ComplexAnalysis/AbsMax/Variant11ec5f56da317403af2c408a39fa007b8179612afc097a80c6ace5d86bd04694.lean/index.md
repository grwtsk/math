# Verification target: GRWTSK.Analysis.ComplexAnalysis.AbsMax.Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "226a648be5cbd8ece8414edb813a938cb983be1a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `226a648be5cbd8ece8414edb813a938cb983be1a`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean.json)

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
| 1 | `theorem` | [norm_max_aux₁](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/norm-max-aux--9033c36ee41d2855bec27178.md) | 118 | `result-track:9033c36ee41d2855bec271786311654577696701a0fcfb49bee414f0e213aede` |
| 2 | `theorem` | [norm_max_aux₂](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/norm-max-aux--f125cb6f863cca508c28328d.md) | 156 | `result-track:f125cb6f863cca508c28328d527bb00ba6216410d5aae8dc5ddca0d3fbf994c7` |
| 3 | `theorem` | [norm_max_aux₃](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/norm-max-aux--322b566b95743af8c373cafb.md) | 170 | `result-track:322b566b95743af8c373cafb911c0eab2e0299513f7cdb47116767dcd87386a4` |
| 4 | `theorem` | [norm_eqOn_closedBall_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/norm-eqon-closedball-of-ismaxon--724d7244bb14caad1eae53b6.md) | 191 | `result-track:724d7244bb14caad1eae53b6013c2f73dcd195ed3d2c325c3242a51679298673` |
| 5 | `theorem` | [norm_eq_norm_of_isMaxOn_of_ball_subset](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/norm-eq-norm-of-ismaxon-of-ball-subset--2835fbadeb2ffab43836864d.md) | 211 | `result-track:2835fbadeb2ffab43836864deeadd9d1cfbfb866e43c9910e08cbf006a9c7f95` |
| 6 | `theorem` | [norm_eventually_eq_of_isLocalMax](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/norm-eventually-eq-of-islocalmax--149b4158d003fe8e03c24025.md) | 219 | `result-track:149b4158d003fe8e03c240255b2c2370a153db68416fb34c75d70879a30b42b1` |
| 7 | `theorem` | [isOpen_setOfPred_mem_nhds_and_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/isopen-setofpred-mem-nhds-and-ismaxon-norm--4fcf085f3e5be964b82511c4.md) | 228 | `result-track:4fcf085f3e5be964b82511c487a2b6ad5f3f2d3366ba02e7ae53fb473df68346` |
| 8 | `theorem` | [norm_eqOn_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/norm-eqon-of-ispreconnected-of-ismaxon--5dc6930b024731108687316d.md) | 241 | `result-track:5dc6930b024731108687316d5aaafadc25e234a6a2f8391f3ef9eb316c966869` |
| 9 | `theorem` | [norm_eqOn_closure_of_isPreconnected_of_isMaxOn](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/norm-eqon-closure-of-ispreconnected-of-ismaxon--350645408c9aa7e8401ebf37.md) | 263 | `result-track:350645408c9aa7e8401ebf37d1716756b2d6a08f9441115369c21dbb63576ae2` |
| 10 | `theorem` | [eqOn_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/eqon-of-ispreconnected-of-ismaxon-norm--ccffb17bd732d02677d2d316.md) | 290 | `result-track:ccffb17bd732d02677d2d316c76a92eae82a4435195044df8efc2118ee414fc8` |
| 11 | `theorem` | [eqOn_closure_of_isPreconnected_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/eqon-closure-of-ispreconnected-of-ismaxon-norm--0bb12781ce0e567ebc9099c7.md) | 302 | `result-track:0bb12781ce0e567ebc9099c760e380b9b1c37d10ad3df3a9af31c8cf97345168` |
| 12 | `theorem` | [eq_of_isMaxOn_of_ball_subset](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/eq-of-ismaxon-of-ball-subset--2a9af421c5cd9f197a6d96d7.md) | 313 | `result-track:2a9af421c5cd9f197a6d96d75edb5821248b01a2aa19618e8967a956b6185dea` |
| 13 | `theorem` | [eqOn_closedBall_of_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/eqon-closedball-of-ismaxon-norm--9915140ab53c13c99b56072a.md) | 328 | `result-track:9915140ab53c13c99b56072ae1a938cc083bbb1fadcdb756542a59f93f79ff69` |
| 14 | `lemma` | [eq_const_of_exists_max](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/eq-const-of-exists-max--7d6058fce4326100cd6bedd4.md) | 335 | `result-track:7d6058fce4326100cd6bedd49577a91c451fad58d94bf455efc2dbda8467e1c0` |
| 15 | `lemma` | [eq_const_of_exists_le](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/eq-const-of-exists-le--34a8d2b55fc580819b115042.md) | 344 | `result-track:34a8d2b55fc580819b11504271b93e8f2385df4907f40e86810ba993cf5b8222` |
| 16 | `theorem` | [eventually_eq_of_isLocalMax_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/eventually-eq-of-islocalmax-norm--ee7fd697814f7877f3603e98.md) | 360 | `result-track:ee7fd697814f7877f3603e9826d36612fc2bde3a95f11bd1fb3dc02498a1241a` |
| 17 | `theorem` | [eventually_eq_or_eq_zero_of_isLocalMin_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/eventually-eq-or-eq-zero-of-islocalmin-norm--ff637ea28797af7d79c50a99.md) | 369 | `result-track:ff637ea28797af7d79c50a9983b73727ac1a1a6fae21443b829c5a63b7c7ba8e` |
| 18 | `theorem` | [exists_mem_frontier_isMaxOn_norm](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/exists-mem-frontier-ismaxon-norm--0093afbe2bbd191e4378708b.md) | 394 | `result-track:0093afbe2bbd191e4378708b79350691024efa14a80ea845127001a99555d479` |
| 19 | `theorem` | [norm_le_of_forall_mem_frontier_norm_le](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/norm-le-of-forall-mem-frontier-norm-le--2424890d921ea202290d999c.md) | 411 | `result-track:2424890d921ea202290d999cf97695f798caca9149e69121fd11cf196863dd3d` |
| 20 | `theorem` | [eqOn_closure_of_eqOn_frontier](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/eqon-closure-of-eqon-frontier--a0a1e5752cc144a0968bb0bf.md) | 434 | `result-track:a0a1e5752cc144a0968bb0bf4546284e7a762f0e5e3d5cc8b9f1b1348c2cf895` |
| 21 | `theorem` | [eqOn_of_eqOn_frontier](../../../../../mathematics/Analysis/ComplexAnalysis/AbsMax/Variant11ec5f56da317403af2c408a39fa007b8179612afc097a80c6ace5d86bd04694.lean/declarations/eqon-of-eqon-frontier--3ccb8a87beefaa5c76d868c4.md) | 443 | `result-track:3ccb8a87beefaa5c76d868c48600557d7cf4d471680cbff13eda74238e3c6a4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
