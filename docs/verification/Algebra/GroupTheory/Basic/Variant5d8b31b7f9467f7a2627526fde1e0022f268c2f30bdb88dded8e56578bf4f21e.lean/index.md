# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5aea38105b2d72824ca958337d1e0dbe00a28de",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5aea38105b2d72824ca958337d1e0dbe00a28de`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.DistribMulAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OreLocalization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_oreDiv'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/zero-orediv--862f9401cffba0bde66fdcbb.md) | 40 | `result-track:862f9401cffba0bde66fdcbb062c74a61f85b8a47aa8d3345a07d5b9d1448530` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/instance--37b87dc536e28d5e7f7b3336.md) | 44 | `declaration-track:37b87dc536e28d5e7f7b333601907a8fe6974602f29ec1eb77ca7d78a787238a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/instance--56764c97888af60195b3fb2b.md) | 58 | `declaration-track:56764c97888af60195b3fb2b43b95534b02b61afb0d5e3832a6fa9020be0db7a` |
| 4 | `def` | [add''](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/add--9207e5a9315f61f9f03ffa31.md) | 69 | `declaration-track:9207e5a9315f61f9f03ffa31b5d86789a2bd4768238037e4839e89a07ddbba0b` |
| 5 | `theorem` | [add''_char](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/add-char--c8fca40d5e0391ee59e00add.md) | 72 | `result-track:c8fca40d5e0391ee59e00add583bf2bc8f5c84516a88ec8d011c32a0dfb0520f` |
| 6 | `def` | [add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/add--e39df0217b933e5f8d78ab10.md) | 93 | `declaration-track:e39df0217b933e5f8d78ab10ed5f67e6988c50c86fc334a4e90ff2d187b52ee4` |
| 7 | `def` | [add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/add--e853054f6188abd1246ed4b6.md) | 117 | `declaration-track:e853054f6188abd1246ed4b6bf48f0c43493aa2583f5e31942dd939ba12e64b6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/instance--ca5e8b8d9d61365e4eda1ede.md) | 136 | `declaration-track:ca5e8b8d9d61365e4eda1edece6547929987251a66646c98c1ed68f929db8071` |
| 9 | `theorem` | [oreDiv_add_oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/orediv-add-orediv--39cf45bd113ab4506ae662fa.md) | 139 | `result-track:39cf45bd113ab4506ae662fadb58bcab00e86a6c4c593e28546f1eb8ac539433` |
| 10 | `theorem` | [oreDiv_add_char'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/orediv-add-char--b38f172c77883c9c2e782e5d.md) | 144 | `result-track:b38f172c77883c9c2e782e5d8905e6e021592cf4e9de2e1c9c8019ccf756b196` |
| 11 | `theorem` | [oreDiv_add_char](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/orediv-add-char--e344cd0e39621e23ba5de883.md) | 151 | `result-track:e344cd0e39621e23ba5de883b81b30c4663ce64bb4e90d4c970ff330d69bba15` |
| 12 | `def` | [oreDivAddChar'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/oredivaddchar--ae3bd9f8cee973f23792b1c6.md) | 157 | `declaration-track:ae3bd9f8cee973f23792b1c6de2f607bd02227109b408854287cff9fa7c8616c` |
| 13 | `theorem` | [add_oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/add-orediv--0d8575abe945efab2a575f66.md) | 163 | `result-track:0d8575abe945efab2a575f669181044d12b70364dd87934b5c6a351b5ea0c697` |
| 14 | `theorem` | [add_assoc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/add-assoc--118462fee8d9c9c6c0a11cb8.md) | 166 | `result-track:118462fee8d9c9c6c0a11cb855d2a81be2f705f5fd9c16f9cb06a425f7203636` |
| 15 | `theorem` | [zero_oreDiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/zero-orediv--30c8236993beef0762f2f01a.md) | 179 | `result-track:30c8236993beef0762f2f01a3264424449a9abc517639449695bccb1262273b9` |
| 16 | `theorem` | [zero_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/zero-add--aae50104a7c610a77b1bfcf3.md) | 183 | `result-track:aae50104a7c610a77b1bfcf3977d3077e7564516e62a23bd41776349c4805161` |
| 17 | `theorem` | [add_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/add-zero--f5b532928f8737f4a1738b4a.md) | 187 | `result-track:f5b532928f8737f4a1738b4a17c26ad361e2c4ee60225d719262d70d469dbced` |
| 18 | `def` | [nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/nsmul--1b8125b67edb1734c30eff2a.md) | 192 | `declaration-track:1b8125b67edb1734c30eff2ab54a1269964c48fcc90c3878bc8d5afb4cbc9e5e` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/instance--630b78b654ea233d8ffcea12.md) | 194 | `declaration-track:630b78b654ea233d8ffcea12a3ea73133a35713e6d51131538ba5a1d615b0663` |
| 20 | `theorem` | [smul_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/smul-zero--bde2549c3ecf082cf6796c05.md) | 202 | `result-track:bde2549c3ecf082cf6796c050d88bd04e24018290d1c3e0c6aa7a2f3b23caba8` |
| 21 | `theorem` | [smul_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/smul-add--88d2efde8286fa5948ccc9cf.md) | 206 | `result-track:88d2efde8286fa5948ccc9cfd762dc5916eb3dbd185bba1751dfb4e0c4b466b4` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/instance--196f060ce88d59a16008f607.md) | 218 | `declaration-track:196f060ce88d59a16008f6074e7cc45bf4831b75e088455f9b902c514bbd0300` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/instance--ace9350eb7b677625d66db90.md) | 222 | `declaration-track:ace9350eb7b677625d66db906c705335d3430911ae827deea3dc8943552d2727` |
| 24 | `theorem` | [add_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/add-comm--21d09b2ebc651f4e447d686d.md) | 235 | `result-track:21d09b2ebc651f4e447d686d8d10322112d454fb3c44e85494c54d0fa515f368` |
| 25 | `instance` | [instAddCommMonoidOreLocalization](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/instaddcommmonoidorelocalization--38d00d389fb6a6b13e628261.md) | 242 | `declaration-track:38d00d389fb6a6b13e628261472bd2b37c8dc592e5626354c8538ac07fdf08f6` |
| 26 | `def` | [neg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/neg--465f49a0f421a836ca5927c3.md) | 254 | `declaration-track:465f49a0f421a836ca5927c3dfbe4e3d91f1ccb15bcf541d9c866073b2079c94` |
| 27 | `instance` | [instNegOreLocalization](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/instnegorelocalization--1f5d6d13b68c0b4c3ccf1d50.md) | 260 | `declaration-track:1f5d6d13b68c0b4c3ccf1d50ec427e5f28ab08656a17b4a3f605a5e8b4e4030a` |
| 28 | `theorem` | [neg_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/neg-def--d56dcd28cac5ca366bdc1bd4.md) | 264 | `result-track:d56dcd28cac5ca366bdc1bd40dccf288aaa42877e01ea993c78d2b7b9b0f9abd` |
| 29 | `theorem` | [neg_add_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/neg-add-cancel--28d4aecf4c9956ee886ccfe3.md) | 267 | `result-track:28d4aecf4c9956ee886ccfe3ae947ef7ff58bb95a5ae2b7e16689540b6adad1c` |
| 30 | `def` | [zsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/zsmul--6c821382068b83e7287ee796.md) | 272 | `declaration-track:6c821382068b83e7287ee79681b2d5cbc747ce343877b37c920c2a6010c52b58` |
| 31 | `instance` | [instAddGroupOreLocalization](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/instaddgrouporelocalization--32e09a1284db0afabbbfabe9.md) | 275 | `declaration-track:32e09a1284db0afabbbfabe9c8fa1140938332680a19bfabb872e3a06212cda3` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant5d8b31b7f9467f7a2627526fde1e0022f268c2f30bdb88dded8e56578bf4f21e.lean/declarations/instance--980084790b22d7b686f17165.md) | 286 | `declaration-track:980084790b22d7b686f17165246050626deda6dc43d42fb853634a11f8d37ba4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
