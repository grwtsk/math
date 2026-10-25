# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nim.Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fecfccd08b5eab438892c1c87bcb9740fbdc0d58",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fecfccd08b5eab438892c1c87bcb9740fbdc0d58`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Bitwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Birthday` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Impartial` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim--c5c5cbabdca6622c2bb3bc24.md) | 48 | `declaration-track:c5c5cbabdca6622c2bb3bc2422df20673f93e0ac6838df18675e41255f653623` |
| 2 | `theorem` | [nim_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-def--d7ca838fceab8778c64162ec.md) | 59 | `result-track:d7ca838fceab8778c64162ecd472a07199e236c3a014c7932ed1b6d4530892bc` |
| 3 | `theorem` | [leftMoves_nim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/leftmoves-nim--bac926d148f599d28ad354dd.md) | 67 | `result-track:bac926d148f599d28ad354dd10e38f89cecbda182ed8a505cf4522549cce4b98` |
| 4 | `theorem` | [rightMoves_nim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/rightmoves-nim--9fff68edf08a8b0630407d5a.md) | 70 | `result-track:9fff68edf08a8b0630407d5abbb15358404597f76bf73ee16e3b634c174c405c` |
| 5 | `theorem` | [moveLeft_nim_hEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/moveleft-nim-heq--c1164058f78c719658c03272.md) | 73 | `result-track:c1164058f78c719658c03272e3d0bd448786591a5f89c90f80d71652cfb064b5` |
| 6 | `theorem` | [moveRight_nim_hEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/moveright-nim-heq--f9b45f0e6f028d99dcc32dc0.md) | 78 | `result-track:f9b45f0e6f028d99dcc32dc0ef38dc64895a4c1f05df4a7dd57c9991aa7eecac` |
| 7 | `def` | [toLeftMovesNim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/toleftmovesnim--a160e13386560db046a4774a.md) | 84 | `declaration-track:a160e13386560db046a4774a91166e309ecda293115b3e10df0421c8c1c0a4fc` |
| 8 | `def` | [toRightMovesNim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/torightmovesnim--3d45179d680b75929cb12885.md) | 89 | `declaration-track:3d45179d680b75929cb12885b4a05a24e653a3fde9f9050d0251c741a7a5cf1e` |
| 9 | `theorem` | [toLeftMovesNim_symm_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/toleftmovesnim-symm-lt--591b4f163520bc25e0c27d81.md) | 94 | `result-track:591b4f163520bc25e0c27d8118c3b0ac8fba0c279e6f9c26e3671abb418a0e4e` |
| 10 | `theorem` | [toRightMovesNim_symm_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/torightmovesnim-symm-lt--42198f328b25a79a596289d8.md) | 100 | `result-track:42198f328b25a79a596289d8e050de8b73a4ae7e6b980b49848db983f72dafbc` |
| 11 | `theorem` | [moveLeft_nim'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/moveleft-nim--2fe032c36ef0de2f6f1c07fe.md) | 106 | `result-track:2fe032c36ef0de2f6f1c07feb2304b31e1cf4ba5c334d06ca40bbd8b6f6db28c` |
| 12 | `theorem` | [moveLeft_nim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/moveleft-nim--e7318ce6affee361c04c3473.md) | 111 | `result-track:e7318ce6affee361c04c3473d4bf649e55ed0db81b9b06d946579a9c50c4faf9` |
| 13 | `theorem` | [moveRight_nim'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/moveright-nim--f9b94f46e57160afb22816fd.md) | 115 | `result-track:f9b94f46e57160afb22816fde80a1e07cee2f118b242a3dfe3b1323c80101e65` |
| 14 | `theorem` | [moveRight_nim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/moveright-nim--f85b0dba502d3d5ad6a10140.md) | 119 | `result-track:f85b0dba502d3d5ad6a10140f473aeabfa7273af0e817cb222330f5306cfe5c1` |
| 15 | `def` | [leftMovesNimRecOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/leftmovesnimrecon--0759a4cc3092312c9fe9973f.md) | 124 | `declaration-track:0759a4cc3092312c9fe9973ff01d47a65553651ef07c710e378dd1456262b00b` |
| 16 | `def` | [rightMovesNimRecOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/rightmovesnimrecon--147b34f4cb4d5e53306383c1.md) | 131 | `declaration-track:147b34f4cb4d5e53306383c13820fc1743008eafb03d0beacbf69d11b2ee819b` |
| 17 | `instance` | [isEmpty_nim_zero_leftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/isempty-nim-zero-leftmoves--c3ae1800fa629249b0c3a4b6.md) | 136 | `declaration-track:c3ae1800fa629249b0c3a4b69fe9cbec0c6e50956ffcd4a97461cf2ab7f2ce1b` |
| 18 | `instance` | [isEmpty_nim_zero_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/isempty-nim-zero-rightmoves--a640b33d8423cc45cb0372cb.md) | 141 | `declaration-track:a640b33d8423cc45cb0372cb7f529c1cbbb497979546a8bcd1d805e270a35c7d` |
| 19 | `def` | [nimZeroRelabelling](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nimzerorelabelling--3d41f030ed9a567857536592.md) | 147 | `declaration-track:3d41f030ed9a5678575365922770458a42d190886bf19a2fe934ec1cbbe9e4e5` |
| 20 | `theorem` | [nim_zero_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-zero-equiv--01f8ca63952d09ba5ec5cd65.md) | 151 | `result-track:01f8ca63952d09ba5ec5cd658dcec4df6b709260cd188e8a2bc2fb7696a52749` |
| 21 | `instance` | [uniqueNimOneLeftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/uniquenimoneleftmoves--27d22db41a6c4f6fef8ee5af.md) | 155 | `declaration-track:27d22db41a6c4f6fef8ee5afb7420047007718ce850d971da600b1f6b7e2dcb3` |
| 22 | `instance` | [uniqueNimOneRightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/uniquenimonerightmoves--418f10f0ebdbb9bd3e56a2f2.md) | 159 | `declaration-track:418f10f0ebdbb9bd3e56a2f2c8765b76b06b33ce1b561df2ce8b51fcb60d2b81` |
| 23 | `theorem` | [default_nim_one_leftMoves_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/default-nim-one-leftmoves-eq--6d2e78d8d4290d0db372cb76.md) | 164 | `result-track:6d2e78d8d4290d0db372cb76831006c088fd2366a6632bb0a916dd9df7bb3d99` |
| 24 | `theorem` | [default_nim_one_rightMoves_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/default-nim-one-rightmoves-eq--1df261c4bfa34b0687f6e6a2.md) | 170 | `result-track:1df261c4bfa34b0687f6e6a2b87b8fe0ac90e68c9e56649a211b11b904406760` |
| 25 | `theorem` | [toLeftMovesNim_one_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/toleftmovesnim-one-symm--2575e5ed4f813b58559923a0.md) | 176 | `result-track:2575e5ed4f813b58559923a0a26f329910c4e656f926cf03e500ea3a9dd1a2e6` |
| 26 | `theorem` | [toRightMovesNim_one_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/torightmovesnim-one-symm--6e0db99622651a4c49daa496.md) | 181 | `result-track:6e0db99622651a4c49daa49654f42e41ddf05febbeb4761138d0031ba1dbd220` |
| 27 | `theorem` | [nim_one_moveLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-one-moveleft--1fa576ec15a155d252f7b481.md) | 185 | `result-track:1fa576ec15a155d252f7b481660560289c7a67fc6bd868478ba6a7ba09d688c0` |
| 28 | `theorem` | [nim_one_moveRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-one-moveright--e1bbfe58ba0e34d79ddd8fec.md) | 188 | `result-track:e1bbfe58ba0e34d79ddd8fec3b7e448a8accf51c0c93f1e7bfb20e230412c207` |
| 29 | `def` | [nimOneRelabelling](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nimonerelabelling--2c0f185c5ce1eb7f36afeafd.md) | 192 | `declaration-track:2c0f185c5ce1eb7f36afeafdcd9def855aae57751e653672194eab48de209346` |
| 30 | `theorem` | [nim_one_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-one-equiv--9ca98058a1b9a94795838f48.md) | 199 | `result-track:9ca98058a1b9a94795838f48952128ef94eaa13fc49a9db1eb820b28d74032a6` |
| 31 | `theorem` | [nim_birthday](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-birthday--26e599b37fdc1b991501bb27.md) | 204 | `result-track:26e599b37fdc1b991501bb2765c6f7d0c1e1bd44042873c173fcdb5ce10f347e` |
| 32 | `theorem` | [neg_nim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/neg-nim--f6c6f669dafe2528cf8f6e41.md) | 214 | `result-track:f6c6f669dafe2528cf8f6e41eaf4549a33d960d6dbc730dee38bba30556a6c93` |
| 33 | `instance` | [nim_impartial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-impartial--776a58ea5d16755806ca3bfb.md) | 219 | `declaration-track:776a58ea5d16755806ca3bfb4767786bdcc7c78db3759cb2b8328b354f54d2de` |
| 34 | `theorem` | [nim_fuzzy_zero_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-fuzzy-zero-of-ne-zero--1e6bd5e05fda9a1d9b606cbb.md) | 225 | `result-track:1e6bd5e05fda9a1d9b606cbb2bb4a0d2270934e79d5b0a56e2d96bda53326222` |
| 35 | `theorem` | [nim_add_equiv_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-add-equiv-zero-iff--93305ce9ca43ff7dc90726d4.md) | 232 | `result-track:93305ce9ca43ff7dc90726d45cbb45867e9f03ecf27e1a8950ac87649023b711` |
| 36 | `theorem` | [nim_add_fuzzy_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-add-fuzzy-zero-iff--7f24c2110a73fa83dc90554f.md) | 248 | `result-track:7f24c2110a73fa83dc90554f88946e4db683def7cbd7d622890184d0157dc0a6` |
| 37 | `theorem` | [nim_equiv_iff_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-equiv-iff-eq--c96216d9e12bfb2eedf96517.md) | 253 | `result-track:c96216d9e12bfb2eedf96517ac1b48716f6de508e0d0b89399353e4240a1b5a9` |
| 38 | `def` | [grundyValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/grundyvalue--dd6bac4094c000f0cecc78cb.md) | 259 | `declaration-track:dd6bac4094c000f0cecc78cbe243b8cd3b2ce230449d881db2349ce736ac72d1` |
| 39 | `theorem` | [grundyValue_eq_mex_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/grundyvalue-eq-mex-left--a4d0cd7a8a26b6bf285da2a2.md) | 265 | `result-track:a4d0cd7a8a26b6bf285da2a27237b824701c2c202c3fb8f178963989196c9354` |
| 40 | `theorem` | [equiv_nim_grundyValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/equiv-nim-grundyvalue--ac69ba6ad78adeeafbaf4d2c.md) | 271 | `result-track:ac69ba6ad78adeeafbaf4d2c8c7ae7f5223249cf2e655152490621cb0830f200` |
| 41 | `theorem` | [grundyValue_eq_iff_equiv_nim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/grundyvalue-eq-iff-equiv-nim--1fd7cc6580e0c31f4721a3a0.md) | 310 | `result-track:1fd7cc6580e0c31f4721a3a0e582d41a977991ccb20ea4d86acc36e20e6cc778` |
| 42 | `theorem` | [nim_grundyValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-grundyvalue--1f6329b0af16f6c075930840.md) | 317 | `result-track:1f6329b0af16f6c075930840b7f75f310dfeddcd4cbecd28ff45337d64ba50f9` |
| 43 | `theorem` | [grundyValue_eq_iff_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/grundyvalue-eq-iff-equiv--5a14ed87683426e2a209e1c5.md) | 321 | `result-track:5a14ed87683426e2a209e1c5a048c421eb5986023ef387a4a96b40ee18cc8ca1` |
| 44 | `theorem` | [grundyValue_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/grundyvalue-zero--60ae50ea8cd633c4d32d2e88.md) | 327 | `result-track:60ae50ea8cd633c4d32d2e887b5b470a6415f17221cd745a51cab3321df1beb6` |
| 45 | `theorem` | [grundyValue_iff_equiv_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/grundyvalue-iff-equiv-zero--3a9e20fe2d0105a43056aff4.md) | 331 | `result-track:3a9e20fe2d0105a43056aff4af2907d5dc6d75bbce642e9e94e96766070c3f27` |
| 46 | `theorem` | [grundyValue_star](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/grundyvalue-star--a314645835d38ca883a60f36.md) | 336 | `result-track:a314645835d38ca883a60f36f34dcbdd856d90f507b33be8ba15773711411592` |
| 47 | `theorem` | [grundyValue_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/grundyvalue-neg--819d72bc104352084f613a01.md) | 341 | `result-track:819d72bc104352084f613a01b4103d072cdf4d7a5ad72ad73ad0f0ed6e146b02` |
| 48 | `theorem` | [grundyValue_eq_mex_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/grundyvalue-eq-mex-right--06f7e4346a1409ef72902169.md) | 345 | `result-track:06f7e4346a1409ef729021695711766bc024646d75393cc93312ee1272d7841d` |
| 49 | `theorem` | [grundyValue_nim_add_nim](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/grundyvalue-nim-add-nim--818aa19ac58bff807360fb39.md) | 361 | `result-track:818aa19ac58bff807360fb39a69518e1477b2ed6d0533d8670cb9cc4f4114395` |
| 50 | `theorem` | [nim_add_nim_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/nim-add-nim-equiv--bef894c85a1695b4c6d0b213.md) | 400 | `result-track:bef894c85a1695b4c6d0b213943408f7b53cbdbe741a08b27c13073aabfdb285` |
| 51 | `theorem` | [grundyValue_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nim/Variant74197ad68821fac3c54e83814d6c5f94d37160c410ad1e700a1f295b73093b70.lean/declarations/grundyvalue-add--1a8a4e596c3531c777857ff1.md) | 404 | `result-track:1a8a4e596c3531c777857ff10315997c699260a305e52a983a40e0d200eb55a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
