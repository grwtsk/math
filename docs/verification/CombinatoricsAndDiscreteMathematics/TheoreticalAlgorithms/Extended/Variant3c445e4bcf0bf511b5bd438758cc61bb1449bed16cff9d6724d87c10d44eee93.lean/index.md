# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Extended.Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3407862e03ef0fb006b96323c7e78f6fa603fa2e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3407862e03ef0fb006b96323c7e78f6fa603fa2e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.IntervalReal` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Expr` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExtendedInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/extendedinterval--d0c4323d9065dd1c221ea82b.md) | 65 | `declaration-track:d0c4323d9065dd1c221ea82bf2d26891446252a1b795602f3a16c66a9ca131db` |
| 2 | `def` | [singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/singleton--c6803bb93930e9df6f7dc53e.md) | 74 | `declaration-track:c6803bb93930e9df6f7dc53e8aae12857503d51d07b677fdb5815b9464045d02` |
| 3 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/empty--94b78c12ca68a71ff7808fd1.md) | 77 | `declaration-track:94b78c12ca68a71ff7808fd14c351076727400d39cd0819f431672907eb78859` |
| 4 | `def` | [whole](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/whole--a1c09798fb457ab984e57c7c.md) | 80 | `declaration-track:a1c09798fb457ab984e57c7cd055c2c5947726bd9e9faafa6726154275d7904e` |
| 5 | `def` | [isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/isempty--3a8719e52017c612b03ef9c5.md) | 84 | `declaration-track:3a8719e52017c612b03ef9c5a08fe97ae0c41b691309c854dfab37dcc70ae86c` |
| 6 | `def` | [numParts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/numparts--383030046d172c4209a17aad.md) | 87 | `declaration-track:383030046d172c4209a17aadd5cb7d648adf263fc69c589d76c6e38f27e767c0` |
| 7 | `def` | [hull?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/hull--f725e41caaa189d07d1aa577.md) | 91 | `declaration-track:f725e41caaa189d07d1aa57778c0133040215ba9519c451c2f529923dd3b9c8d` |
| 8 | `def` | [hull](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/hull--cbe68a08b8f80dce58d57698.md) | 100 | `declaration-track:cbe68a08b8f80dce58d57698d170b36182b613587502a0d35673910d9f06792f` |
| 9 | `def` | [mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/mem--bb1b203645f80523e11ca133.md) | 104 | `declaration-track:bb1b203645f80523e11ca13381a39230912580efd226442125ef8cef82c7f158` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/instance--ea1dcd47d8a46eb9b97e48c2.md) | 107 | `declaration-track:ea1dcd47d8a46eb9b97e48c2c486bd1344ca956c06caf16d5db339f87e019e0e` |
| 11 | `theorem` | [mem_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/mem-def--597283c53df4b2c1448ca0a6.md) | 110 | `result-track:597283c53df4b2c1448ca0a65b38820c0d9f0c7ef1cd78301b7df11f2851dec0` |
| 12 | `theorem` | [mem_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/mem-singleton--0aa395ea2f7ff4b901d08229.md) | 113 | `result-track:0aa395ea2f7ff4b901d082297bdcfb1482a4363a003a7810e7f3a47f465536f3` |
| 13 | `theorem` | [foldl_contains_head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/foldl-contains-head--8ed07d7ed0a4e4a95e6c0d7b.md) | 125 | `result-track:8ed07d7ed0a4e4a95e6c0d7bbe95b2e6c1d30cc8dd992865b13f1675689ff163` |
| 14 | `theorem` | [foldl_contains_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/foldl-contains-tail--8181d38c695136ed11884a12.md) | 145 | `result-track:8181d38c695136ed11884a1283c9e7088b7565d142d7914b151116f9112e912a` |
| 15 | `theorem` | [mem_hull](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/mem-hull--f21c24ac8b4aafb14aa0e4da.md) | 173 | `result-track:f21c24ac8b4aafb14aa0e4da395b000239add121c8916c4a64c1f09172274edf` |
| 16 | `def` | [defaultLargeBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/defaultlargebound--2ad5fea96df7b8e8c2592098.md) | 208 | `declaration-track:2ad5fea96df7b8e8c2592098633ab3e89bf1169079079a8cfc943410a24c9ec7` |
| 17 | `theorem` | [defaultLargeBound_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/defaultlargebound-pos--56b34028370fece3f69230bc.md) | 211 | `result-track:56b34028370fece3f69230bc09206d9049402676fb6d96d2d433df6e7b3cd46c` |
| 18 | `def` | [mkSafeInterval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/mksafeinterval--2f5715f74269144a71cb356d.md) | 216 | `declaration-track:2f5715f74269144a71cb356d984230333e8f25988181727c1cfa0e18d393f8ea` |
| 19 | `theorem` | [mem_mkSafeInterval_of_le_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/mem-mksafeinterval-of-le-le--54dd4392f4636068ecfe3460.md) | 219 | `result-track:54dd4392f4636068ecfe346035d481a1a02e38bee46ad427075eb36dccc0a4f9` |
| 20 | `def` | [invExtended](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/invextended--740e985df617acf11010606b.md) | 238 | `declaration-track:740e985df617acf11010606b52d733b51b164fbbad077555064b041fb33a6de2` |
| 21 | `theorem` | [mem_invExtended](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/mem-invextended--87fdb899addfdc707c97bea9.md) | 273 | `result-track:87fdb899addfdc707c97bea9b4cf1d213ab608e16a480c980c5ca0efbc15e5af` |
| 22 | `def` | [liftUnary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/liftunary--1290545515ca03217559a8ec.md) | 383 | `declaration-track:1290545515ca03217559a8ecd4c81aa663cd440590a257eca860adefd52db2db` |
| 23 | `theorem` | [mem_liftUnary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/mem-liftunary--c5221011002e5f5590040f31.md) | 387 | `result-track:c5221011002e5f5590040f3120be38560fe9dcd014c5418a862a3f7430964c7c` |
| 24 | `def` | [liftBinary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/liftbinary--adc2ef420116472bca65807c.md) | 396 | `declaration-track:adc2ef420116472bca65807cb3da63cde318511ca654ffd120df161dece58bcc` |
| 25 | `theorem` | [mem_liftBinary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/mem-liftbinary--eb2b5d986b620bb04e072d4a.md) | 401 | `result-track:eb2b5d986b620bb04e072d4a4ba27d9a16ffdc5db7a8bf432579244d2039d436` |
| 26 | `structure` | [ExtendedConfig](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/extendedconfig--c028c1cd999db91ffe0a84ee.md) | 415 | `declaration-track:c028c1cd999db91ffe0a84eeed2dc2445c0dad183cd0947dd07ce333cb4e0895` |
| 27 | `abbrev` | [ExtendedEnv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/extendedenv--ea3424a57c55668cff079db1.md) | 423 | `declaration-track:ea3424a57c55668cff079db1b34acbff90cc3dbc274ceb412875850cc64cf5fc` |
| 28 | `def` | [extendEnv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/extendenv--d4d6d5ea61dac1f7b8a15d37.md) | 426 | `declaration-track:d4d6d5ea61dac1f7b8a15d3787620ee0eb24ced335ec081fa24e1c3c7d2db570` |
| 29 | `def` | [evalExtended](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/evalextended--678c390148a12919dee91b2c.md) | 438 | `declaration-track:678c390148a12919dee91b2c60067ee8cbc1f92556fd9b78da5f06c240d26b50` |
| 30 | `def` | [evalExtended1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/evalextended1--cec8a791ed03c95637e20522.md) | 496 | `declaration-track:cec8a791ed03c95637e20522bd446544af68e019eb0383254b3476d5740d7ce8` |
| 31 | `def` | [evalExtendedHull](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/evalextendedhull--f52f2251bbd5fa15da7ad338.md) | 500 | `declaration-track:f52f2251bbd5fa15da7ad33816b7f9c3cad6429bf10867b7731030297ea05f34` |
| 32 | `def` | [extendedEnvMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/extendedenvmem--5c8cadbad5f347b98de9b7ad.md) | 506 | `declaration-track:5c8cadbad5f347b98de9b7adf0649f541d33eb9de97828653d55d2153fa9043a` |
| 33 | `def` | [evalDomainValidExtended](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/evaldomainvalidextended--79694dc3658c86b846c2640b.md) | 512 | `declaration-track:79694dc3658c86b846c2640b811af2e4d572ace7d93dde65fa7b3c165379163f` |
| 34 | `theorem` | [evalDomainValidExtended_of_ExprSupported](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/evaldomainvalidextended-of-exprsupported--9b2f59bb5fa2a281b1a3e418.md) | 536 | `result-track:9b2f59bb5fa2a281b1a3e418f5e4f549b038ccdff41e1b64312d261dbdc9eb40` |
| 35 | `theorem` | [evalExtended_correct_core](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/evalextended-correct-core--d2ad140a6a68b418f2546fc6.md) | 553 | `result-track:d2ad140a6a68b418f2546fc6b4d18e2f44b632e729a87532fbfbd0a2434909db` |
| 36 | `theorem` | [mem_evalExtendedHull_of_mem_evalExtended](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Extended/Variant3c445e4bcf0bf511b5bd438758cc61bb1449bed16cff9d6724d87c10d44eee93.lean/declarations/mem-evalextendedhull-of-mem-evalextended--e1d290429b708fadf71ddebe.md) | 675 | `result-track:e1d290429b708fadf71ddebef627fe44444237d2cbd9972721764a23584295f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
