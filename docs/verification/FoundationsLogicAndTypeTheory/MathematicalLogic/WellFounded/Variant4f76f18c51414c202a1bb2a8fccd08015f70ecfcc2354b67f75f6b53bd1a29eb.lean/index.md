# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.WellFounded.Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32201738e61dc8191c04d727e57ca02afc375394",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32201738e61dc8191c04d727e57ca02afc375394`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isAsymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/isasymm--f5e118f6239c5f28d2a7e1cc.md) | 36 | `result-track:f5e118f6239c5f28d2a7e1ccfefcd0b092f58b7fdcb2a5a32f308a9134eec28a` |
| 2 | `theorem` | [isIrrefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/isirrefl--2504ca312947a1b444259553.md) | 38 | `result-track:2504ca312947a1b444259553ede338ba864bba93d228eff3d913cb1b4d44f683` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/instance--4ad66a035e8eadd48698dd1f.md) | 40 | `declaration-track:4ad66a035e8eadd48698dd1f138e10fa71584d924db11341b8f4ea6e10348c95` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/instance--8e1ab25eafaa7e0d4bf4dc5e.md) | 43 | `declaration-track:8e1ab25eafaa7e0d4bf4dc5ec5aa07498c44e36e8efa72e26f5e402b0dd45c31` |
| 5 | `theorem` | [mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/mono--f1ebbebdf36d8c4b09a27b67.md) | 45 | `result-track:f1ebbebdf36d8c4b09a27b6764dfce25c2e390d1ee3099ac8fc47798d23bae21` |
| 6 | `theorem` | [onFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/onfun--7eca63d51c0b6d146fef097f.md) | 49 | `result-track:7eca63d51c0b6d146fef097f43e165df100e65988113930e8eed8ad118d00cf2` |
| 7 | `theorem` | [has_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/has-min--711341c0645c7da124247d70.md) | 55 | `result-track:711341c0645c7da124247d70ed4cf7d306f8d6cb44b6434d7598b0d42dd9bd75` |
| 8 | `def` | [min](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/min--801145025c89b08f0c1fa527.md) | 67 | `declaration-track:801145025c89b08f0c1fa527bbe5b5e9dee890b0064c0e2e857b2242f84c7f3c` |
| 9 | `theorem` | [min_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/min-mem--351bb980176fc6290d5d2ec8.md) | 70 | `result-track:351bb980176fc6290d5d2ec88849d132033181b49cf0a9281139954bf30e7bba` |
| 10 | `theorem` | [not_lt_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/not-lt-min--56178c03d0508a78727a8970.md) | 75 | `result-track:56178c03d0508a78727a89709c6306ec840999fb48efc5062fb73aa78f1faf2f` |
| 11 | `theorem` | [wellFounded_iff_has_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/wellfounded-iff-has-min--e121a721a22bc21c80f3f235.md) | 80 | `result-track:e121a721a22bc21c80f3f2359738bce61939e6f91d9281d7fb46c676b9548bbe` |
| 12 | `theorem` | [wellFounded_iff_no_descending_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/wellfounded-iff-no-descending-seq--48af9baca1be9f98129003be.md) | 92 | `result-track:48af9baca1be9f98129003be0a9d3c2c7b85c2b3c742b24480ec56c1d63b826d` |
| 13 | `theorem` | [not_rel_apply_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/not-rel-apply-succ--86a67f3ec4061e4ff65893fc.md) | 105 | `result-track:86a67f3ec4061e4ff65893fca667dde15915a6162843f2a10e688bbe19a28cae` |
| 14 | `def` | [sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/sup--828b2f4204ebc69875c54847.md) | 112 | `declaration-track:828b2f4204ebc69875c54847d8f1af024e2c298c03a9f5a9e95d55e2e762042c` |
| 15 | `theorem` | [lt_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/lt-sup--81b1a7f0f8d56c5e804eb10d.md) | 116 | `result-track:81b1a7f0f8d56c5e804eb10dcc382bdf2d831487849f6e438a85e02290417d25` |
| 16 | `def` | [succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/succ--3151976999cd14a8ce8d7b70.md) | 128 | `declaration-track:3151976999cd14a8ce8d7b70c024d034533c0ab5a24ff478c2a77e7181af8ca3` |
| 17 | `theorem` | [lt_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/lt-succ--7de48748af4ad6575791c293.md) | 133 | `result-track:7de48748af4ad6575791c29338315dba3af17293dc111751090f7cebea258124` |
| 18 | `theorem` | [lt_succ_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/lt-succ-iff--724f3414357d48d451ed930c.md) | 140 | `result-track:724f3414357d48d451ed930c2d774acb914ae0b8c8a50ddb8f2f945a333e9af7` |
| 19 | `theorem` | [WellFounded.min_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/wellfounded-min-le--4f88b209d0ca4a0ad98aed72.md) | 165 | `result-track:4f88b209d0ca4a0ad98aed72a0e965e502dd3b374a257a1b7ae692588ac14030` |
| 20 | `theorem` | [Set.range_injOn_strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/set-range-injon-strictmono--788a5a6a52ba155435fb6e84.md) | 169 | `result-track:788a5a6a52ba155435fb6e84c4f66a2f64eb925e00c2bc5ed1a970246cf1edf2` |
| 21 | `theorem` | [Set.range_injOn_strictAnti](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/set-range-injon-strictanti--67f8526e6a1a9e479047daf8.md) | 186 | `result-track:67f8526e6a1a9e479047daf8bc9df09e8c7df4d1f288578362078163910239e7` |
| 22 | `theorem` | [StrictMono.range_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/strictmono-range-inj--f7108a5721e77739a2015185.md) | 190 | `result-track:f7108a5721e77739a20151853c119b7da78489516cd9deabb30e274c10210bfd` |
| 23 | `theorem` | [StrictAnti.range_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/strictanti-range-inj--09de0c4a54f4a710d2f7fef0.md) | 194 | `result-track:09de0c4a54f4a710d2f7fef095e4d450adcfc498d0385ec35b254791a070691b` |
| 24 | `theorem` | [StrictMono.id_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/strictmono-id-le--aad74d3fa531c64cb6e6de25.md) | 199 | `result-track:aad74d3fa531c64cb6e6de251460146900ba4847c75115a07648e3499a5b24cd` |
| 25 | `theorem` | [StrictMono.le_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/strictmono-le-apply--4c03306e047281d6c36aa138.md) | 205 | `result-track:4c03306e047281d6c36aa138cea930fab52429254859280531b12830b18d3bee` |
| 26 | `theorem` | [StrictMono.le_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/strictmono-le-id--708e1a016fa803a561301bcc.md) | 209 | `result-track:708e1a016fa803a561301bccd4a541222ff8731420c3911347dd3d54c6b5ff2b` |
| 27 | `theorem` | [StrictMono.apply_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/strictmono-apply-le--66a2bef3b95f76b82fe95073.md) | 212 | `result-track:66a2bef3b95f76b82fe950738cbb4c3d2bbf149951c577c6fabec29b6dbd44c0` |
| 28 | `theorem` | [StrictMono.not_bddAbove_range_of_wellFoundedLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/strictmono-not-bddabove-range-of-wellfoundedlt--e4f8a14697e4fe419290a86b.md) | 215 | `result-track:e4f8a14697e4fe419290a86bebb6aeabd5299d0cfb1ea2b12de08c41887e8d07` |
| 29 | `theorem` | [StrictMono.not_bddBelow_range_of_wellFoundedGT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/strictmono-not-bddbelow-range-of-wellfoundedgt--c2ea6de856b6d3ff73820180.md) | 221 | `result-track:c2ea6de856b6d3ff73820180a65f0b90ebf65f27119dcd60cefa45bb4aeb2a9e` |
| 30 | `def` | [argmin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/argmin--fe231c0c19031729d31145fb.md) | 237 | `declaration-track:fe231c0c19031729d31145fb6f92add09772431133bbf69bf65bafe21c543e86` |
| 31 | `theorem` | [not_lt_argmin](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/not-lt-argmin--e70d1a7a26916a2fe0dccc04.md) | 240 | `result-track:e70d1a7a26916a2fe0dccc04a99326b50bd7a5b3aa736c8184faf406b85d52c1` |
| 32 | `def` | [argminOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/argminon--2041411ab2a23f4a90c3319b.md) | 246 | `declaration-track:2041411ab2a23f4a90c3319be20e60a43feb174103aa7b6a3887b55b64410944` |
| 33 | `theorem` | [argminOn_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/argminon-mem--16afab62bea5d2a61124cb78.md) | 250 | `result-track:16afab62bea5d2a61124cb78ff9a1ca698944e29d0ec063e81fd6cfb419463f9` |
| 34 | `theorem` | [not_lt_argminOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/not-lt-argminon--82be3b4e1a97826f79eae6f5.md) | 253 | `result-track:82be3b4e1a97826f79eae6f5698de53e7a854147ae77474115828a1cdf1cf62f` |
| 35 | `theorem` | [argmin_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/argmin-le--9122e88087a18c962e59bfdb.md) | 263 | `result-track:9122e88087a18c962e59bfdb9a6fe75a766f3486b6fa7a6c1509b63f436a8754` |
| 36 | `theorem` | [argminOn_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/argminon-le--43998c11d75edd602f00dfbd.md) | 266 | `result-track:43998c11d75edd602f00dfbdb46bfe8e8b8a6d9ce3d2a7622024e9c15df17c9d` |
| 37 | `theorem` | [Acc.induction_bot'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/acc-induction-bot--491a7d08625362aec9a01f57.md) | 281 | `result-track:491a7d08625362aec9a01f57351cdcd6fc7a4959d940857587bb1b0188d41e8f` |
| 38 | `theorem` | [Acc.induction_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/acc-induction-bot--f64e8348ba6e488ca0309b40.md) | 292 | `result-track:f64e8348ba6e488ca0309b403ed36086113e56db55760a229db0d4035d71cc74` |
| 39 | `theorem` | [WellFounded.induction_bot'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/wellfounded-induction-bot--56d7e778d6083f35e5176eff.md) | 302 | `result-track:56d7e778d6083f35e5176eff461ecdcf0a159830b0bf43535d396590bf47df9f` |
| 40 | `theorem` | [WellFounded.induction_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/wellfounded-induction-bot--901230e6589f7d40da85b190.md) | 314 | `result-track:901230e6589f7d40da85b1904c385e0eb024913cc27f33dc8441f321f9d4c612` |
| 41 | `def` | [WellFoundedLT.toOrderBot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/wellfoundedlt-toorderbot--f97b78e909a6865607808ea1.md) | 321 | `declaration-track:f97b78e909a6865607808ea1a96cfe21f39c171234478b5f2e118cf0b8696b88` |
| 42 | `def` | [WellFoundedGT.toOrderTop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFounded/Variant4f76f18c51414c202a1bb2a8fccd08015f70ecfcc2354b67f75f6b53bd1a29eb.lean/declarations/wellfoundedgt-toordertop--70728daf0297fce62c0d11f5.md) | 327 | `declaration-track:70728daf0297fce62c0d11f581f3572b19bdfbf6b011f58b8848dc5105366850` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
