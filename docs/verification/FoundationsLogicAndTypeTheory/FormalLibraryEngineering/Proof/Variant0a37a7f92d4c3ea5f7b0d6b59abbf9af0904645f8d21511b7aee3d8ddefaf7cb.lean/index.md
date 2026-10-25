# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proof.Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f7f38f5ea05a9d2fc3c433fb6b87d5611b781d7",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f7f38f5ea05a9d2fc3c433fb6b87d5611b781d7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Grind.Util` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/iseqproof--f07e8404a6f3ee03f9151ab4.md) | 14 | `declaration-track:f07e8404a6f3ee03f9151ab4cf1bfc4e2c12272387d11d137fa317ddc1f6da34` |
| 2 | `def` | [findCommonPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/findcommonprefix--9effd8dee5d39de55ece5d37.md) | 25 | `declaration-track:9effd8dee5d39de55ece5d375d102816d3ade2b4aae2ecb6dc63774f8f8c4d93` |
| 3 | `def` | [flipProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/flipproof--68a55d0bde09a7267cade80f.md) | 36 | `declaration-track:68a55d0bde09a7267cade80ff502075894325763ef7d93020e3ac05159cd93eb` |
| 4 | `def` | [mkRefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkrefl--de548ec1347c8310e9a56f5f.md) | 45 | `declaration-track:de548ec1347c8310e9a56f5fce2ab11c5ac527b0854d859d5a6625ddc97fdf11` |
| 5 | `def` | [mkTrans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mktrans--d07066c0043bdc3ecca7d95a.md) | 48 | `declaration-track:d07066c0043bdc3ecca7d95ab17f891e0f3505e06667ee6cc1b10e8881cc6561` |
| 6 | `def` | [mkTrans'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mktrans--3a05028a8f89c1a6133eab1a.md) | 54 | `declaration-track:3a05028a8f89c1a6133eab1a566660f64550f4c26be3fa61aa4d34d746bc2920` |
| 7 | `def` | [mkEqOfHEqIfNeeded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkeqofheqifneeded--7b98b0e00bc7f607179d1a8d.md) | 62 | `declaration-track:7b98b0e00bc7f607179d1a8d8747ef9fafc9f9b3095156dc44d348b883360fe4` |
| 8 | `def` | [findCommon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/findcommon--2d3a27e17b5fcce9738a0b39.md) | 72 | `declaration-track:2d3a27e17b5fcce9738a0b39308b229d5062036fffc81087a80057077769e37a` |
| 9 | `def` | [isCongrDefaultProofTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/iscongrdefaultprooftarget--752c11765f5403ec6888f113.md) | 95 | `declaration-track:752c11765f5403ec6888f113eba52af3633b483643cbbe16a5fd2d2ea0ba8f19` |
| 10 | `def` | [mkNestedProofCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mknestedproofcongr--0280067675a77d600976f6bf.md) | 121 | `declaration-track:0280067675a77d600976f6bf89e58afbdae42e37c42640d44c96aa3aed7ef74d` |
| 11 | `def` | [mkNestedDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mknesteddecidablecongr--78ef089335a4cbd6a47a5193.md) | 134 | `declaration-track:78ef089335a4cbd6a47a519300896fc0a1f95152edfa9de8c3c3c10dcb37d4bf` |
| 12 | `def` | [mkEqCongrProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkeqcongrproof--be0e3d2d0d162efaf97de9ea.md) | 142 | `declaration-track:be0e3d2d0d162efaf97de9ea12f91ad1f7c7a09874e3f9fe43910eb8dbfefcfa` |
| 13 | `def` | [mkEqCongrSymmProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkeqcongrsymmproof--5b6a7415f97c6ee9c2a54869.md) | 152 | `declaration-track:5b6a7415f97c6ee9c2a5486949bcb2515edba5b8f6e4e1ca33fe006aeb5afcfe` |
| 14 | `def` | [mkCongrDefaultProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkcongrdefaultproof--245bcc207c4f2154589efab2.md) | 166 | `declaration-track:245bcc207c4f2154589efab23778864836ea51e28e980898162ddf153da7e24a` |
| 15 | `def` | [mkHCongrProofHelper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkhcongrproofhelper--d763c76ccbcc859d07fe19ed.md) | 185 | `declaration-track:d763c76ccbcc859d07fe19edc25429f3f56d14eaf3a703095282284a81d39655` |
| 16 | `def` | [mkHCongrProof'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkhcongrproof--e91860b84757e27102c50d85.md) | 196 | `declaration-track:e91860b84757e27102c50d85a5ecb6d3233ee2e25dd8082b87d67098364fa9de` |
| 17 | `def` | [mkHCongrProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkhcongrproof--fd357e4e04368b38996d35fe.md) | 215 | `declaration-track:fd357e4e04368b38996d35fe3ffc89820226fb9c25287af5ba73e42ac8e4a3e3` |
| 18 | `def` | [mkCongrProofFunCC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkcongrprooffuncc--42059a892e4c92e4ad9bcc6b.md) | 234 | `declaration-track:42059a892e4c92e4ad9bcc6b72b7dd87ec71efa222de5c79a0d1f39db767cf2f` |
| 19 | `def` | [mkCongrProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkcongrproof--0c7651ab2f92b60e11e9214b.md) | 248 | `declaration-track:0c7651ab2f92b60e11e9214b6a58e69ddbdc1b3c43237dbe03f9592f3a3acc1c` |
| 20 | `def` | [realizeEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/realizeeqproof--5e04180cf232c0f376bd6e9f.md) | 273 | `declaration-track:5e04180cf232c0f376bd6e9f985af27c89a5b3dd697abf2a19d5791772bd1fed` |
| 21 | `def` | [mkProofTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkproofto--71f7d194abe17242246302b2.md) | 283 | `declaration-track:71f7d194abe17242246302b255f0503278b5a1cc8cec9b3440f769ddbb20d3d2` |
| 22 | `def` | [mkProofFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkprooffrom--b16085993f7c3a4cc84209b1.md) | 295 | `declaration-track:b16085993f7c3a4cc84209b166c99e0af8ebe1798be4719277bf41b0e96dd9f3` |
| 23 | `def` | [mkEqProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkeqproofcore--035f94ae279d402878eb4f11.md) | 311 | `declaration-track:035f94ae279d402878eb4f11707faff96d61a9d690dbae389e446292f2107e46` |
| 24 | `def` | [mkEqProofImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkeqproofimpl--3b50a59bde6857ff6166d158.md) | 337 | `declaration-track:3b50a59bde6857ff6166d15848653650ca5e693d2c6442e63d077611b6105cc6` |
| 25 | `def` | [mkHEqProofImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant0a37a7f92d4c3ea5f7b0d6b59abbf9af0904645f8d21511b7aee3d8ddefaf7cb.lean/declarations/mkheqproofimpl--f091c32e200b3c4f2bb3971f.md) | 344 | `declaration-track:f091c32e200b3c4f2bb3971feb3490a4256592224cd6f87c3c7d32b733c4bdef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
