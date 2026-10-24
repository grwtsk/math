# Verification target: GRWTSK.Algebra.MulOpposite.Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdb7ccc5797f3a0b2c21d25a040f4dcd7fb32556",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/index.md) · [Full source](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdb7ccc5797f3a0b2c21d25a040f4dcd7fb32556`.

Source path: `GRWTSK/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.MulOpposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op--1beea0932e4b23cd82ebe67b.md) | 32 | `declaration-track:1beea0932e4b23cd82ebe67ba5898e352e3608b93132d51daa9f4473cf0049e9` |
| 2 | `theorem` | [mem_op](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/mem-op--1852ae636b5ffbcb2657501d.md) | 40 | `result-track:1852ae636b5ffbcb2657501d177b945c899b5aa7903be0c8d15af2db5e8fc239` |
| 3 | `def` | [unop](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop--03253466eaa7bec6a5ef42cd.md) | 44 | `declaration-track:03253466eaa7bec6a5ef42cddb10bad219456a43c9130a0e2aebe26d4f090fe8` |
| 4 | `theorem` | [mem_unop](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/mem-unop--a7be51477813353d97b742e0.md) | 53 | `result-track:a7be51477813353d97b742e0b2d38ee811901733b0857c631124f39d76da5c46` |
| 5 | `theorem` | [unop_op](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-op--34e3b70eb183d7ca6a77cb8f.md) | 56 | `result-track:34e3b70eb183d7ca6a77cb8fe99fc37909fda517a0fc420edcec6ec1d67223b3` |
| 6 | `theorem` | [op_unop](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-unop--f0a115e5612763650358dee3.md) | 59 | `result-track:f0a115e5612763650358dee3cc60edd2638c042d97376a23281db9712969a4bf` |
| 7 | `theorem` | [op_le_iff](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-le-iff--89be61638e8dae4fe06ad50c.md) | 63 | `result-track:89be61638e8dae4fe06ad50cfcc7f021531b094cc7fe6306a9e9b5c21fe424b4` |
| 8 | `theorem` | [le_op_iff](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/le-op-iff--d73456a2871d665aea277f5a.md) | 66 | `result-track:d73456a2871d665aea277f5aaff2b4907297aeea4258dcb0445097fbc1e5fc8b` |
| 9 | `theorem` | [op_le_op_iff](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-le-op-iff--4717f9ff148816a8ca89fd91.md) | 70 | `result-track:4717f9ff148816a8ca89fd915d15e5789a78313beba28f198750ff99c53806c2` |
| 10 | `theorem` | [unop_le_unop_iff](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-le-unop-iff--765bf4c2afb9b369c841edb5.md) | 74 | `result-track:765bf4c2afb9b369c841edb5156e654e5e5e115ede7384b4adfacbcc770a4fb4` |
| 11 | `def` | [opEquiv](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/opequiv--e2d786e64a7a3b865bb75aac.md) | 79 | `declaration-track:e2d786e64a7a3b865bb75aaca5d15e481434cd7c9bd3b1203b7a3c4be2ad9711` |
| 12 | `theorem` | [op_injective](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-injective--0ee67f56a817e43536423eb7.md) | 86 | `result-track:0ee67f56a817e43536423eb752637bbcd0d624ead684d4637c5ddfd063dc616d` |
| 13 | `theorem` | [unop_injective](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-injective--0d7c5e31063b0b1b9cd8153a.md) | 87 | `result-track:0d7c5e31063b0b1b9cd8153a4af3a8b85b8e359af0b66b65fd066be70e33f258` |
| 14 | `theorem` | [op_inj](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-inj--0c8397b7e560c4b7befec257.md) | 89 | `result-track:0c8397b7e560c4b7befec25741e82d256a801a77a47a0737f2bacc3b2f279787` |
| 15 | `theorem` | [unop_inj](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-inj--6e8b72802e098ddeed921401.md) | 92 | `result-track:6e8b72802e098ddeed9214010db085c8c442bf12a5716b467115d58431a73cf5` |
| 16 | `theorem` | [op_bot](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-bot--047ec0fdd9007ce2f7c15ca9.md) | 95 | `result-track:047ec0fdd9007ce2f7c15ca9655db745f76122fca58a8644be4e8a8ac1cb4971` |
| 17 | `theorem` | [op_eq_bot](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-eq-bot--9518b9e916187d44b67a21c7.md) | 98 | `result-track:9518b9e916187d44b67a21c7371bda5da88dc2886b7611b93848f875b375ed77` |
| 18 | `theorem` | [unop_bot](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-bot--53a68c8060cadc79c87e1635.md) | 101 | `result-track:53a68c8060cadc79c87e1635b34db32f5dce4a7a8da99ae48b7193d2fee6bcbf` |
| 19 | `theorem` | [unop_eq_bot](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-eq-bot--4f9944db89d9c2c190f0d201.md) | 104 | `result-track:4f9944db89d9c2c190f0d2018ccb63ecf225217cf50bd9df2a3e0afb427a2ea7` |
| 20 | `theorem` | [op_top](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-top--2e2ca5b690ff5edd6de79519.md) | 107 | `result-track:2e2ca5b690ff5edd6de7951912ef8d0be0ac26fa8373b78426d05c19e76fdf4f` |
| 21 | `theorem` | [op_eq_top](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-eq-top--39861adc6843520dbcc98547.md) | 110 | `result-track:39861adc6843520dbcc98547a8cb122d284dd9e547c5c0e6ebf3fd067b6fa8f0` |
| 22 | `theorem` | [unop_top](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-top--a6512bbad28bd54b58c7f976.md) | 113 | `result-track:a6512bbad28bd54b58c7f9760e7e030fe1a03bac15dae8ca24df6cbfca0e2279` |
| 23 | `theorem` | [unop_eq_top](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-eq-top--5bf02d8ab347d0c31230f0c1.md) | 116 | `result-track:5bf02d8ab347d0c31230f0c124381caf15e889b5f622cf0fb33fc6bbb489b48d` |
| 24 | `theorem` | [op_sup](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-sup--e8ec0e21c9da73c0db3b6ec6.md) | 118 | `result-track:e8ec0e21c9da73c0db3b6ec67260705cf61c94903d5f17fbef63574cf6021d8e` |
| 25 | `theorem` | [unop_sup](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-sup--28be54b9ccf1c9c3df536ba8.md) | 121 | `result-track:28be54b9ccf1c9c3df536ba86a63afa4e6efeb8e9f8becf9059b0240721870b7` |
| 26 | `theorem` | [op_inf](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-inf--593037a15bca67dbe12584bd.md) | 124 | `result-track:593037a15bca67dbe12584bd5bcfdc3333c925d0f88a661c2482ffd646b96f22` |
| 27 | `theorem` | [unop_inf](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-inf--6bb87f9097fef85ef564a637.md) | 126 | `result-track:6bb87f9097fef85ef564a637c9f20523bc8cf2883b488afcb645d81ffe9b5106` |
| 28 | `theorem` | [op_sSup](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-ssup--55653c095d61f19cf1561d13.md) | 128 | `result-track:55653c095d61f19cf1561d1387e76a0e60481c43948e8db111928d3a44fb92ac` |
| 29 | `theorem` | [unop_sSup](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-ssup--c7cde71daa57e9d8bd81b1fc.md) | 131 | `result-track:c7cde71daa57e9d8bd81b1fcd4edf2e4d8ce78841849a273f70799334c55d75c` |
| 30 | `theorem` | [op_sInf](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-sinf--f07cc92df10ebd1d0a238ed4.md) | 134 | `result-track:f07cc92df10ebd1d0a238ed4022d68319e1cd53218962f652cf3d609d62c2d05` |
| 31 | `theorem` | [unop_sInf](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-sinf--29d0a1edbe8b1be623dd9db9.md) | 137 | `result-track:29d0a1edbe8b1be623dd9db9e38322c90c5487de0d4f1a69c649e00edfc82265` |
| 32 | `theorem` | [op_iSup](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-isup--d0c16cc625f4357c310d33a6.md) | 140 | `result-track:d0c16cc625f4357c310d33a6e712df36929a55e637c3f1af33fdc4f282fc829d` |
| 33 | `theorem` | [unop_iSup](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-isup--648076c4cdab8202f56beda3.md) | 142 | `result-track:648076c4cdab8202f56beda39edf3320a5a079c196c14e437910579c60543b4a` |
| 34 | `theorem` | [op_iInf](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-iinf--9aeaae3896bf47d25bac90c7.md) | 145 | `result-track:9aeaae3896bf47d25bac90c76f3e3b547e6093e422f3d4827926dea7509d9898` |
| 35 | `theorem` | [unop_iInf](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-iinf--166365d9eba1af72392b30dc.md) | 147 | `result-track:166365d9eba1af72392b30dcd561169edde3be7030369a684d86aeec6eaae1e8` |
| 36 | `theorem` | [op_closure](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/op-closure--be3a1730e6a7ead21a996adf.md) | 150 | `result-track:be3a1730e6a7ead21a996adffe36c9c19e7e5b0eb496c09919af5d5e3594c666` |
| 37 | `theorem` | [unop_closure](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/unop-closure--04e06d58658ca65453d8352a.md) | 155 | `result-track:04e06d58658ca65453d8352ae7efacf64c87dd6d862160e8d757b322b18af69f` |
| 38 | `def` | [addEquivOp](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/addequivop--af23e4c2d9414e729e7f8e2f.md) | 161 | `declaration-track:af23e4c2d9414e729e7f8e2f9588ef659e9312d18be3c40ad377be03bba5d41f` |
| 39 | `def` | [ringEquivOpMop](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/ringequivopmop--ab81edac6359de8e76ef7a9c.md) | 168 | `declaration-track:ab81edac6359de8e76ef7a9c67336d43015221c7af79d6eeeb028da65bc4aec8` |
| 40 | `def` | [mopRingEquivOp](../../../../mathematics/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean/declarations/mopringequivop--a6d7e7081130c4781599867e.md) | 175 | `declaration-track:a6d7e7081130c4781599867ee0f70b05dea6fedae1825306afc119599192535e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
