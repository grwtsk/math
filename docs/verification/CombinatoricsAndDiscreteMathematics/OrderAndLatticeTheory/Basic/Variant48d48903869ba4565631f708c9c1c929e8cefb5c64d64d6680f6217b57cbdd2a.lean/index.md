# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Basic.Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4a7d2d4bb664a2d15881ff88e99bfa33be10027",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4a7d2d4bb664a2d15881ff88e99bfa33be10027`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof--e1b9df15161f65f603ad8ff7.md) | 43 | `declaration-track:e1b9df15161f65f603ad8ff744e6d283329a5912c283e4c412e07c92f4f41047` |
| 2 | `theorem` | [cof_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-le--172f0cd354684b60ff21e215.md) | 46 | `result-track:172f0cd354684b60ff21e215d56f07d495ee606510e6cfcf08ba2d3e629cb5cf` |
| 3 | `theorem` | [le_lift_cof_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/le-lift-cof-iff--3ccedfa46664647aac23a4a8.md) | 49 | `result-track:3ccedfa46664647aac23a4a8c6acbd55151cbd08b335cf44c524c4aec585830b` |
| 4 | `theorem` | [le_cof_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/le-cof-iff--34c054d1c80193fcff98e3d7.md) | 54 | `result-track:34c054d1c80193fcff98e3d72b4c2bc8b03a69e29094dc1f92ef9c6af4a925af` |
| 5 | `theorem` | [exists_cof_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/exists-cof-eq--c0618f306642c461108b45fe.md) | 59 | `result-track:c0618f306642c461108b45fe332fa039940fb1766f5e8fa9888ece3a3853f3f9` |
| 6 | `theorem` | [cof_le_cardinalMk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-le-cardinalmk--092448fec690f505c5b2b50c.md) | 66 | `result-track:092448fec690f505c5b2b50c39178f9553f4defde1170700758b37736d96f2c2` |
| 7 | `theorem` | [cof_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-eq-zero-iff--3887a2bc7e49e9cf3e63f504.md) | 69 | `result-track:3887a2bc7e49e9cf3e63f504b6496114f4f6b2f7c48f4e931ba1acb7b5eff818` |
| 8 | `theorem` | [cof_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-eq-zero--c4cfe8f9d2e3b39534186e4a.md) | 75 | `result-track:c4cfe8f9d2e3b39534186e4a4b1344989d20a557644bb333b08ada00a5ce2866` |
| 9 | `theorem` | [cof_ne_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-ne-zero-iff--5fa0bf1b50df1f2de20a05c6.md) | 78 | `result-track:5fa0bf1b50df1f2de20a05c64792e51b52579a119da6377e35dbd2ca945d4d0e` |
| 10 | `theorem` | [cof_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-ne-zero--33c48a6a75deaab8cb4128f3.md) | 82 | `result-track:33c48a6a75deaab8cb4128f3a12bf9db9dff289bf76d6fff3ff8d450434e9315` |
| 11 | `theorem` | [cof_eq_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-eq-one-iff--a5dd47c4e8bc117d1259e0c0.md) | 85 | `result-track:a5dd47c4e8bc117d1259e0c02b55f29864ccbb75f5b3580967c47d252a0edd81` |
| 12 | `theorem` | [cof_eq_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-eq-one--67d2f64fbb713e623109ef04.md) | 99 | `result-track:67d2f64fbb713e623109ef044268b15b8d95766c871a5b5c2bf145146e68f45a` |
| 13 | `theorem` | [cof_ne_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-ne-one-iff--c2b2ffb40b8a32b0d2535f4c.md) | 102 | `result-track:c2b2ffb40b8a32b0d2535f4cf9138eaafb4ca1214b80a61814c167ca744ff1dd` |
| 14 | `theorem` | [cof_ne_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-ne-one--9750cacbbe75cf2dc5dbbca3.md) | 107 | `result-track:9750cacbbe75cf2dc5dbbca3339521d6e5f787ba8126b83b52040b0d6273ffab` |
| 15 | `theorem` | [cof_le_one_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-le-one-iff--08ac376747e3016faba972f1.md) | 110 | `result-track:08ac376747e3016faba972f1e4ca5af33d626eedf3f04c128c3f9f5c25c13a85` |
| 16 | `theorem` | [one_lt_cof_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/one-lt-cof-iff--7143e967143490f62d117ce1.md) | 114 | `result-track:7143e967143490f62d117ce12ff997cb741dc67e49024792e4eedf60163359b0` |
| 17 | `theorem` | [one_lt_cof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/one-lt-cof--a7b685a367dbd62513108490.md) | 119 | `result-track:a7b685a367dbd62513108490905a227f5cc1802bb4b68b040cb6ac4a38eb79cb` |
| 18 | `theorem` | [lift_cof_congr_of_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/lift-cof-congr-of-strictmono--ca76358e72c374b8e79822bb.md) | 127 | `result-track:ca76358e72c374b8e79822bb8897ee19c434c32c5d2f6f3bd39fe010a695486b` |
| 19 | `theorem` | [cof_congr_of_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-congr-of-strictmono--838be26b5d45e2c0e4df56f9.md) | 140 | `result-track:838be26b5d45e2c0e4df56f917c27c32f01dceca89475564714cfe12cb267322` |
| 20 | `theorem` | [cof_eq_of_isCofinal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-eq-of-iscofinal--37c65b6690733dfe857134b5.md) | 144 | `result-track:37c65b6690733dfe857134b5de6734eb0ab433975b0abe60bea29a31710f6635` |
| 21 | `theorem` | [cof_lt_aleph0_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-lt-aleph0-iff--3f95908186be6925111fe619.md) | 148 | `result-track:3f95908186be6925111fe619ce8dfad65ee5e9f221985ecca94319251ae933b5` |
| 22 | `theorem` | [aleph0_le_cof_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/aleph0-le-cof-iff--a0e15adf6b44d177b9f61d58.md) | 159 | `result-track:a0e15adf6b44d177b9f61d58fcf936588eaa74863be84ed9ff4f3855785ebed3` |
| 23 | `theorem` | [aleph0_le_cof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/aleph0-le-cof--c349f3a9fa1ba98e900e1b4d.md) | 162 | `result-track:c349f3a9fa1ba98e900e1b4dd336634675613a0680f8bd615e9bb31a77e801aa` |
| 24 | `theorem` | [cof_eq_aleph0](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-eq-aleph0--027ea07fab83d1a43aa1bec7.md) | 166 | `result-track:027ea07fab83d1a43aa1bec7920697426c9b6eed13cba67b99ba9047c02c44ac` |
| 25 | `theorem` | [cof_nat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/cof-nat--9ff624557066ddfd20bd9bbe.md) | 169 | `result-track:9ff624557066ddfd20bd9bbe6bb235b7969c52abdae5bdc443f6e2281566964f` |
| 26 | `theorem` | [GaloisConnection.cof_le_lift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/galoisconnection-cof-le-lift--c282ab894e90d9abf992e021.md) | 177 | `result-track:c282ab894e90d9abf992e021794635f1ec17ee3cf6aa1cec723b2b2d9d06e117` |
| 27 | `theorem` | [GaloisConnection.cof_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/galoisconnection-cof-le--b9dd6d63f604be6bc0e5ca08.md) | 182 | `result-track:b9dd6d63f604be6bc0e5ca0899621acea98faabce5f1935205c9622c114cc12e` |
| 28 | `theorem` | [OrderIso.lift_cof_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/orderiso-lift-cof-congr--ea48dcafdb432be82f0d6832.md) | 186 | `result-track:ea48dcafdb432be82f0d683244604e45f03fdfdec0f63e87ff9c4c99e133f5cd` |
| 29 | `theorem` | [OrderIso.cof_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/orderiso-cof-congr--24bb5f2d06261afbfadf709d.md) | 192 | `result-track:24bb5f2d06261afbfadf709d38e9421a2ffda259256ab70a0ef3567e51e8b307` |
| 30 | `theorem` | [isCofinal_of_isCofinal_sUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/iscofinal-of-iscofinal-sunion--81fa3334cdf6ffb6b72b4ed4.md) | 201 | `result-track:81fa3334cdf6ffb6b72b4ed48e6a691fe407f40777b5bda123c4bfb3c7062e8a` |
| 31 | `theorem` | [isCofinal_of_isCofinal_iUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant48d48903869ba4565631f708c9c1c929e8cefb5c64d64d6680f6217b57cbdd2a.lean/declarations/iscofinal-of-iscofinal-iunion--175d3c2a83e2f7afd5ccf8d3.md) | 212 | `result-track:175d3c2a83e2f7afd5ccf8d348b32663a7766e15f5b18c20fd6700d9426f351f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
