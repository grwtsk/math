# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "127293c921ad886094b4b03d00a18ecf18daf452",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `127293c921ad886094b4b03d00a18ecf18daf452`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.AST.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SomeBinaryLogicMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/somebinarylogicmatrix--b0b84e6e6ca82fbe094c327d.md) | 10 | `declaration-track:b0b84e6e6ca82fbe094c327dbafb62cff86d020c0486da9c662a1074f6202187` |
| 2 | `def` | [bitNot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/bitnot--b906d0bdce5f63e2bcecd82f.md) | 15 | `declaration-track:b906d0bdce5f63e2bcecd82f842954b6fe03cd0b345b1cfd369cbb44b9588b3a` |
| 3 | `def` | [xorBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/xorbit--3d5dad94b4b9d40b6841249a.md) | 18 | `declaration-track:3d5dad94b4b9d40b6841249a31df4c1436736feac4f66dc0204d6fa36d72c49f` |
| 4 | `def` | [xorWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/xorword--f1a7eabaffbd195a84b658ed.md) | 21 | `declaration-track:f1a7eabaffbd195a84b658ed05683b61940dc76250221cd25103ac760bcf269d` |
| 5 | `def` | [repeatWord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/repeatword--b2c6b1acccb21bc81ed71504.md) | 26 | `declaration-track:b2c6b1acccb21bc81ed715047f864cea72ef90cf04862027ec092e9a9d37ff82` |
| 6 | `def` | [word010](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/word010--c19db8d30cb117cc5e6ba508.md) | 31 | `declaration-track:c19db8d30cb117cc5e6ba50873c5b3b1caf06cd45329184cb3267d162f50ead7` |
| 7 | `def` | [word0110](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/word0110--4c5c5123352d2e0751f6844d.md) | 34 | `declaration-track:4c5c5123352d2e0751f6844d0a85c0bf402f6df07ba5cea8af3323ba1a64d64b` |
| 8 | `def` | [word1001](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/word1001--ed3c0037e4db24ecbc914ad7.md) | 37 | `declaration-track:ed3c0037e4db24ecbc914ad702eba37740233ed68fe63a5910dbfc06051b127d` |
| 9 | `def` | [word01](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/word01--508cac0ef958a6efd976cbe7.md) | 40 | `declaration-track:508cac0ef958a6efd976cbe7790ffeead21edd4057981083152d2a0a3f449c2b` |
| 10 | `def` | [word10](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/word10--899685f8f1e3354cc2c202af.md) | 43 | `declaration-track:899685f8f1e3354cc2c202afc5d9becce64aafd782f0015f22ad97dc2f1513ed` |
| 11 | `theorem` | [split0110_reverse_symmetric](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/split0110-reverse-symmetric--9e449b693359a626cd869a51.md) | 46 | `result-track:9e449b693359a626cd869a51206a27f81cc946d4840f18415cdb1874f67a5e98` |
| 12 | `theorem` | [split0110_inverts_to_1001](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/split0110-inverts-to-1001--88053925aec6a99826b67c3b.md) | 50 | `result-track:88053925aec6a99826b67c3b958e6fe9d21ff993c0390f1414fb9dbb43f8e6dc` |
| 13 | `theorem` | [originalWord_eq_010](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/originalword-eq-010--ab16708f1e26a80ecbd28e5b.md) | 54 | `result-track:ab16708f1e26a80ecbd28e5b75e46e2ffcb31e22d668ef37fcf413d4b113c48d` |
| 14 | `theorem` | [splitWord_eq_0110](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/splitword-eq-0110--efb9e9b6f98f06ada3edb173.md) | 58 | `result-track:efb9e9b6f98f06ada3edb173292eda74c7659fabba03134bb0d8ab6c8910bf1c` |
| 15 | `theorem` | [someBinaryLogicMatrix_has_matrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant6d5aa7c1b86c86db1d19debd08ab000cdfa07da54e55dfeb76818be9dd5e41ee.lean/declarations/somebinarylogicmatrix-has-matrix--7a19adbc224ee4cc75c285f6.md) | 62 | `result-track:7a19adbc224ee4cc75c285f646481567a047f9be87e715db707c3d82270eb107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
