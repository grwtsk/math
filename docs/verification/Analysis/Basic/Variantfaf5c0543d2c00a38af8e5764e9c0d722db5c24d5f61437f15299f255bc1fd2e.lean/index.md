# Verification target: GRWTSK.Analysis.Basic.Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d5ebd7f10cb4bf8871581aac2c87f3380af9a58",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/index.md) · [Full source](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d5ebd7f10cb4bf8871581aac2c87f3380af9a58`.

Source path: `GRWTSK/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extDeriv](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderiv--7c0606b25b893c387e8b257d.md) | 73 | `declaration-track:7c0606b25b893c387e8b257d4d8e1900c1bc7bc161e2ee6bb128a005a0afa42b` |
| 2 | `def` | [extDerivWithin](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin--01c066b9adcc4938f5a82121.md) | 88 | `declaration-track:01c066b9adcc4938f5a82121516ff0e5d9ba2a3da67240753014ef3582675fd5` |
| 3 | `theorem` | [extDerivWithin_univ](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin-univ--b68d93c4e2ffc7da29cd21a4.md) | 93 | `result-track:b68d93c4e2ffc7da29cd21a4382e3da418f627768864ce29c8407bd0328a8044` |
| 4 | `theorem` | [extDerivWithin_add](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin-add--8f049026cec08d653600d765.md) | 98 | `result-track:8f049026cec08d653600d765b528d4e3ca144b06f832e9b09003955686cda1d5` |
| 5 | `theorem` | [extDerivWithin_fun_add](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin-fun-add--52d5e2c5fac1c11f2dfcc25e.md) | 103 | `result-track:52d5e2c5fac1c11f2dfcc25e365e6bb856d63ed4d989aea497eba63a9cb5a7a4` |
| 6 | `theorem` | [extDeriv_add](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderiv-add--c27ac05303ce58a60474d815.md) | 108 | `result-track:c27ac05303ce58a60474d815b7f18bcf55f8da331fe49bc976a6b79a34e33045` |
| 7 | `theorem` | [extDeriv_fun_add](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderiv-fun-add--a47725e02e1e7a207be8f9d4.md) | 112 | `result-track:a47725e02e1e7a207be8f9d4cb86b6f24fbaf0d32b3d6fcc90dc9d206c7daeb8` |
| 8 | `theorem` | [extDerivWithin_smul](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin-smul--e914ff223e9a7b93ea66a957.md) | 116 | `result-track:e914ff223e9a7b93ea66a9570fd577a4c7363d48c5801d808439e361778d2b4d` |
| 9 | `theorem` | [extDerivWithin_fun_smul](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin-fun-smul--614ec2a18f93294dec4c2af4.md) | 120 | `result-track:614ec2a18f93294dec4c2af48d60787d02ab16a5da0030162669518464a96710` |
| 10 | `theorem` | [extDeriv_smul](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderiv-smul--d45f2e83e6d0379c474f3d60.md) | 125 | `result-track:d45f2e83e6d0379c474f3d60ed3150ad6182d2422d54931e27b192de72d4eefe` |
| 11 | `theorem` | [extDeriv_fun_smul](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderiv-fun-smul--77e4a23cd8d51d1901f72864.md) | 129 | `result-track:77e4a23cd8d51d1901f72864c630749311c5d0827003717c4f18dec333667ea6` |
| 12 | `theorem` | [extDerivWithin_constOfIsEmpty](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin-constofisempty--4e5c5c7578c9144b9334a5bc.md) | 135 | `result-track:4e5c5c7578c9144b9334a5bc0aa82c580a3541966074fb97274eb3afd9a9bb14` |
| 13 | `theorem` | [extDeriv_constOfIsEmpty](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderiv-constofisempty--0c9b4d18279f3664a8ef63b5.md) | 144 | `result-track:0c9b4d18279f3664a8ef63b5b152e5c57c72bca618cc27e85cbedf260206ec89` |
| 14 | `theorem` | [Filter.EventuallyEq.extDerivWithin_eq](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/filter-eventuallyeq-extderivwithin-eq--3dbe15d42b9978af4cf580d7.md) | 149 | `result-track:3dbe15d42b9978af4cf580d7fc6588b3f635b072ca32b03eff326699ce840045` |
| 15 | `theorem` | [Filter.EventuallyEq.extDerivWithin_eq_of_mem](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/filter-eventuallyeq-extderivwithin-eq-of-mem--54cc14b5b1ce387081024d9f.md) | 153 | `result-track:54cc14b5b1ce387081024d9f9d08d46cb31d049d039f320285317d5841348b54` |
| 16 | `theorem` | [Filter.EventuallyEq.extDerivWithin_eq_of_insert](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/filter-eventuallyeq-extderivwithin-eq-of-insert--ab53b88444096fa9c31a695a.md) | 157 | `result-track:ab53b88444096fa9c31a695a500a69a6f0d4454a13b6b45a5a71ff4fd59e73be` |
| 17 | `theorem` | [Filter.EventuallyEq.extDerivWithin'](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/filter-eventuallyeq-extderivwithin--38c6d8bed31777c6fd3afaef.md) | 162 | `result-track:38c6d8bed31777c6fd3afaef225e68e163a1e25e27601d18595de83cbb22d761` |
| 18 | `theorem` | [Filter.EventuallyEq.extDerivWithin](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/filter-eventuallyeq-extderivwithin--b2f232e2a4eeaf426e8beb26.md) | 168 | `result-track:b2f232e2a4eeaf426e8beb2621e643ed4eee11c6e24390d5b5bb14c17ddeeef3` |
| 19 | `theorem` | [Filter.EventuallyEq.extDerivWithin_eq_nhds](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/filter-eventuallyeq-extderivwithin-eq-nhds--cf6bcf9414cbd3bc49277615.md) | 172 | `result-track:cf6bcf9414cbd3bc4927761596bb51fef8a25a40864346f254d7151b5edea172` |
| 20 | `theorem` | [extDerivWithin_congr](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin-congr--5ae51df380d149665d36f985.md) | 176 | `result-track:5ae51df380d149665d36f98517cdf9016128d3d568cbd1f1501155bc93eee5f7` |
| 21 | `theorem` | [extDerivWithin_congr'](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin-congr--b4eda69d72322b48a6a2f95e.md) | 180 | `result-track:b4eda69d72322b48a6a2f95ec8690731c34928071cfd5200924b73c947f2b1e9` |
| 22 | `theorem` | [Filter.EventuallyEq.extDeriv](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/filter-eventuallyeq-extderiv--8fe55da48a73dfdccd0c1567.md) | 184 | `result-track:8fe55da48a73dfdccd0c1567b0e2c74637142d177d6623c7052e56997dc6dd94` |
| 23 | `theorem` | [Filter.EventuallyEq.extDeriv_eq](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/filter-eventuallyeq-extderiv-eq--7a84df2c100c8ccc41b6c94d.md) | 189 | `result-track:7a84df2c100c8ccc41b6c94d84aceaeb80ab6798bf920d1d4d869540bcf539a8` |
| 24 | `theorem` | [extDerivWithin_apply](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin-apply--716f85c49f2f8521b180c547.md) | 192 | `result-track:716f85c49f2f8521b180c547f8c905369158e4eaabfdf6f85c8d0d28f14fb715` |
| 25 | `theorem` | [extDeriv_apply](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderiv-apply--5cd0020e76896ad7dd190135.md) | 199 | `result-track:5cd0020e76896ad7dd190135701681df3d595986b9f775f95d0188f2a32e6e55` |
| 26 | `theorem` | [extDerivWithin_extDerivWithin_apply](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin-extderivwithin-apply--824811e8c03f0827a66779ac.md) | 204 | `result-track:824811e8c03f0827a66779ac9258cb78ef49ab7228e4804014dba680d98eb553` |
| 27 | `theorem` | [extDerivWithin_extDerivWithin_eqOn](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin-extderivwithin-eqon--9c8d12dcf3ff5c3e6c6fe1a3.md) | 222 | `result-track:9c8d12dcf3ff5c3e6c6fe1a3e664164339a633222e97a00db207e93dabe36f65` |
| 28 | `theorem` | [extDeriv_extDeriv_apply](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderiv-extderiv-apply--efeb1156dfd9f14a88cc3cc0.md) | 229 | `result-track:efeb1156dfd9f14a88cc3cc0880d89435e1519b894ae0f4eda234a32f75b2293` |
| 29 | `theorem` | [extDeriv_extDeriv](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderiv-extderiv--3e8680d83943e001b49eca55.md) | 235 | `result-track:3e8680d83943e001b49eca55d406b30b352724cd0d4a06440bc051a7e4d85185` |
| 30 | `theorem` | [extDerivWithin_pullback](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderivwithin-pullback--9ba62fea016cb8f7372e73ec.md) | 240 | `result-track:9ba62fea016cb8f7372e73ec78c8e6434b8fa3eb36d8c11abac7c7581d09a245` |
| 31 | `theorem` | [extDeriv_pullback](../../../../mathematics/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean/declarations/extderiv-pullback--3fbaf4faa88d9361900ea9df.md) | 260 | `result-track:3fbaf4faa88d9361900ea9df742b555171bff388734c581ca6bbf6b9609ada42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
