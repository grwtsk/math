# Verification target: GRWTSK.Analysis.FunctionalAnalysis.WeakOperatorTopology.Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa061b040caa3f2c95f0f244508bf33c5f17fc07",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa061b040caa3f2c95f0f244508bf33c5f17fc07`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.HahnBanach.SeparatingDual` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContinuousLinearMapWOT](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/continuouslinearmapwot--d5464bb2f8151a3cff65eff4.md) | 55 | `declaration-track:d5464bb2f8151a3cff65eff45768084ecab19a55855319840cbf8953467b46da` |
| 2 | `instance` | [instAddCommGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/instaddcommgroup--2615e59702c840b666a27eef.md) | 95 | `declaration-track:2615e59702c840b666a27eef6022adbf1c0f1e187fe6352f37917dbcc81a8abc` |
| 3 | `instance` | [instModule](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/instmodule--42f8482e850bb85cdd8aad18.md) | 99 | `declaration-track:42f8482e850bb85cdd8aad18607aa12709294dfbb7a0f2290f4429b8d3108db7` |
| 4 | `def` | [_root_.ContinuousLinearMap.toWOT](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/root-continuouslinearmap-towot--a37a09460a158f45203cfeb5.md) | 107 | `declaration-track:a37a09460a158f45203cfeb5710032defcb2853f654a669a47e7742557186975` |
| 5 | `instance` | [instFunLike](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/instfunlike--cc664526e3a1e2c22eb6dc12.md) | 113 | `declaration-track:cc664526e3a1e2c22eb6dc12429f823e383da32dfdd90c47c267afe358b3b917` |
| 6 | `instance` | [instContinuousLinearMapClass](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/instcontinuouslinearmapclass--df271909ebfbc322e14c60b8.md) | 117 | `declaration-track:df271909ebfbc322e14c60b8d15f68c76e96487ff02a32ada87d581db3186a07` |
| 7 | `lemma` | [_root_.ContinuousLinearMap.toWOT_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/root-continuouslinearmap-towot-apply--17c6f933583996241eaa9370.md) | 122 | `result-track:17c6f933583996241eaa9370b2d659d2417f57ff97c37bbf72732ab093f99f0d` |
| 8 | `lemma` | [ext](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/ext--c8439d2571105eeb84532a2e.md) | 126 | `result-track:c8439d2571105eeb84532a2ebb0dd87c1f713c8a463ac34b452ac58e7f914b50` |
| 9 | `lemma` | [ext_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/ext-iff--68848063fe69004824c01643.md) | 129 | `result-track:68848063fe69004824c01643f05525e2e49139a5bda62e605a9b332a78832c1f` |
| 10 | `lemma` | [ext_dual](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/ext-dual--99ceba1d2d57f687378bbdfe.md) | 135 | `result-track:99ceba1d2d57f687378bbdfed1a780311b4a5f1d9f170853dca88e610577590c` |
| 11 | `lemma` | [zero_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/zero-apply--a42561091a10bf00c047a82e.md) | 140 | `result-track:a42561091a10bf00c047a82ede37bca4ef9cb25f419992df270512890dacfe5f` |
| 12 | `lemma` | [add_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/add-apply--12b930d9431b547079910eab.md) | 143 | `result-track:12b930d9431b547079910eab86a1418c41f4a37950e223cf72b9af1de57eac3e` |
| 13 | `lemma` | [sub_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/sub-apply--4995eb3651000fb7e5172b86.md) | 147 | `result-track:4995eb3651000fb7e5172b86e651966884896cf66c7051c45185213548e19bf7` |
| 14 | `lemma` | [neg_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/neg-apply--de9f2f2095428251fe32e566.md) | 151 | `result-track:de9f2f2095428251fe32e56677f631d92752c60b1fee2ee95abfd5ca5d901078` |
| 15 | `lemma` | [smul_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/smul-apply--7154eaba5ea2e1d10f0f229f.md) | 155 | `result-track:7154eaba5ea2e1d10f0f229f602b8a62e11423366e56940a1b3e171fdfbc787b` |
| 16 | `def` | [inducingFn](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/inducingfn--68e7e1bb38c846b587a0d849.md) | 174 | `declaration-track:68e7e1bb38c846b587a0d849895088634a9b60c3cf4764d022d3204b5af6a63a` |
| 17 | `lemma` | [inducingFn_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/inducingfn-apply--b27c435d962233e26cd7ecfc.md) | 180 | `result-track:b27c435d962233e26cd7ecfc44d17d6db66ed4f404894dcca1ee5c50fa10a3ef` |
| 18 | `instance` | [instTopologicalSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/insttopologicalspace--24c74622787ffc27d2f4d94b.md) | 186 | `declaration-track:24c74622787ffc27d2f4d94bb766032f706da14934dad2c0319d3e6c16538200` |
| 19 | `lemma` | [continuous_inducingFn](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/continuous-inducingfn--6f7ed15025a38a7cf51a1120.md) | 190 | `result-track:6f7ed15025a38a7cf51a1120df162c315687f260cbdfc5da5459a9bfe21a9ea6` |
| 20 | `lemma` | [continuous_dual_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/continuous-dual-apply--73ce8f9c0c3c071f133a2b45.md) | 193 | `result-track:73ce8f9c0c3c071f133a2b45cffac030c8b59e2e246dcc63021a94c55955657a` |
| 21 | `lemma` | [continuous_of_dual_apply_continuous](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/continuous-of-dual-apply-continuous--b11eb5764493eda4ac10f56e.md) | 197 | `result-track:b11eb5764493eda4ac10f56e436383091895fdc97cbce353ab409df6ef0d8cf8` |
| 22 | `lemma` | [isInducing_inducingFn](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/isinducing-inducingfn--9197bd5f789c90517c07ff64.md) | 201 | `result-track:9197bd5f789c90517c07ff64061510a1518fd90e4c7d0e887709cf48e1433445` |
| 23 | `lemma` | [isEmbedding_inducingFn](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/isembedding-inducingfn--bc957acd3080ca91bf760f03.md) | 203 | `result-track:bc957acd3080ca91bf760f032c8aae60a7adb901f5b17fb265888a35a7025135` |
| 24 | `lemma` | [tendsto_iff_forall_dual_apply_tendsto](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/tendsto-iff-forall-dual-apply-tendsto--8d18af7cc2da1035e79cb198.md) | 214 | `result-track:8d18af7cc2da1035e79cb198e475dcfb831207a2485cd087728e33d0c285e7be` |
| 25 | `lemma` | [le_nhds_iff_forall_dual_apply_le_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/le-nhds-iff-forall-dual-apply-le-nhds--018d34c885ea2e1251364cef.md) | 219 | `result-track:018d34c885ea2e1251364ceff2d9dcac389fa91a1eaf6bc37f896896df9923dc` |
| 26 | `instance` | [instT3Space](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/instt3space--41a94011c237d4fc445b6760.md) | 223 | `declaration-track:41a94011c237d4fc445b676018d4bf0845758bff6bd4daf69c5ac1ff05dfb317` |
| 27 | `instance` | [instContinuousAdd](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/instcontinuousadd--d8c5e2f1bbcb0945d4aaff7d.md) | 225 | `declaration-track:d8c5e2f1bbcb0945d4aaff7dde31f9b7b3aa86b0e5b822bf70c2383f4b394712` |
| 28 | `instance` | [instContinuousNeg](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/instcontinuousneg--237ad4c943438d37e00a4ef5.md) | 226 | `declaration-track:237ad4c943438d37e00a4ef545f799591d537914b1c8972228b1d41546e5fe64` |
| 29 | `instance` | [instContinuousSMul](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/instcontinuoussmul--6eeca7e435ef712acb6fd641.md) | 227 | `declaration-track:6eeca7e435ef712acb6fd641dffba1bbd4a34219bfadfe97b7afecaa036308dc` |
| 30 | `instance` | [instIsTopologicalAddGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/instistopologicaladdgroup--16c9eebd449719e25da15d30.md) | 231 | `declaration-track:16c9eebd449719e25da15d3048696bcef77e16e47bb4e06938ba65994d11c317` |
| 31 | `instance` | [instUniformSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/instuniformspace--54614ea66fc33a9d1da99021.md) | 235 | `declaration-track:54614ea66fc33a9d1da990210a8fd45755a6d814372a3821ddcc1b458fa5ccba` |
| 32 | `instance` | [instIsUniformAddGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/instisuniformaddgroup--2ba07cb708e7d04906a72d51.md) | 237 | `declaration-track:2ba07cb708e7d04906a72d51e7a182eebc49e321cb3b637709192bf085703b34` |
| 33 | `def` | [seminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/seminorm--efd7a1f53bb58c7808279cb9.md) | 251 | `declaration-track:efd7a1f53bb58c7808279cb9767d5fcbc36993b4620dfd1d43a85333bbdc53c7` |
| 34 | `def` | [seminormFamily](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/seminormfamily--689e4aa5a800451c572a326c.md) | 261 | `declaration-track:689e4aa5a800451c572a326ca2a3fc087ccecf3db653f4ca4d6724fea3df1ff0` |
| 35 | `lemma` | [withSeminorms](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/withseminorms--fd91ca7ca1cf7311dd8b84c9.md) | 264 | `result-track:fd91ca7ca1cf7311dd8b84c94984e2ba06c0fff3db92103108b53d8ab818975d` |
| 36 | `lemma` | [hasBasis_seminorms](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/hasbasis-seminorms--9dc8f75bd18d029c69a514b2.md) | 270 | `result-track:9dc8f75bd18d029c69a514b2fe03619523eca38f83a124cd09bfc919cb6c61c3` |
| 37 | `instance` | [instLocallyConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/instlocallyconvexspace--668d7c464e22ae4134e55072.md) | 273 | `declaration-track:668d7c464e22ae4134e550722f631bbda07d311d45068acfa3ed1b0fe2f93b43` |
| 38 | `lemma` | [ContinuousLinearMap.continuous_toWOT](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/continuouslinearmap-continuous-towot--635e0dca6d3ffdb05a0ad38e.md) | 287 | `result-track:635e0dca6d3ffdb05a0ad38e6d32c71268da95ff5543e8e52546b81e08019ca2` |
| 39 | `def` | [ContinuousLinearMap.toWOTCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/WeakOperatorTopology/Variant8bf70889e198ed245189e84d7ef75fc4c4665be97b2ea401b97e0fc105d1c1a8.lean/declarations/continuouslinearmap-towotclm--035ec25984fb5ebc5e0dd34e.md) | 293 | `declaration-track:035ec25984fb5ebc5e0dd34e455064d14ab0b9b59ea1fd6fd409a297d6ad9cf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
