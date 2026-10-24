# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt08.Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75ed918bec5e5dde79e578ddec347813dca1d32d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75ed918bec5e5dde79e578ddec347813dca1d32d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/outerweight--2e46b073bf11f27b6d20ca95.md) | 26 | `declaration-track:2e46b073bf11f27b6d20ca95af7169b365698357bb3bd3dbd033b06969248433` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/exponentweight--b01af58da86b2e8dd7066a04.md) | 28 | `declaration-track:b01af58da86b2e8dd7066a040e6d7504471402649645781d76ca2774075df2aa` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/momentatom--82cec003eea5efcb25202e04.md) | 30 | `declaration-track:82cec003eea5efcb25202e049aba5a83ee68b04e8960f9df77ab884aab52393d` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/primemomentatom--c5e1bf606d6fee4f288ff7c6.md) | 33 | `declaration-track:c5e1bf606d6fee4f288ff7c6bba1c7db470a6948d10a0ae51899da29edfc154a` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/properpowermoment--02e9bbd5d4236c9888daacd7.md) | 35 | `declaration-track:02e9bbd5d4236c9888daacd79aff5ef55e698a23a278c64a94d7b37a28d6b5b2` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/properpowerb1--6b47de89584e429c4e293305.md) | 37 | `declaration-track:6b47de89584e429c4e2933059f4f589cf81aa9773b26dd424a42d626b2cd175b` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/properpowerb2--a7d69c6eae44887789cccd7a.md) | 39 | `declaration-track:a7d69c6eae44887789cccd7a8ee39dd0507f4f324ffa325aec51b25de51f9a23` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/outerweight-nonneg--a2032474808357c3e0dba675.md) | 41 | `result-track:a2032474808357c3e0dba675bbf0c566308adc7f3ffafdcb9084086b4932e854` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/exponentweight-nonneg--68ab70d15ad5647c6140c8e1.md) | 49 | `result-track:68ab70d15ad5647c6140c8e1fc83c460c3410ec27f8f4eb9ad6a16b6c826da85` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/momentatom-nonneg--26d1950ecfe1331fda6bda63.md) | 53 | `result-track:26d1950ecfe1331fda6bda6368b0ee8fd91c548e74b8f14f2cbfacde2dc609d9` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/outerweight-summable--5a0cf6d87775491fb087463b.md) | 61 | `result-track:5a0cf6d87775491fb087463bd27dd989d1ab61f7a3a58fbfb28b24517e25cbb5` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/exponentweight-summable--a3294c664d46369814403faf.md) | 91 | `result-track:a3294c664d46369814403faf4fc2a47eba77789f01a5b1cd54d6bc31ae9d2251` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/momentatom-le-product--11885fdbb612017507b3fb64.md) | 100 | `result-track:11885fdbb612017507b3fb649b95d7b03180fcd61ff0ef9ce3e15fb31d951eaa` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/prime-outerweight-summable--4d6c64e2f7430b5a6cca1a53.md) | 121 | `result-track:4d6c64e2f7430b5a6cca1a53bc88ab29bb985873ff88bad5bcd1274040d8e12b` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/primemomentatom-summable--5abea7ef5b3c5d662ed37882.md) | 125 | `result-track:5abea7ef5b3c5d662ed378828cd9b277a1be6cac595cfa265bb75956ad51ac71` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/primemomentatom-inner-summable--5fcb4d7910639cd9a166fab9.md) | 132 | `result-track:5fcb4d7910639cd9a166fab9751efc38797f63729d0fa557f8a99dcae14c5bc5` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/primemomentatom-outer-summable--cbe488b3e3b2e4540ec4d3a6.md) | 137 | `result-track:cbe488b3e3b2e4540ec4d3a65ea9e85aeae67cc76ba8ce8171cd1b1b301d5f3f` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/properpowermoment-nonneg--027e3ee9d46eccdc6e3418c9.md) | 142 | `result-track:027e3ee9d46eccdc6e3418c9edc9e6723fd684131f0b2754528c2f62b11342ec` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/finiteproperpowermoment-le-b1--2328dd1e84da0b3f9875d6d1.md) | 145 | `result-track:2328dd1e84da0b3f9875d6d1f9bc7d0898555cb04071d9b72a857bf32048ee08` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/properpowerb1-gt-nine-quarters--514cb3d5a19725b017df30ca.md) | 174 | `result-track:514cb3d5a19725b017df30ca862c77d3bc64da785975126722f7e21eda47e44f` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/arithmeticconstant-gt-one-five-hundred--27e5e8b669117921cbb992f3.md) | 177 | `result-track:27e5e8b669117921cbb992f349919bd15e56507ab38365316c909d8034230c86` |
| 22 | `def` | [omittedOnsetAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/omittedonsetatom--179c9b4faf5e88cdc36cea86.md) | 183 | `declaration-track:179c9b4faf5e88cdc36cea86f6d2b56366612050325bd76c00e4976bb871b9e8` |
| 23 | `def` | [omittedOnsetTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/omittedonsettail--c4898fd6e54d603a7794843e.md) | 187 | `declaration-track:c4898fd6e54d603a7794843eee1e2263af9c514f1f783d8aef875bf4ede68b59` |
| 24 | `theorem` | [properPowerMoment_eq_joint_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/properpowermoment-eq-joint-sum--2155b5f7400b5f0df4f0c50b.md) | 190 | `result-track:2155b5f7400b5f0df4f0c50bcedf99b6066ed4f50eefd2b00ffefa8945c988a8` |
| 25 | `theorem` | [omittedOnsetAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/omittedonsetatom-nonneg--ce7f1f142deeb360c0e99a6b.md) | 194 | `result-track:ce7f1f142deeb360c0e99a6ba1277802926a54c8aa1d0e5c9347bed787232948` |
| 26 | `theorem` | [omittedOnsetAtom_le_zeroMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/omittedonsetatom-le-zeromoment--87f673f0634e3a839d2abe1d.md) | 200 | `result-track:87f673f0634e3a839d2abe1d5a5c1f3c673b1360e82b7823e2144da0ad6826f2` |
| 27 | `theorem` | [omittedOnsetTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/omittedonsettail-summable--e3914952dabd65e3680d785c.md) | 207 | `result-track:e3914952dabd65e3680d785c8b1ac13fdb19241379fdc40bb15651faf9ae3f35` |
| 28 | `theorem` | [omittedOnsetTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/omittedonsettail-nonneg--f615f8c43a804545eec4d34b.md) | 212 | `result-track:f615f8c43a804545eec4d34b9883f5df5485cdd1e610b5a94ebfc61b887bdc0b` |
| 29 | `theorem` | [omittedOnsetTail_eq_iterated](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/omittedonsettail-eq-iterated--18d088e6fa70864a13a73f16.md) | 215 | `result-track:18d088e6fa70864a13a73f1632e482876bfabee87b7e39a618660d4b73b5aca5` |
| 30 | `theorem` | [omittedOnsetAtom_secondMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/omittedonsetatom-secondmoment--31fbe20534ba46e4085d8e73.md) | 219 | `result-track:31fbe20534ba46e4085d8e731af1e6658f0604127fd7b22e9d1f983cd3729ea1` |
| 31 | `theorem` | [omittedOnsetTail_le_B2_div_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant68d17d3ea97707de35cd006ecc6ea771bff35492d16366b585564984d34da3aa.lean/declarations/omittedonsettail-le-b2-div-square--025d04c1c958dc54d15b7da9.md) | 234 | `result-track:025d04c1c958dc54d15b7da9175506423303ee750e22e60e9f5e0b0dfbacfa16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
