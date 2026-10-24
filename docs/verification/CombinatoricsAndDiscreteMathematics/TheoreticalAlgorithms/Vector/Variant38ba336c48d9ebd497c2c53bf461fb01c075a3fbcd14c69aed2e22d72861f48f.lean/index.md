# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "458d2106d7b04a9e4698b720e19388b8b146b7f8",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `458d2106d7b04a9e4698b720e19388b8b146b7f8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Mathport.Rename` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.List.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Data.List.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.List.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.List.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Vector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/vector--f194e46b911941b4196c7353.md) | 22 | `declaration-track:f194e46b911941b4196c7353f78995c569df046fb83000a12cf1945ce42cda20` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/instance--9048fc1c940af02c723cf43a.md) | 32 | `declaration-track:9048fc1c940af02c723cf43a627e49c90a7cd38087da1724b56c2a270a339025` |
| 3 | `def` | [nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/nil--68a90429362c485e3dbaeebd.md) | 37 | `declaration-track:68a90429362c485e3dbaeebdd64f04951ab61c100d83be0ef1cb6a86f5141cc5` |
| 4 | `def` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/cons--28799a44f78201b7e220f7fd.md) | 44 | `declaration-track:28799a44f78201b7e220f7fda7a9fcc995067caf3245c901318c400d922f45b1` |
| 5 | `def` | [length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/length--61b7bb2b5cfc58ebebe7df6c.md) | 51 | `declaration-track:61b7bb2b5cfc58ebebe7df6c8a37e054c508082c5df61e9856cc192f22211487` |
| 6 | `def` | [head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/head--024823f9bd0efd61790fce1c.md) | 58 | `declaration-track:024823f9bd0efd61790fce1c67fe779080b137c284e900ebd8b6d5e7ef30fe94` |
| 7 | `theorem` | [head_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/head-cons--2f02fbaebdb6d3ff79086ee6.md) | 64 | `result-track:2f02fbaebdb6d3ff79086ee61cdc0c7dff0c1838f671c5ddcbf977310b9fd28f` |
| 8 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/tail--16e1b89623f152e8a3aaaa09.md) | 69 | `declaration-track:16e1b89623f152e8a3aaaa0960f5c0259be1d30c957f106fd4e6ea6ac9df8a69` |
| 9 | `theorem` | [tail_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/tail-cons--6737c42a0d371c4efa972af5.md) | 75 | `result-track:6737c42a0d371c4efa972af5bbe72847fd2b79e17d4fcb8149638439abe146a2` |
| 10 | `theorem` | [cons_head_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/cons-head-tail--1c6eedf4e43dab5ea04cd559.md) | 81 | `result-track:1c6eedf4e43dab5ea04cd559d15b654d5799325ebfced15cf2402a8b267d9115` |
| 11 | `def` | [toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/tolist--bdc3b79c26926e3470faa4ba.md) | 87 | `declaration-track:bdc3b79c26926e3470faa4ba6a9284f84aba37a2a5fdfadb37bef3ee10dd3cd5` |
| 12 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/get--09cef2f48b3c197cdfc22d1f.md) | 93 | `declaration-track:09cef2f48b3c197cdfc22d1f41f74ae7f2ee586a3e92d60d99184c971bbdc78e` |
| 13 | `def` | [append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/append--abf12a060eba295a54a06ba4.md) | 98 | `declaration-track:abf12a060eba295a54a06ba4906a0fe1dbf55713859375f180db8f43095c71b2` |
| 14 | `def` | [elim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/elim--99cc93aaa2f851b300bcc5fb.md) | 120 | `declaration-track:99cc93aaa2f851b300bcc5fb79efb3e409d09e7485daf76b87927d355c17f6de` |
| 15 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/map--8694cf68a783edb3f6e8bc58.md) | 128 | `declaration-track:8694cf68a783edb3f6e8bc585791909fbe897fb6e0dd7400d60105d973d01a00` |
| 16 | `theorem` | [map_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/map-nil--c829640ef1dbe55fea303913.md) | 134 | `result-track:c829640ef1dbe55fea30391353c9e88a5c1bc69f4d2e790fff88ea8ba1fa865d` |
| 17 | `theorem` | [map_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/map-cons--617c9b6663a29cde3bd6592a.md) | 140 | `result-track:617c9b6663a29cde3bd6592a120286f4423625dd85a5716cbcd60a18156d014e` |
| 18 | `def` | [map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/map--d51f160c1a1bccbf837f4a3c.md) | 145 | `declaration-track:d51f160c1a1bccbf837f4a3c54e62e5cda90a7cabfa7a18a7f484109db6cb19c` |
| 19 | `def` | [replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/replicate--63be5970ff832657879cc4ae.md) | 150 | `declaration-track:63be5970ff832657879cc4aec9e4d87d7bc1665644d03ec48a1de2b16de03c1e` |
| 20 | `def` | [drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/drop--f9a33449fd8a8180eb0a44bc.md) | 155 | `declaration-track:f9a33449fd8a8180eb0a44bc0b7c191b4df6d4bb80467a7fe1ff1e6337646351` |
| 21 | `def` | [take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/take--404eecad5d37444eabcf18af.md) | 160 | `declaration-track:404eecad5d37444eabcf18afee455ac8a375bdcf23a3e7ad8b5adad3486b6529` |
| 22 | `def` | [removeNth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/removenth--d37b83d1cc0397317e5e18d8.md) | 165 | `declaration-track:d37b83d1cc0397317e5e18d8116a1e75bf00ac0787c3caceb6dfae5bfcc3d3f2` |
| 23 | `def` | [ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/offn--4af6415f8f12e4f96fc031b1.md) | 170 | `declaration-track:4af6415f8f12e4f96fc031b19eb93173e21b8e561478592624af2611179e1177` |
| 24 | `def` | [congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/congr--a89b181023c37f598b94a89f.md) | 175 | `declaration-track:a89b181023c37f598b94a89f4eda1897d3b4870e909035c9c80ace18b5b4e75f` |
| 25 | `def` | [mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/mapaccumr--21ec547b4f49adae4d061b08.md) | 189 | `declaration-track:21ec547b4f49adae4d061b0804105427519ca7b28264be5faa7cfd6fc350fb7e` |
| 26 | `def` | [mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/mapaccumr--8904b02e7e7833a095e98ae3.md) | 198 | `declaration-track:8904b02e7e7833a095e98ae3d5412007cf064f2b47c1b17e1938591a12517d90` |
| 27 | `def` | [shiftLeftFill](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/shiftleftfill--947fe5c8e3972aa519df8f8e.md) | 212 | `declaration-track:947fe5c8e3972aa519df8f8e0ddcb10d7cee9a0b940f9177b83a48e3cefe9095` |
| 28 | `def` | [shiftRightFill](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/shiftrightfill--72f019ff928e168c5f33f005.md) | 218 | `declaration-track:72f019ff928e168c5f33f0053ff57969617bc78354f2165f3be4086620af7187` |
| 29 | `theorem` | [eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/eq--4cdc7e13c637dca2cc0da07f.md) | 233 | `result-track:4cdc7e13c637dca2cc0da07fb28ef4a5d479a77bde91783f7111ef4e56d351ee` |
| 30 | `theorem` | [eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/eq-nil--6d904f573d80e02f73d3fe07.md) | 238 | `result-track:6d904f573d80e02f73d3fe070ddb357a275f708baaf356b5b73db1bfa3f495af` |
| 31 | `theorem` | [toList_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/tolist-mk--8521fd71c03dca614d21508f.md) | 245 | `result-track:8521fd71c03dca614d21508f907c1d989a42d2d6ba97e08472f9f460841f6cf3` |
| 32 | `theorem` | [toList_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/tolist-nil--2d0516b8e8cbb37cef54f8b1.md) | 251 | `result-track:2d0516b8e8cbb37cef54f8b149b652cdd4de5e0f3e9e8a642715dd9e079e32ba` |
| 33 | `theorem` | [toList_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/tolist-length--0d89c15538540ea1e449dea2.md) | 257 | `result-track:0d89c15538540ea1e449dea2d1827d1da02129b9bbb846d100a82189a5f41d68` |
| 34 | `theorem` | [toList_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/tolist-cons--25a79dbfd13d68ddb27b1ae9.md) | 264 | `result-track:25a79dbfd13d68ddb27b1ae93ed15570eea0c838ff083456048f8f138ab04a14` |
| 35 | `theorem` | [toList_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/tolist-append--2f8edcba50659bbb563c1da9.md) | 270 | `result-track:2f8edcba50659bbb563c1da984f820fa6b8d30da4a2bdbd7863ae2141249bbb1` |
| 36 | `theorem` | [toList_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/tolist-drop--4da5d4a466d176ed0aa4ce0c.md) | 279 | `result-track:4da5d4a466d176ed0aa4ce0caa646b672a7c7c720c9583c1f03b08e07b8bac3a` |
| 37 | `theorem` | [toList_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/tolist-take--f8d23b103829be6b206c95c5.md) | 286 | `result-track:f8d23b103829be6b206c95c5f9d255e66ea016329a3d57904141215f040c2fd1` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean/declarations/instance--61847e31d98e991d80ba62eb.md) | 291 | `declaration-track:61847e31d98e991d80ba62eb5efb62031a81c9d163195e5cc8004263eae71804` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
