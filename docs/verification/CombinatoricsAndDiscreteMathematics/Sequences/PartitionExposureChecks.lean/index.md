# Verification target: GRWTSK.Combinatorics.Sequences.PartitionExposureChecks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b354adc673c15423a4e5b3b43daa8fe2fe8b40f2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/PartitionExposureChecks.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b354adc673c15423a4e5b3b43daa8fe2fe8b40f2`.

Source path: `GRWTSK/Combinatorics/Sequences/PartitionExposureChecks.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/PartitionExposureChecks.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.Sequences.ConditionalPartitionExposure`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/ConditionalPartitionExposure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.HypergeometricLowerTail`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/HypergeometricLowerTail.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [twoSubsetSpace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/twosubsetspace--daed662a6ad8a46035c8395c.md) | 23 | `declaration-track:daed662a6ad8a46035c8395c4ff646d5ebcf61fd4b1be0563d83d30eb0948907` |
| 2 | `theorem` | [twoSubsetSpace_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/twosubsetspace-card--790adb5edfdb1e792764fa57.md) | 25 | `result-track:790adb5edfdb1e792764fa5770fe4b4bec9e8f8558e3f1811fdc88cf7686caff` |
| 3 | `theorem` | [single_membership_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/single-membership-count--8db52a0682b8ec4f19537725.md) | 27 | `result-track:8db52a0682b8ec4f19537725f7955aadfa04e182f49d798f4abb965e2fd9df60` |
| 4 | `theorem` | [other_membership_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/other-membership-count--10d98ca6a67736876254be53.md) | 30 | `result-track:10d98ca6a67736876254be539bf59e5a136be905cbb746c8eb53a2a1bd21a982` |
| 5 | `theorem` | [joint_membership_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/joint-membership-count--56520ee8932c510b6ab0a7ac.md) | 33 | `result-track:56520ee8932c510b6ab0a7ac7a138adf4635ceaaafecbee06aaa424252f4ffa4` |
| 6 | `theorem` | [fixed_size_membership_not_independent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/fixed-size-membership-not-independent--e803c6920ff7066e6913c4f7.md) | 38 | `result-track:e803c6920ff7066e6913c4f75f9248f3b8aa10a0fb0fac7a0bebc22e48bd7e54` |
| 7 | `theorem` | [exponential_moment_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/exponential-moment-count--a4ccdabf60147a9bbd114795.md) | 46 | `result-track:a4ccdabf60147a9bbd1147950e96699f9a987c8b5979e1978178e54b9c6160aa` |
| 8 | `theorem` | [exponential_moment_not_binomial_equality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/exponential-moment-not-binomial-equality--ec25318101df381e34e66e50.md) | 51 | `result-track:ec25318101df381e34e66e502101803d3cc635a37d87b6dcd040b52ad007daa4` |
| 9 | `theorem` | [zero_success_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/zero-success-count--fbc358a678d17aaef06cf354.md) | 61 | `result-track:fbc358a678d17aaef06cf354f5abf4ba0e46203a9e3833603c2ab2336435f643` |
| 10 | `theorem` | [quarter_lower_tail_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/quarter-lower-tail-exact--028cbb41006e267289365138.md) | 66 | `result-track:028cbb41006e267289365138438cecf9d12ab0e83e59622d40a08a44492481a6` |
| 11 | `theorem` | [quarter_lower_tail_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/quarter-lower-tail-bound--1e64314628a7872140864aec.md) | 88 | `result-track:1e64314628a7872140864aecf8cc0cdd98edc205d87cf0341a33d09bb67eaed3` |
| 12 | `theorem` | [three_quarter_lower_tail_exact](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/three-quarter-lower-tail-exact--13019cfc577f36a7a356f655.md) | 95 | `result-track:13019cfc577f36a7a356f655ae31595c5a5c0550aa7082ef9b2a581ecd40925a` |
| 13 | `theorem` | [quarter_bound_without_density_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/quarter-bound-without-density-false--91c0d514bbf1a2c41d54bf2f.md) | 121 | `result-track:91c0d514bbf1a2c41d54bf2f97b5a5c125753455523bb2e0dc825092ca99d190` |
| 14 | `def` | [pairPartSizes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/pairpartsizes--19603f9ed81d6b7ac4be9bfd.md) | 131 | `declaration-track:19603f9ed81d6b7ac4be9bfd192fca302cf2307c5abfd0e6c16fdfac838fb447` |
| 15 | `theorem` | [pairPartSizes_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/pairpartsizes-sum--b54bcdd450afd5270cdc4911.md) | 133 | `result-track:b54bcdd450afd5270cdc4911e182b45a994032a210bf9181aaac81c27b21363d` |
| 16 | `theorem` | [conditional_partner_probability](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/conditional-partner-probability--271d6fe42eaea868e0e5ed20.md) | 137 | `result-track:271d6fe42eaea868e0e5ed20cca4a583bd29c6562c9be47c96b945dfacdc709d` |
| 17 | `theorem` | [unconditional_remainder_size_false](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/PartitionExposureChecks.lean/declarations/unconditional-remainder-size-false--4636ae1e3c86213c7b592a25.md) | 161 | `result-track:4636ae1e3c86213c7b592a2596136dd26f24a54df110958c50cbac43b489d60c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
