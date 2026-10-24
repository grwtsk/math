# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasKan.Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55308b04fc6dbd79e9440db5b51372f0d055a206",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55308b04fc6dbd79e9440db5b51372f0d055a206`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Kan.IsKan` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/hasleftkanextension--a84ee5307ff56dd0e2180bc6.md) | 51 | `declaration-track:a84ee5307ff56dd0e2180bc6f8f7aa07562af1a0fb10fe87c81c8f3f62fe7399` |
| 2 | `theorem` | [LeftExtension.IsKan.hasLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/leftextension-iskan-hasleftkanextension--ab9ec36509d3c302c54d6462.md) | 54 | `result-track:ab9ec36509d3c302c54d6462db8116594ae0ab26202bf1119f31ee6309393890` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/instance--f8b6419489882522d83a2373.md) | 58 | `declaration-track:f8b6419489882522d83a23739b0b0f634563e71969dbb11c3eaf66acf9315df3` |
| 4 | `def` | [lanLeftExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanleftextension--a119cc83314a66201a2effbe.md) | 62 | `declaration-track:a119cc83314a66201a2effbef0a4d9c6221bd878f21f33ef8d1627f48f5f5257` |
| 5 | `def` | [lan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lan--4f296d670c01040808c0939a.md) | 66 | `declaration-track:4f296d670c01040808c0939af436022555871eb3597c4abb2f842579a79ed58a` |
| 6 | `theorem` | [lanLeftExtension_extension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanleftextension-extension--6adbab9541c559a723335361.md) | 83 | `result-track:6adbab9541c559a7233353616871e91fc0b6ea249a04ed0d83b365ad539b818e` |
| 7 | `def` | [lanUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanunit--47e3b1cf4b98cf55b78cdf2a.md) | 87 | `declaration-track:47e3b1cf4b98cf55b78cdf2a92ad6f3713ac46ea8edc209f7a303e2d91942802` |
| 8 | `theorem` | [lanLeftExtension_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanleftextension-unit--65f58b512c587357d03ca6cc.md) | 91 | `result-track:65f58b512c587357d03ca6cc2b6216a00faa6ae4ddf100ec1bbe7f9be68dac03` |
| 9 | `def` | [lanIsKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/laniskan--680c2714b15ecf045f6d81be.md) | 95 | `declaration-track:680c2714b15ecf045f6d81be148cb5a091335f718a2b5676976414035c60cad0` |
| 10 | `def` | [lanDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/landesc--0f777a3966f26e180a39e4ac.md) | 101 | `declaration-track:0f777a3966f26e180a39e4ac3f7f97aaf6cbcf61885d24651dbb74050e68756a` |
| 11 | `theorem` | [lanUnit_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanunit-desc--d50c2df5f066faa9b8fdf0c2.md) | 106 | `result-track:d50c2df5f066faa9b8fdf0c219adf077650d3af1b8b19ae6c964e40c7f732732` |
| 12 | `theorem` | [lanIsKan_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/laniskan-desc--56013a701bf15285348be1fc.md) | 111 | `result-track:56013a701bf15285348be1fcbb6b3208e5fc2f799e328b995bf25c6101d712b9` |
| 13 | `theorem` | [Lan.existsUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lan-existsunique--02b135d4e4eab6c472ad0837.md) | 115 | `result-track:02b135d4e4eab6c472ad0837ac11164c68e58202a355fd01a9f0dd34ae010bcf` |
| 14 | `class` | [Lan.CommuteWith](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lan-commutewith--9d73d0e58a27dcdda90dddf9.md) | 121 | `declaration-track:9d73d0e58a27dcdda90dddf939c702a7bb17244d02da6d972492589916a0cf82` |
| 15 | `theorem` | [of_isKan_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/of-iskan-whisker--3ceea230f758c214d69dfdb9.md) | 127 | `result-track:3ceea230f758c214d69dfdb950f188a821b9357062c8e6f27f07dc5cebad58d7` |
| 16 | `theorem` | [of_lan_comp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/of-lan-comp-iso--b1af6cdb438d1b68fa1d70de.md) | 132 | `result-track:b1af6cdb438d1b68fa1d70de376f12f3596e71c4023283d5e3eeecdfbdfe59fa` |
| 17 | `def` | [isKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/iskan--4e270956b8b1640d0952687e.md) | 143 | `declaration-track:4e270956b8b1640d0952687e8c71994d9b0c0f2efd00d7674334e8ad89e7d8d0` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/instance--79b328809d68f2e5fa46e8eb.md) | 145 | `declaration-track:79b328809d68f2e5fa46e8ebe84c12d06b853e61977b48e1b0329eceb1107093` |
| 19 | `def` | [isKanWhisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/iskanwhisker--d16192d2a197408630beba42.md) | 149 | `declaration-track:d16192d2a197408630beba422886801a865771ff66a64b9034b63324bcd7ab37` |
| 20 | `def` | [lanCompIsoWhisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lancompisowhisker--8ef456172cb6eecdec69099e.md) | 156 | `declaration-track:8ef456172cb6eecdec69099ec504b21acd5917154a6f85654686a1efddec8303` |
| 21 | `theorem` | [lanCompIsoWhisker_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lancompisowhisker-hom-right--9abc2d4ecab709f568b27b8e.md) | 160 | `result-track:9abc2d4ecab709f568b27b8ef62e611516073d58900c228e96c32a70124f4fd7` |
| 22 | `theorem` | [lanCompIsoWhisker_inv_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lancompisowhisker-inv-right--c78f6eb083c54e7aeb3da7a6.md) | 165 | `result-track:c78f6eb083c54e7aeb3da7a6690b3385d8aa18217146ca4d75ddb3e7b7e86d65` |
| 23 | `def` | [lanCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lancompiso--f1fb38011cdf7f92b741b765.md) | 171 | `declaration-track:f1fb38011cdf7f92b741b765b6836720e703a86e721840a07d5a764465755e08` |
| 24 | `class` | [HasAbsLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/hasabsleftkanextension--50c5894eff200a61f1088bbf.md) | 177 | `declaration-track:50c5894eff200a61f1088bbffa2169710d015299e0c0f07ec82635fd1df67137` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/instance--f542c8a0f9218c04a7c21b59.md) | 180 | `declaration-track:f542c8a0f9218c04a7c21b598124e9d0ec069f34e127e4aeb9b50c732d202741` |
| 26 | `theorem` | [LeftExtension.IsAbsKan.hasAbsLeftKanExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/leftextension-isabskan-hasabsleftkanextension--aadab2e7d1ce2050c299a62a.md) | 183 | `result-track:aadab2e7d1ce2050c299a62a92e3b6f749f11aee60e03efee70a772b667944b1` |
| 27 | `class` | [HasLeftKanLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/hasleftkanlift--29c802eca61c17017e40511e.md) | 197 | `declaration-track:29c802eca61c17017e40511e12e99b25faf44a613bf57bcd6a943363f8b2be73` |
| 28 | `theorem` | [LeftLift.IsKan.hasLeftKanLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/leftlift-iskan-hasleftkanlift--66f7ba30723e8b8f394b57d2.md) | 200 | `result-track:66f7ba30723e8b8f394b57d25a82cb9b1c75ec0578bb94882a1ac0af55ad1afd` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/instance--4f978bb58adaef101fb9aaff.md) | 203 | `declaration-track:4f978bb58adaef101fb9aaff681be8c8cb13c602513d29d93e5cd1cbaada633d` |
| 30 | `def` | [lanLiftLeftLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanliftleftlift--445b07e781c6f98cbdfe8493.md) | 206 | `declaration-track:445b07e781c6f98cbdfe84932964530f4c64a6d9b8700d7b4aaa58524b05699e` |
| 31 | `def` | [lanLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanlift--36699f970470d1b9361df9ea.md) | 210 | `declaration-track:36699f970470d1b9361df9ea14fb70fc36b8c8331dec93bf52331a0d0bfe66dd` |
| 32 | `theorem` | [lanLiftLeftLift_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanliftleftlift-lift--8e1525ed5fb43871c21c36c1.md) | 227 | `result-track:8e1525ed5fb43871c21c36c1691d24be9ca7d7704d162a2b5caf46c40d0ff546` |
| 33 | `def` | [lanLiftUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanliftunit--0b1d223aca3087801c740228.md) | 231 | `declaration-track:0b1d223aca3087801c74022829043c1f454f64e96d9aeb36075b98a9562bcd51` |
| 34 | `theorem` | [lanLiftLeftLift_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanliftleftlift-unit--eb00883ba2516f7b931f44bc.md) | 235 | `result-track:eb00883ba2516f7b931f44bc5feacab7fe76898b5a9707ef2687233f8ed34486` |
| 35 | `def` | [lanLiftIsKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanliftiskan--a7f30c49a4c3809cb5a52070.md) | 239 | `declaration-track:a7f30c49a4c3809cb5a52070534aeb1c991a4e5aa84d42a7b02bf00b6bca50b8` |
| 36 | `def` | [lanLiftDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanliftdesc--2f8831606682fff8e1718d05.md) | 245 | `declaration-track:2f8831606682fff8e1718d054e2422a6fb5bd96371c045a90d8f08ac56db6239` |
| 37 | `theorem` | [lanLiftUnit_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanliftunit-desc--9f06dfb207f121615463857c.md) | 250 | `result-track:9f06dfb207f121615463857c5cb8851c6f0c396ac4455407f2b482a90861b28f` |
| 38 | `theorem` | [lanLiftIsKan_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanliftiskan-desc--18c0a0c1fd7e7322f239d8da.md) | 255 | `result-track:18c0a0c1fd7e7322f239d8da8fb76d6886125105589e7a5d9070674c6d57b2b1` |
| 39 | `theorem` | [LanLift.existsUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanlift-existsunique--a8bc463bf9691612cc2c25e5.md) | 259 | `result-track:a8bc463bf9691612cc2c25e5b758eac7341a3575b46dbac3cc52bd947f4232a0` |
| 40 | `class` | [LanLift.CommuteWith](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanlift-commutewith--94a4b639db100e55133597e4.md) | 265 | `declaration-track:94a4b639db100e55133597e404fa48ac425d84aa715b6236901b6d53c6ee2ad6` |
| 41 | `theorem` | [of_isKan_whisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/of-iskan-whisker--35aa1e613004a8a03e619d27.md) | 271 | `result-track:35aa1e613004a8a03e619d271fd5c076214dd0b118942859f67852ffe68ea31f` |
| 42 | `theorem` | [of_lanLift_comp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/of-lanlift-comp-iso--1be0d3a44516948d25a57de7.md) | 276 | `result-track:1be0d3a44516948d25a57de7dc96cb6bcae7c426493a21333d3afb1aaec550d9` |
| 43 | `def` | [isKan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/iskan--dd5afdd16cd8ff32fe5d122a.md) | 287 | `declaration-track:dd5afdd16cd8ff32fe5d122a06eafb0a8536c8699b9cb0d7916c290f4836d957` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/instance--3587e5db7eb2b305a71d95d4.md) | 290 | `declaration-track:3587e5db7eb2b305a71d95d419f16a841d9cdbdd348acaf242f81fd42c15e452` |
| 45 | `def` | [isKanWhisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/iskanwhisker--699e6e0a9084c58bb121d55d.md) | 294 | `declaration-track:699e6e0a9084c58bb121d55d2579b21af5851bc297876863eefa7cb7347cecb8` |
| 46 | `def` | [lanLiftCompIsoWhisker](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanliftcompisowhisker--f91974233344d12fa1b4e825.md) | 301 | `declaration-track:f91974233344d12fa1b4e825c73447ba99432e51a7fac41669192a0ba24a3d8c` |
| 47 | `theorem` | [lanLiftCompIsoWhisker_hom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanliftcompisowhisker-hom-right--ece4af2f1db0174c7d2cfa00.md) | 306 | `result-track:ece4af2f1db0174c7d2cfa00314e4a2fa8ebc952cc9a08083b3429ebba807fba` |
| 48 | `theorem` | [lanLiftCompIsoWhisker_inv_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanliftcompisowhisker-inv-right--e77bff95f4fb7908eaa11000.md) | 311 | `result-track:e77bff95f4fb7908eaa110005c384c3683036a701c4c5fca1fbcc1bc06f0f94b` |
| 49 | `def` | [lanLiftCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/lanliftcompiso--b8fc7b4d00f332604dbe18fb.md) | 317 | `declaration-track:b8fc7b4d00f332604dbe18fbb327d1064c1ae3e4f2358b955c1561eec9df95c5` |
| 50 | `class` | [HasAbsLeftKanLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/hasabsleftkanlift--0d95343d898dc889933ce370.md) | 323 | `declaration-track:0d95343d898dc889933ce370317ed7e6193f5b1fab0af2ea7e408007e127a27c` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/instance--5aaf0a96f0debd9bbb792bca.md) | 326 | `declaration-track:5aaf0a96f0debd9bbb792bcac658ee6359bc9e2542915d4cd07e13d3e28f7f2a` |
| 52 | `theorem` | [LeftLift.IsAbsKan.hasAbsLeftKanLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variantcf2e10330f48a86557c98e2e2de971a902c3f4a2d41d947462842e5e90f8f0d2.lean/declarations/leftlift-isabskan-hasabsleftkanlift--e5bfc98401b5d25cf46e015d.md) | 329 | `result-track:e5bfc98401b5d25cf46e015dbadade78b0d6dd7aeae683093b5ac60d7ba55637` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
