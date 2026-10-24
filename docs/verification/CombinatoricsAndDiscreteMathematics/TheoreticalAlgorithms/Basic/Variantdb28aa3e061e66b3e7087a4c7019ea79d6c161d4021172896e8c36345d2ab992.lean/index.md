# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dbe2dd1f754426d00d29a7ac7434ba204a5d404",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dbe2dd1f754426d00d29a7ac7434ba204a5d404`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.String.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Lex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Char` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [endPos_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/endpos-empty--c07ec8028db681fcc6ab08ba.md) | 19 | `result-track:c07ec8028db681fcc6ab08ba4871d8cb41e6001505065bec7f2f48224df00814` |
| 2 | `def` | [ltb](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/ltb--7e60308be82e9b7b1bbec2d7.md) | 22 | `declaration-track:7e60308be82e9b7b1bbec2d7469a428b8265c46c4a4ccadf3f0426b4f9fea30e` |
| 3 | `instance` | [LT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/lt--f47bc67cd651ab8024f4a05b.md) | 32 | `declaration-track:f47bc67cd651ab8024f4a05bfd605e4dcf72d084f045647d3d9d14ba6037a466` |
| 4 | `instance` | [decidableLT'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/decidablelt--1ed57cf5c01438f3c6bf6a49.md) | 36 | `declaration-track:1ed57cf5c01438f3c6bf6a496a1afb8e2cb2069b1a5ab52701fe05c497194416` |
| 5 | `def` | [ltb.inductionOn.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/ltb-inductionon--2e4c66abceaec46f5aead599.md) | 41 | `declaration-track:2e4c66abceaec46f5aead599f7eb6545bfc36559a15fc056cc80e9dd37f394ca` |
| 6 | `theorem` | [ltb_cons_addChar](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/ltb-cons-addchar--ad93cec0f569db5cc24aa0b2.md) | 59 | `result-track:ad93cec0f569db5cc24aa0b27eef7f3030469544d921742d639f16dbb74a4337` |
| 7 | `theorem` | [lt_iff_toList_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/lt-iff-tolist-lt--f9b731c9d9ab3e16ea985975.md) | 76 | `result-track:f9b731c9d9ab3e16ea985975282f841920855ccdd827a5ea1198bc94527685b5` |
| 8 | `instance` | [LE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/le--bd11fe0f5eeeb9d89d4943e5.md) | 102 | `declaration-track:bd11fe0f5eeeb9d89d4943e5e484ffd737213a02714314048592fdcd641b01a7` |
| 9 | `instance` | [decidableLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/decidablele--ac1840933c94279ea9b9d67b.md) | 105 | `declaration-track:ac1840933c94279ea9b9d67b0a57587be8506cc827ace6d6609d6a22751896fd` |
| 10 | `theorem` | [le_iff_toList_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/le-iff-tolist-le--48e48d403c1b3204ecf19565.md) | 110 | `result-track:48e48d403c1b3204ecf1956566676c170c1aee3d7cfb529d328613076bc629f0` |
| 11 | `theorem` | [toList_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/tolist-inj--8347bde16e999a2ed0aa2099.md) | 113 | `result-track:8347bde16e999a2ed0aa20991090e157e96ee637507ee2a8993698dfadf1a655` |
| 12 | `theorem` | [asString_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/asstring-nil--d66ca2c92d075b494a8cd31f.md) | 116 | `result-track:d66ca2c92d075b494a8cd31f6b30576e44ea4b36c0e59c5be582d3ca8c42a2b5` |
| 13 | `theorem` | [toList_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/tolist-empty--b05bd61589ef9aa9d7f89351.md) | 120 | `result-track:b05bd61589ef9aa9d7f89351462cd766407d69f322e05fd64a306777f9136cfd` |
| 14 | `theorem` | [asString_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/asstring-tolist--22910a9b13683071aa7a8dc4.md) | 123 | `result-track:22910a9b13683071aa7a8dc4fa6685d8f1c9137fc4a8843715845e84bc07542d` |
| 15 | `theorem` | [toList_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/tolist-nonempty--335c9ca1f64f278ca956b182.md) | 126 | `result-track:335c9ca1f64f278ca956b182d3e029cec760f4a71b3238ce41cfa6117547091b` |
| 16 | `theorem` | [head_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/head-empty--0619d84687e739717b7fc722.md) | 135 | `result-track:0619d84687e739717b7fc72234c45a7084d999f17ca7da0927476d46c63325a3` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/instance--75073a5ab0ce161a23020b48.md) | 138 | `declaration-track:75073a5ab0ce161a23020b48eedf4b1cd32ae99d772d3959daa66eba187d8583` |
| 18 | `theorem` | [toList_asString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/tolist-asstring--81c24a7ae42af8b41d5b2975.md) | 165 | `result-track:81c24a7ae42af8b41d5b2975a7af698c4d6f3fefab7aa130605527340cd64e5f` |
| 19 | `theorem` | [length_asString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/length-asstring--a0a86ca1026232ed6258d7e9.md) | 169 | `result-track:a0a86ca1026232ed6258d7e925af486a85c337c0f734ebbb32711ac2e54e564b` |
| 20 | `theorem` | [asString_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/asstring-inj--4ddd19f2c5d55d118a608ec8.md) | 173 | `result-track:4ddd19f2c5d55d118a608ec8d12759d36dee0b007d55d539585722327a968db8` |
| 21 | `theorem` | [asString_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/asstring-eq--0b635d4f64e8a49a2389eadf.md) | 177 | `result-track:0b635d4f64e8a49a2389eadfd3d5d428be50346f7a5c44d2d064967c20777632` |
| 22 | `theorem` | [String.length_data](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb28aa3e061e66b3e7087a4c7019ea79d6c161d4021172896e8c36345d2ab992.lean/declarations/string-length-data--41ac4b331eff76d4a52b5e0e.md) | 183 | `result-track:41ac4b331eff76d4a52b5e0ee2a2ffeeef935c41afa59482461c53e12316ec18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
