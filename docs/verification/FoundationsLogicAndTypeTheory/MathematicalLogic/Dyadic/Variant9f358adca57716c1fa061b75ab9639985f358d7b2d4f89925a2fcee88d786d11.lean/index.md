# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Dyadic.Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c35af30d71ce99cd9fad1931b1d9ffcac711011",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c35af30d71ce99cd9fad1931b1d9ffcac711011`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Away` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Birthday` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Surreal.Multiplication` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf--45ddbb5a44b8d49df7cfd7f9.md) | 50 | `declaration-track:45ddbb5a44b8d49df7cfd7f99fa5bf1288eca70db93a0ed4e5ba8b4cb874fa96` |
| 2 | `theorem` | [powHalf_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf-zero--c1fccf17b733ac1fe6b6a49a.md) | 55 | `result-track:c1fccf17b733ac1fe6b6a49a1623f12a6165aeb0255516f1463b4526d8269157` |
| 3 | `theorem` | [powHalf_leftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf-leftmoves--0a046615ac07f57d46cd8499.md) | 58 | `result-track:0a046615ac07f57d46cd84992cc2333dc04dae398d379b4d778f601f6aef0ef1` |
| 4 | `theorem` | [powHalf_zero_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf-zero-rightmoves--de3ca4c57e7827fc33c66f9a.md) | 60 | `result-track:de3ca4c57e7827fc33c66f9a649fdf44309bdaa149a3039485720f2d110b7047` |
| 5 | `theorem` | [powHalf_succ_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf-succ-rightmoves--394588dcd43507c194b751fd.md) | 63 | `result-track:394588dcd43507c194b751fd172eb20e69bbb7e79fb0773fe60edfc76d7afef5` |
| 6 | `theorem` | [powHalf_moveLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf-moveleft--8adabd6e03410149a3596b93.md) | 67 | `result-track:8adabd6e03410149a3596b931308f9b1adbcb3ee5e06022581afa8ed8a10ae66` |
| 7 | `theorem` | [powHalf_succ_moveRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf-succ-moveright--c31db638948d0079596f427f.md) | 70 | `result-track:c31db638948d0079596f427ffbc7a132ebd58afde00b73078238732dc3c609ea` |
| 8 | `instance` | [uniquePowHalfLeftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/uniquepowhalfleftmoves--8c86a5b3f029f6ebb63faa16.md) | 73 | `declaration-track:8c86a5b3f029f6ebb63faa166717211cfc8fc52407a43ee84b35df300b21e068` |
| 9 | `instance` | [isEmpty_powHalf_zero_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/isempty-powhalf-zero-rightmoves--895495891c05a742d99b7b3b.md) | 76 | `declaration-track:895495891c05a742d99b7b3bbe0d06d6d2770e844d1135dfd4f16b3dc3736226` |
| 10 | `instance` | [uniquePowHalfSuccRightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/uniquepowhalfsuccrightmoves--f3dc66e5f6e33052d0cb1b30.md) | 79 | `declaration-track:f3dc66e5f6e33052d0cb1b3050661011e192fc03eb1280dba2f82ff96c350644` |
| 11 | `theorem` | [birthday_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/birthday-half--bdb59a8f2941ccc32a1e6017.md) | 83 | `result-track:bdb59a8f2941ccc32a1e6017eb6a0e96046680eb8b3faa0b6ce7c128b4dabe33` |
| 12 | `theorem` | [numeric_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/numeric-powhalf--52c5c7f951725bb47c0b86d4.md) | 87 | `result-track:52c5c7f951725bb47c0b86d4a38926dec79420b955afc514c4ce89fa1cada5c3` |
| 13 | `theorem` | [powHalf_succ_lt_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf-succ-lt-powhalf--2851febf3efd4de917259545.md) | 95 | `result-track:2851febf3efd4de917259545090d93e99747e410c01a3b421e65f9641390b85d` |
| 14 | `theorem` | [powHalf_succ_le_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf-succ-le-powhalf--03f97ebd78f2308e2b36bd60.md) | 98 | `result-track:03f97ebd78f2308e2b36bd60fa6d496f9486ad9515475c32aabae374b0eb7aa6` |
| 15 | `theorem` | [powHalf_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf-le-one--538c210379651b3c078a278e.md) | 101 | `result-track:538c210379651b3c078a278eb31597047b9b20b9b8c5e82af79c495d8e0012f2` |
| 16 | `theorem` | [powHalf_succ_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf-succ-lt-one--7145db9056b2945c8c0a9029.md) | 106 | `result-track:7145db9056b2945c8c0a9029b9d86c947f8dcd2a35db75e5ab3cba25b6ad52c1` |
| 17 | `theorem` | [powHalf_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf-pos--20cefae335da5e5a6dff483e.md) | 109 | `result-track:20cefae335da5e5a6dff483e4b15f6b145eb6188eb3cc3bfee9e2af5386f8e4b` |
| 18 | `theorem` | [zero_le_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/zero-le-powhalf--9011e5fc73bb7cb19c3e1978.md) | 112 | `result-track:9011e5fc73bb7cb19c3e19787129f5ab20fcb0d8d1f91861c63a915acb375c9d` |
| 19 | `theorem` | [add_powHalf_succ_self_eq_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/add-powhalf-succ-self-eq-powhalf--ec25f4328150e7075bcae72f.md) | 115 | `result-track:ec25f4328150e7075bcae72ffe64613fd2df3978efcd973ac204c15e66a6a6fe` |
| 20 | `theorem` | [half_add_half_equiv_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/half-add-half-equiv-one--18d0e32e31d3bad239b0ba03.md) | 149 | `result-track:18d0e32e31d3bad239b0ba030062fb4fff2d4b222f7af9243cd1aeb80414b5a6` |
| 21 | `def` | [powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf--1c0d258997844fbbce2584a0.md) | 161 | `declaration-track:1c0d258997844fbbce2584a0d623293e2b452ec8a700f61764e82d8a8fc2c09f` |
| 22 | `theorem` | [powHalf_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/powhalf-zero--8e838b30572bbf41959fa798.md) | 165 | `result-track:8e838b30572bbf41959fa79844188170ee95c66febc824185a1866e2468a5067` |
| 23 | `theorem` | [double_powHalf_succ_eq_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/double-powhalf-succ-eq-powhalf--a9a8fbe38e27fd5432c30536.md) | 169 | `result-track:a9a8fbe38e27fd5432c3053663d6980fb319030a099b4fb7c02f12c144de1b63` |
| 24 | `theorem` | [nsmul_pow_two_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/nsmul-pow-two-powhalf--d523b678814fabd7dcf24544.md) | 173 | `result-track:d523b678814fabd7dcf24544eebf1a739cdc06ecbdda98ebfc01d80b95269230` |
| 25 | `theorem` | [nsmul_pow_two_powHalf'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/nsmul-pow-two-powhalf--ead3aeaa83bdac1d6f3ae6be.md) | 180 | `result-track:ead3aeaa83bdac1d6f3ae6be0a61ef85b1ee023079d438a9a24a5c8c6fd39d4c` |
| 26 | `theorem` | [zsmul_pow_two_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/zsmul-pow-two-powhalf--5f2ddc7f405c9681fef76955.md) | 189 | `result-track:5f2ddc7f405c9681fef76955073a4b1512d10c8ba0301c3c7483743d1b68d407` |
| 27 | `theorem` | [dyadic_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/dyadic-aux--c6e07c28ea9bc9e934eb9ebe.md) | 195 | `result-track:c6e07c28ea9bc9e934eb9ebeb5b2c3a527b44c8bce134d071aa22c9e1294c6c8` |
| 28 | `def` | [dyadicMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/dyadicmap--43306fd3d1d05b6ffc1c4c61.md) | 210 | `declaration-track:43306fd3d1d05b6ffc1c4c61e6ef60456b40f2711fb0ec99622b60a8863a1e44` |
| 29 | `theorem` | [dyadicMap_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/dyadicmap-apply--58cf0e2f42728e6ba9b9923e.md) | 246 | `result-track:58cf0e2f42728e6ba9b9923e599e11a6a91bbc8e49f0758af561e9ab04a1c5b3` |
| 30 | `theorem` | [dyadicMap_apply_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/dyadicmap-apply-pow--1f1d1b8378f27cd2f33ef18b.md) | 251 | `result-track:1f1d1b8378f27cd2f33ef18b8eb4bafcb931ce556c12eebb9d0d2c1676a40272` |
| 31 | `theorem` | [dyadicMap_apply_pow'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/dyadicmap-apply-pow--6486e34496cfb1e56eebdd7d.md) | 258 | `result-track:6486e34496cfb1e56eebdd7d82caf2d4d63c16f669e0fc528a35505111be97bf` |
| 32 | `def` | [dyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9f358adca57716c1fa061b75ab9639985f358d7b2d4f89925a2fcee88d786d11.lean/declarations/dyadic--8462b54bfa9de230a9d2550f.md) | 263 | `declaration-track:8462b54bfa9de230a9d2550fa09fe0850b68d5cb7b22f2d4a8335c4804f03b81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
