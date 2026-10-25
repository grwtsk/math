# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Dyadic.Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "faf7410a5da713731be62c832fa2806c5da9d17c",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `faf7410a5da713731be62c832fa2806c5da9d17c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Away` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Birthday` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Surreal.Multiplication` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf--9bd3162178e1db3d18f1e582.md) | 42 | `declaration-track:9bd3162178e1db3d18f1e58266ce52c3113e38d33f49250530f483c9bd43157f` |
| 2 | `theorem` | [powHalf_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf-zero--c837dc9850725115b9a4e6c7.md) | 47 | `result-track:c837dc9850725115b9a4e6c76924adc233ece8ee1ef61761bfd6d4951fcb1186` |
| 3 | `theorem` | [powHalf_leftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf-leftmoves--7be4f2e7dae4df40c3b588c6.md) | 50 | `result-track:7be4f2e7dae4df40c3b588c6c8d754f472f7563d3b11ad6a0e9770754abdaacd` |
| 4 | `theorem` | [powHalf_zero_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf-zero-rightmoves--ce1ed6f52d854dda7354638c.md) | 52 | `result-track:ce1ed6f52d854dda7354638c8d218ac14db9f96b8298270ce5cf633c5e4d1d22` |
| 5 | `theorem` | [powHalf_succ_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf-succ-rightmoves--807c682d9ea6b56a5946ca8f.md) | 55 | `result-track:807c682d9ea6b56a5946ca8f26de02d9dbd0a652adaa3d30b67756c4d9d915d2` |
| 6 | `theorem` | [powHalf_moveLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf-moveleft--2f2dd016c5302adc7a1def82.md) | 59 | `result-track:2f2dd016c5302adc7a1def825216da3785f9ae9f4b57c3f89415f2e231130150` |
| 7 | `theorem` | [powHalf_succ_moveRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf-succ-moveright--b65878d4a0267cb501a40182.md) | 62 | `result-track:b65878d4a0267cb501a40182e96615c735dc343efb84c8fe8c6ffc64c377fb37` |
| 8 | `instance` | [uniquePowHalfLeftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/uniquepowhalfleftmoves--33b0d9fc1eab912d81694fd8.md) | 65 | `declaration-track:33b0d9fc1eab912d81694fd8490b4d0eba4b94befe6a264cbfcd739617bd3ca5` |
| 9 | `instance` | [isEmpty_powHalf_zero_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/isempty-powhalf-zero-rightmoves--fd531f222257f05ff79701b2.md) | 68 | `declaration-track:fd531f222257f05ff79701b212a2d142e896af06e102b07a3ce2494ba406216d` |
| 10 | `instance` | [uniquePowHalfSuccRightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/uniquepowhalfsuccrightmoves--0edace03068142e5f2a81cb2.md) | 71 | `declaration-track:0edace03068142e5f2a81cb2fe992e88cac735fad1abc64db7abc1b0914a60f1` |
| 11 | `theorem` | [birthday_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/birthday-half--caf7f4fdff8135f623fa550a.md) | 75 | `result-track:caf7f4fdff8135f623fa550a74d070fb9baf2b39d01f5b27029f25d67f9ce402` |
| 12 | `theorem` | [numeric_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/numeric-powhalf--c2a2d62c5caa556e8f4b41be.md) | 79 | `result-track:c2a2d62c5caa556e8f4b41be8be971614f7b4cde86210f26f1270c6c16eb053c` |
| 13 | `theorem` | [powHalf_succ_lt_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf-succ-lt-powhalf--8e7ad543fd15b7d911d231d9.md) | 87 | `result-track:8e7ad543fd15b7d911d231d9bee34534d3a62a39ee5ae44f20368bfbf22c50ea` |
| 14 | `theorem` | [powHalf_succ_le_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf-succ-le-powhalf--d4db6a28ae05bbffe08dbac6.md) | 90 | `result-track:d4db6a28ae05bbffe08dbac6413808cf10edf6116a57df4275bbf2f9116b4564` |
| 15 | `theorem` | [powHalf_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf-le-one--fd3a71ecb02cc76b19035f5b.md) | 93 | `result-track:fd3a71ecb02cc76b19035f5bd49d06ce862916384ecc75f37c04794abf608d3c` |
| 16 | `theorem` | [powHalf_succ_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf-succ-lt-one--d91b0c5c971f8f1415c4daba.md) | 98 | `result-track:d91b0c5c971f8f1415c4daba2a2913c5b7743aaf9f01c4f2b6dcf13c08dd260b` |
| 17 | `theorem` | [powHalf_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf-pos--eb5f79f8ededb9bb7a262999.md) | 101 | `result-track:eb5f79f8ededb9bb7a26299971203fab64f67b695fb68b9c92a8dc7282f0b25c` |
| 18 | `theorem` | [zero_le_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/zero-le-powhalf--490f62141c84bfd236149ea5.md) | 104 | `result-track:490f62141c84bfd236149ea5403b67f996302f92c3e42b616e1525824554a94d` |
| 19 | `theorem` | [add_powHalf_succ_self_eq_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/add-powhalf-succ-self-eq-powhalf--eb267cc6f46d5748b8a53307.md) | 107 | `result-track:eb267cc6f46d5748b8a53307da8cea714a68a4b683dbd2a91ee3a00dfc69d130` |
| 20 | `theorem` | [half_add_half_equiv_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/half-add-half-equiv-one--0b6960f195f807239a8cf7c7.md) | 141 | `result-track:0b6960f195f807239a8cf7c7daffd93ba9621a16787ca204926f370c7e04097f` |
| 21 | `def` | [powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf--110db7b61c2bb906ed9e5592.md) | 153 | `declaration-track:110db7b61c2bb906ed9e559291429357291b7665ea73be61ee20b295dac79194` |
| 22 | `theorem` | [powHalf_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/powhalf-zero--06529cd3c72822e7507be1fb.md) | 157 | `result-track:06529cd3c72822e7507be1fb660e926f36a3ce308c1ec3abaf721d1adda0e81d` |
| 23 | `theorem` | [double_powHalf_succ_eq_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/double-powhalf-succ-eq-powhalf--4dced0b310f6cae6820d0690.md) | 161 | `result-track:4dced0b310f6cae6820d069002f85d10bac282636b9b4d395e43a8e6b01dcb88` |
| 24 | `theorem` | [nsmul_pow_two_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/nsmul-pow-two-powhalf--575705f306f80c8f420ed728.md) | 165 | `result-track:575705f306f80c8f420ed7283f6ed1f20de10cc4291664ac4ab469ae60b7607a` |
| 25 | `theorem` | [nsmul_pow_two_powHalf'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/nsmul-pow-two-powhalf--4a2629c3698d485aa6941b01.md) | 172 | `result-track:4a2629c3698d485aa6941b0130fc5f2b87c9940fa6bc4bb9e77a8f87fca5b769` |
| 26 | `theorem` | [zsmul_pow_two_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/zsmul-pow-two-powhalf--06a7135971acdedbd5e6b0ca.md) | 181 | `result-track:06a7135971acdedbd5e6b0cabef4c6402451df7b822988778af5c5aef373cbd5` |
| 27 | `theorem` | [dyadic_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/dyadic-aux--09f710f16d7b9dfd6d32608d.md) | 187 | `result-track:09f710f16d7b9dfd6d32608d28ae09398338431fff41776577f546d237944034` |
| 28 | `def` | [dyadicMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/dyadicmap--e48b4e12816a2ea1ea1b6e5b.md) | 202 | `declaration-track:e48b4e12816a2ea1ea1b6e5b1b0b33e05b236c12a7ba7d9865f704ded6f90d9e` |
| 29 | `theorem` | [dyadicMap_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/dyadicmap-apply--e44e165fcab7224e8a73e421.md) | 238 | `result-track:e44e165fcab7224e8a73e421f5718bb4cff7e4d8059d191eb522ab06688f9846` |
| 30 | `theorem` | [dyadicMap_apply_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/dyadicmap-apply-pow--061305ec9ea0c995ef318dbf.md) | 243 | `result-track:061305ec9ea0c995ef318dbf415cdf3b4c81418adfb782840179f700f015ce58` |
| 31 | `theorem` | [dyadicMap_apply_pow'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/dyadicmap-apply-pow--53e163588bab5bb3e9df8b42.md) | 250 | `result-track:53e163588bab5bb3e9df8b42f16f7cb99fe24734e8958cab369e463d76022bbc` |
| 32 | `def` | [dyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant9a1fda2554598b6608b8a86d287a71c9c155a758ba19990a394d6060144670ef.lean/declarations/dyadic--c114df3f552450359091cf6b.md) | 255 | `declaration-track:c114df3f552450359091cf6b2258cb5822323011e3ee6bfcff77136ce2418461` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
