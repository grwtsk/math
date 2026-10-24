# Verification target: GRWTSK.Algebra.Pow.Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10d2f11f8a7053eeae3525d7bbf866560df87022",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10d2f11f8a7053eeae3525d7bbf866560df87022`.

Source path: `GRWTSK/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natPow_zero](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/natpow-zero--6cec2e59decb62cb794a5fd0.md) | 24 | `result-track:6cec2e59decb62cb794a5fd059d13ea83eb74b1823b3d75c41dd3ea6e0344edd` |
| 2 | `theorem` | [natPow_one](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/natpow-one--2762af52ffdecede747dfd8f.md) | 25 | `result-track:2762af52ffdecede747dfd8fddea28513dac08ead3b1ff29d939590cd4aa41d2` |
| 3 | `theorem` | [zero_natPow](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/zero-natpow--e26d7a827cff3e4bba80a1bb.md) | 26 | `result-track:e26d7a827cff3e4bba80a1bbf7923df2b45c9e6307d8c73602b5bfcb8bf2c200` |
| 4 | `theorem` | [one_natPow](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/one-natpow--4c5d201c2791d9a98625b284.md) | 27 | `result-track:4c5d201c2791d9a98625b284193e850dd6b071b4cd0c60be2cbc48aac4bd372a` |
| 5 | `structure` | [IsNatPowT](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/isnatpowt--fe1818f9b07914eb05efd475.md) | 33 | `declaration-track:fe1818f9b07914eb05efd47587f4c2387266d3ac3b3f12e17430562549c0c3b2` |
| 6 | `theorem` | [IsNatPowT.run](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/isnatpowt-run--8b838dc76cb04023b8dca05a.md) | 37 | `result-track:8b838dc76cb04023b8dca05ae892034b4e8df576570ef26eb2dacfc07fcc6945` |
| 7 | `theorem` | [IsNatPowT.trans](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/isnatpowt-trans--afaf5978c328546309aa4227.md) | 42 | `result-track:afaf5978c328546309aa4227750d50affb49a159c6932f28d081a1f068db17b3` |
| 8 | `theorem` | [IsNatPowT.bit0](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/isnatpowt-bit0--291310f2e533a735e541aadc.md) | 46 | `result-track:291310f2e533a735e541aadc9d5cb4466dcea973538f1b8a85aa86b921124b07` |
| 9 | `theorem` | [IsNatPowT.bit1](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/isnatpowt-bit1--9a91acade23a90b24017b100.md) | 48 | `result-track:9a91acade23a90b24017b100e61f540815163f7ee8ca3034156b6f6c58874c63` |
| 10 | `def` | [evalNatPow](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/evalnatpow--1db87733b2d8a189804c5949.md) | 62 | `declaration-track:1db87733b2d8a189804c5949e4c6693a5cbf05fec7a62f97fe58f99895df8b2f` |
| 11 | `theorem` | [intPow_ofNat](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/intpow-ofnat--60289b1d6e3dc00cb6769fcd.md) | 105 | `result-track:60289b1d6e3dc00cb6769fcd9e747a591587c737ebefce4e50c1782332ffbfac` |
| 12 | `theorem` | [intPow_negOfNat_bit0](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/intpow-negofnat-bit0--c9f08754961ba4766db8d8f5.md) | 108 | `result-track:c9f08754961ba4766db8d8f5b491a836cfea1cceb9c31dd67832c75a494bfac8` |
| 13 | `theorem` | [intPow_negOfNat_bit1](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/intpow-negofnat-bit1--1f27aa49ec444654ede45e73.md) | 115 | `result-track:1f27aa49ec444654ede45e7382eb793ec6d9b70461593774eb24c11b160ffdf4` |
| 14 | `def` | [evalIntPow](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/evalintpow--8ea7bd1422dc79431927a23d.md) | 123 | `declaration-track:8ea7bd1422dc79431927a23dcfc2d68048aa5e9a30a6d66b95b8a204df6227cf` |
| 15 | `theorem` | [isNat_pow](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/isnat-pow--19c9b7632b404949702c7bda.md) | 147 | `result-track:19c9b7632b404949702c7bdaf10fe174092e36cc5a195b03704bfcbf93ea0c26` |
| 16 | `theorem` | [isInt_pow](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/isint-pow--22df9bea58b85d1b104d264c.md) | 152 | `result-track:22df9bea58b85d1b104d264c525b14bc5562bc5d047e5fb6c134d06687c24188` |
| 17 | `theorem` | [isRat_pow](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/israt-pow--733bfb163244075e74c94266.md) | 157 | `result-track:733bfb163244075e74c9426636413e28e7520da21c760250f57ef7f4986f344b` |
| 18 | `def` | [evalPow](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/evalpow--a1fbfc93fcd9f7e3c2807f8d.md) | 170 | `declaration-track:a1fbfc93fcd9f7e3c2807f8d4dfc883621836443888cfa5699945b5e10405f24` |
| 19 | `theorem` | [isNat_zpow_pos](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/isnat-zpow-pos--16a4fa7581423f24e70a8af0.md) | 200 | `result-track:16a4fa7581423f24e70a8af03ac4cbc7048859ea094de6d2f7fbc8a6b24d3b27` |
| 20 | `theorem` | [isNat_zpow_neg](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/isnat-zpow-neg--f8c7b0440030e8793f459628.md) | 205 | `result-track:f8c7b0440030e8793f459628960945cf33b19c483c947f1ae0bd1e3f4f393dfb` |
| 21 | `theorem` | [isInt_zpow_pos](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/isint-zpow-pos--3bcc7037b571dafb62e7d257.md) | 210 | `result-track:3bcc7037b571dafb62e7d257c490f83f97fed6ca7827b316d84282241bd59809` |
| 22 | `theorem` | [isInt_zpow_neg](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/isint-zpow-neg--2d4ff56df3315309e28e1a55.md) | 215 | `result-track:2d4ff56df3315309e28e1a55ea55d1f92caa1ec61a8a0bb20a0d8d3a7179778f` |
| 23 | `theorem` | [isRat_zpow_pos](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/israt-zpow-pos--c694ca061166424d7a283598.md) | 220 | `result-track:c694ca061166424d7a28359848ef6e93fbf7b522e27189745a6539aa730c5b26` |
| 24 | `theorem` | [isRat_zpow_neg](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/israt-zpow-neg--926b92269403f7e611a6cd3a.md) | 226 | `result-track:926b92269403f7e611a6cd3aa3286b34ebf2cbbbe6bd02bf2de682c655155516` |
| 25 | `def` | [evalZPow](../../../../mathematics/Algebra/Pow/Variant3b7257b3e02efd923e34ddc39f9e138298ce78bc375f91f38cdff582aa94bc5d.lean/declarations/evalzpow--e8e91201c0bcd718275b270f.md) | 243 | `declaration-track:e8e91201c0bcd718275b270fcb2c1c11add19b9f6d93ba72e4ac65b7d8059805` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
