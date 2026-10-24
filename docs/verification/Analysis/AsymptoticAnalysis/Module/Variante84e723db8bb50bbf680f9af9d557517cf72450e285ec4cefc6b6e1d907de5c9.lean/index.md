# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Module.Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "343ee70589c17a456ad74982b9106ae83dc12b15",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `343ee70589c17a456ad74982b9106ae83dc12b15`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.InfiniteSum.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasSum.const_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/hassum-const-smul--de5b53733a517307fa9a6afa.md) | 28 | `result-track:de5b53733a517307fa9a6afad8d045dd22ed79f1eeca012dbf3fe57dff0656fc` |
| 2 | `theorem` | [Summable.const_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/summable-const-smul--459c4be05f587562ee9862cf.md) | 31 | `result-track:459c4be05f587562ee9862cf838f783435f4af17cd2662a16dfd4b94961e6209` |
| 3 | `theorem` | [Summable.tsum_const_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/summable-tsum-const-smul--582453d08a26c79b4832324e.md) | 36 | `result-track:582453d08a26c79b4832324e946d51af77ba7f49dd54f847fbedc74df9b6c522` |
| 4 | `lemma` | [tsum_const_smul'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/tsum-const-smul--8476ab937d24194a980cfa27.md) | 44 | `result-track:8476ab937d24194a980cfa27517fd936f0e7738f9110056c96a81c7fa79f7568` |
| 5 | `lemma` | [tsum_const_smul''](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/tsum-const-smul--204b93356ac262fb64067b29.md) | 60 | `result-track:204b93356ac262fb64067b29d9e82c62903c42239e57795c3826d1c1cd62526e` |
| 6 | `theorem` | [HasSum.smul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/hassum-smul-const--0e05868485458ffbe6b86e5f.md) | 77 | `result-track:0e05868485458ffbe6b86e5f3b888f09acda9546e6e542a5803c91de8cf0fab4` |
| 7 | `theorem` | [Summable.smul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/summable-smul-const--ea28ebe0accbfff436aed9be.md) | 80 | `result-track:ea28ebe0accbfff436aed9bef8af557d7bcdc0ef2c47c8a0dfbfd65b415e9004` |
| 8 | `theorem` | [Summable.tsum_smul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/summable-tsum-smul-const--2050f8411da558a55e98fb47.md) | 83 | `result-track:2050f8411da558a55e98fb4716735d384bc5e0511a3ae7ce568c2fae73e74bd9` |
| 9 | `theorem` | [HasSum.smul_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/hassum-smul-eq--919f4febad43f80e191459dd.md) | 102 | `result-track:919f4febad43f80e191459dd4dae50b24a4b5453279b6c0bb9d729ca4f414ec6` |
| 10 | `theorem` | [HasSum.smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/hassum-smul--c25b24e49f631f8075245622.md) | 109 | `result-track:c25b24e49f631f8075245622b781620eb3a8c34293da6d9ee27df699e79c5390` |
| 11 | `theorem` | [tsum_smul_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/tsum-smul-tsum--7f5ff7340c83a95f205e6b71.md) | 116 | `result-track:7f5ff7340c83a95f205e6b71f102aaa65c030f2029ada814f1477f08bc9f039c` |
| 12 | `theorem` | [ContinuousLinearMap.hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/continuouslinearmap-hassum--262513e7453229688151981a.md) | 132 | `result-track:262513e7453229688151981a33c3a5fce799fde15197cfe409b6827587fa99da` |
| 13 | `theorem` | [ContinuousLinearMap.summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/continuouslinearmap-summable--1d2d20729be3e3bf444b73a4.md) | 138 | `result-track:1d2d20729be3e3bf444b73a46e69faa9fe28c0706a00bf86851b9cd4ae1d8d77` |
| 14 | `theorem` | [ContinuousLinearMap.map_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/continuouslinearmap-map-tsum--75959e61fff112213838bea3.md) | 144 | `result-track:75959e61fff112213838bea3839def762635f204af1a39114d5b15267774227f` |
| 15 | `theorem` | [ContinuousLinearEquiv.hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/continuouslinearequiv-hassum--d7ad56c79751b5bfd8df1888.md) | 149 | `result-track:d7ad56c79751b5bfd8df188838e4252ae886ccc936f229394846e7883a4cd5a0` |
| 16 | `theorem` | [ContinuousLinearEquiv.hasSum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/continuouslinearequiv-hassum--f308c564284df263b94b3d71.md) | 155 | `result-track:f308c564284df263b94b3d71ffbc2d258c206ee77736a38ff2a51defaa1e5cbc` |
| 17 | `theorem` | [ContinuousLinearEquiv.summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/continuouslinearequiv-summable--34acc82df23fd0e66f0f4237.md) | 159 | `result-track:34acc82df23fd0e66f0f423703b943552d244e499b40a8d255e4fc2be3f357d4` |
| 18 | `theorem` | [ContinuousLinearEquiv.tsum_eq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/continuouslinearequiv-tsum-eq-iff--b5bf323554ebc034ff74a5ea.md) | 163 | `result-track:b5bf323554ebc034ff74a5ea80dd10f369ed9578e717cfea07c22658634c2808` |
| 19 | `theorem` | [ContinuousLinearEquiv.map_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/continuouslinearequiv-map-tsum--8a0b8441c6edd5648f21b604.md) | 176 | `result-track:8a0b8441c6edd5648f21b604d966c55b2c7ad86547913b93f2564a41c582c765` |
| 20 | `def` | [MulAction.automorphize](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/mulaction-automorphize--dd8cf2f06c7906d85a317a41.md) | 195 | `declaration-track:dd8cf2f06c7906d85a317a414dbaaf562930fd3b5fc4c7266562e8848e559a5b` |
| 21 | `lemma` | [MulAction.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/mulaction-automorphize-smul-left--c485bafabe1befa2644b655e.md) | 212 | `result-track:c485bafabe1befa2644b655e64820f13261be0acde5fdcca42a269e5010306cd` |
| 22 | `lemma` | [AddAction.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/addaction-automorphize-smul-left--625e652a71a8f0215296eeb8.md) | 231 | `result-track:625e652a71a8f0215296eeb88c31bbf9e7358ea82df83f212106f94384f4354e` |
| 23 | `def` | [QuotientGroup.automorphize](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/quotientgroup-automorphize--f69f08535a464d83f3817c10.md) | 257 | `declaration-track:f69f08535a464d83f3817c1043124ddbe4cc78688fb240bd999dd321dd1f8bd4` |
| 24 | `lemma` | [QuotientGroup.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/quotientgroup-automorphize-smul-left--67ab53fa624fe0cac423483d.md) | 261 | `result-track:67ab53fa624fe0cac423483defc875690aaa6641ac9ea87d7e43c114a13c9458` |
| 25 | `lemma` | [QuotientAddGroup.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variante84e723db8bb50bbf680f9af9d557517cf72450e285ec4cefc6b6e1d907de5c9.lean/declarations/quotientaddgroup-automorphize-smul-left--d928e241a4a9f2c5c96665fb.md) | 274 | `result-track:d928e241a4a9f2c5c96665fb509701333df4f0df1d69bf5fe491d561768bcc7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
