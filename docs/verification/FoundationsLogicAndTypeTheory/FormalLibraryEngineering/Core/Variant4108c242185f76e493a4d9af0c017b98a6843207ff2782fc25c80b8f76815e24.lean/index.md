# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a75feda06a3f36d2c747cec5ba096bb75629aa93",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a75feda06a3f36d2c747cec5ba096bb75629aa93`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Lean.Parser` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Core` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.HaveI` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Invertible` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Qq` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/syntax--fe093061ff4072c4963250bd.md) | 38 | `declaration-track:fe093061ff4072c4963250bd16020a07f13320c2edb64c0073ff8763c9c344c1` |
| 2 | `lemma` | [ne_of_ne_of_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/ne-of-ne-of-eq--91dd7e46d513c2fbe0404c50.md) | 40 | `result-track:91dd7e46d513c2fbe0404c50e297426476f6144e119baf4e52a9f8f9e2e8bd3e` |
| 3 | `inductive` | [Strictness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/strictness--2183f10e4171ee5b9d658a48.md) | 47 | `declaration-track:2183f10e4171ee5b9d658a48e031c6ad653ace47674697dc877c0e71691fcd9e` |
| 4 | `def` | [Strictness.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/strictness-tostring--ea3437c1ba4c44934a9b2e55.md) | 55 | `declaration-track:ea3437c1ba4c44934a9b2e55cd2f5f3009119c592c75d4e068ed407cd22fce60` |
| 5 | `structure` | [PositivityExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/positivityext--abb4f93d9130661de9061d8e.md) | 62 | `declaration-track:abb4f93d9130661de9061d8e75e5e07112e39f2039a6ec4549a45aa5e5fd2a9a` |
| 6 | `def` | [mkPositivityExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/mkpositivityext--89ef733577c2364e5319ba5e.md) | 68 | `declaration-track:89ef733577c2364e5319ba5e261fde3590e82cea24b25e1a9a51f7bf2813683a` |
| 7 | `abbrev` | [Entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/entry--a639c2af16edd19b67f46715.md) | 74 | `declaration-track:a639c2af16edd19b67f4671523ce7cbd91377245602c756ef2772d27265dde28` |
| 8 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/initialize--bb575f77b73f79fa8b26d820.md) | 77 | `declaration-track:bb575f77b73f79fa8b26d820f08eeff0b37226b7287156a5b9707a8aa821fc4a` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/initialize--79e144a8d5e8b503b3424912.md) | 92 | `declaration-track:79e144a8d5e8b503b3424912ac2b555f8aaf58b9e0ce490eae136e559bf2aca9` |
| 10 | `lemma` | [lt_of_le_of_ne'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/lt-of-le-of-ne--14dd304d3e88534134ae1979.md) | 116 | `result-track:14dd304d3e88534134ae1979709fe073d55e56a402f924ae64f0abb3a9b13ff7` |
| 11 | `lemma` | [pos_of_isNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/pos-of-isnat--971e49c3304a4b6969811409.md) | 119 | `result-track:971e49c3304a4b6969811409665c334da5ffb88232a445d44c233921dc581f52` |
| 12 | `lemma` | [nonneg_of_isNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/nonneg-of-isnat--9e3b4eac8110e141f01a9069.md) | 125 | `result-track:9e3b4eac8110e141f01a9069c24730ae6c315ccb624676a739e6da68ff6424f5` |
| 13 | `lemma` | [nz_of_isNegNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/nz-of-isnegnat--e7f027d049f7b2f8362b8b0d.md) | 130 | `result-track:e7f027d049f7b2f8362b8b0dd358d119ff9039323a91e40c95f01515663cd155` |
| 14 | `lemma` | [pos_of_isRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/pos-of-israt--5a2536088f3e78ade8366cbe.md) | 137 | `result-track:5a2536088f3e78ade8366cbe2b51d35f7a44b925ec5ffd6d8c0f803b4a79a2e3` |
| 15 | `lemma` | [nonneg_of_isRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/nonneg-of-israt--7b5a8ff32943ea462105637b.md) | 145 | `result-track:7b5a8ff32943ea462105637bb72bb832fdc3803b5380b63ca68eba4bb44b9606` |
| 16 | `lemma` | [nz_of_isRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/nz-of-israt--50d20e4012b5ba7bae9a9c44.md) | 149 | `result-track:50d20e4012b5ba7bae9a9c445dbe41ee34a1b1c97c25155b59641588d1122ae7` |
| 17 | `def` | [catchNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/catchnone--51e4a07f893839293957bf9b.md) | 161 | `declaration-track:51e4a07f893839293957bf9b87155f725f179e2e1dc90e309544b5edbe387a82` |
| 18 | `def` | [throwNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/thrownone--7a3c23ac7112915b79eb6e07.md) | 169 | `declaration-track:7a3c23ac7112915b79eb6e0748de4f14d07dbb86c5016046b9df09a6edb55198` |
| 19 | `def` | [normNumPositivity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/normnumpositivity--e10c8505b8e25b428cf41b6f.md) | 176 | `declaration-track:e10c8505b8e25b428cf41b6f27683c6046b491a99afa64617598b5a2aa13398f` |
| 20 | `def` | [positivityCanon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/positivitycanon--bb518dd60423e0b46734a52c.md) | 212 | `declaration-track:bb518dd60423e0b46734a52c66e1ae61e610a4edfe3337f30442db6461d2c2dc` |
| 21 | `def` | [compareHypLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/comparehyple--a4e69e36fd1dcdc8b38807af.md) | 218 | `declaration-track:a4e69e36fd1dcdc8b38807afc03aaa433b4ac74a9bd3c0ffe10524d30384dcbd` |
| 22 | `def` | [compareHypLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/comparehyplt--0ef2828b18036440ecc4fc52.md) | 225 | `declaration-track:0ef2828b18036440ecc4fc52878f923f282fc09fe01e8874633edff003ad6bda` |
| 23 | `def` | [compareHypEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/comparehypeq--8c64fe6f66d13837ed60496e.md) | 232 | `declaration-track:8c64fe6f66d13837ed60496e24d059796438cbbfec5ce143d923784fcb2ad09c` |
| 24 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/initialize--2c8567ea5d8355bc57c20cb2.md) | 240 | `declaration-track:2c8567ea5d8355bc57c20cb2985857a95f410b9fd03f2caafa70e4b3cd1cf12c` |
| 25 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/initialize--86520c5d89e6fae096a7a00d.md) | 241 | `declaration-track:86520c5d89e6fae096a7a00d1257d17a39e4764cb2b8b636d197e2c3ca906d0b` |
| 26 | `def` | [compareHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/comparehyp--43f7feef7fb932c1660a60ac.md) | 245 | `declaration-track:43f7feef7fb932c1660a60ac6f16a10d723cf6315b020721bca66a9b195db46b` |
| 27 | `def` | [orElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/orelse--9bbb9b896983011801a518ab.md) | 277 | `declaration-track:9bbb9b896983011801a518abe844efcf859a8a76a82fdcafc770626611fa37a7` |
| 28 | `def` | [core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/core--c5696423f4ada22feea14adc.md) | 294 | `declaration-track:c5696423f4ada22feea14adc8c199a50730dbb2bde8517d5b4cb13e0a8a2bcd6` |
| 29 | `inductive` | [OrderRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/orderrel--76bdc282cadfbb49d4cda586.md) | 313 | `declaration-track:76bdc282cadfbb49d4cda586cc06284c222c5ce649f08c64f8ef2e071e10701f` |
| 30 | `def` | [solve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/solve--6649607482a71cfb2e336e35.md) | 325 | `declaration-track:6649607482a71cfb2e336e355a7d91422b7c849e0903dd01893c2408d1d2e152` |
| 31 | `def` | [positivity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/positivity--7f1345ca1efa3e8f910984ad.md) | 365 | `declaration-track:7f1345ca1efa3e8f910984ad58aad7b174e5eacc8e5a6ad46424d556ea316f8e` |
| 32 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant4108c242185f76e493a4d9af0c017b98a6843207ff2782fc25c80b8f76815e24.lean/declarations/elab--c06faf9bf7b248dc26314fde.md) | 390 | `declaration-track:c06faf9bf7b248dc26314fded53617be4b65f5184d3360238d5122f8e6931615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
