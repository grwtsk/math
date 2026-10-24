# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f61855959b053bdce3df2b1086478536492d1ec",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f61855959b053bdce3df2b1086478536492d1ec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NoncommProd` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/coe-list-prod--c86cf3166c8036ec57556b57.md) | 44 | `result-track:c86cf3166c8036ec57556b570102bbdf230873ca1453689ca6d11a07b4f200de` |
| 2 | `theorem` | [coe_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/coe-multiset-prod--d483cf0865a326070609e1cf.md) | 48 | `result-track:d483cf0865a326070609e1cff6b1d8d775451d9e5c6caf4448fa5035a58f2b5b` |
| 3 | `theorem` | [coe_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/coe-finset-prod--37a42246a6a2a5eeec6272dc.md) | 53 | `result-track:37a42246a6a2a5eeec6272dca381500f86e8be478f35cb99e393f78c9b9dfeea` |
| 4 | `theorem` | [list_prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/list-prod-mem--337b57e03e2b599e46e07742.md) | 63 | `result-track:337b57e03e2b599e46e07742cfe825e481760cef7f60ec2f94615b6d0692b59d` |
| 5 | `theorem` | [multiset_prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/multiset-prod-mem--4202b2fbea5d7815c3210c1c.md) | 72 | `result-track:4202b2fbea5d7815c3210c1cf0f3fef0ae437f23f77e129dc3f0bf86b94945f7` |
| 6 | `theorem` | [prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/prod-mem--ccdc1db96a03cfcc834c9dcf.md) | 83 | `result-track:ccdc1db96a03cfcc834c9dcf05643a251f73cd8b352e23d4bdfc9061b2f106cc` |
| 7 | `theorem` | [coe_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/coe-list-prod--cac4a16c670c6f31496ac485.md) | 96 | `result-track:cac4a16c670c6f31496ac48554eafb4960298c288e7c4df023984c134c6e4b9b` |
| 8 | `theorem` | [coe_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/coe-multiset-prod--deefad02c57c6b650870d661.md) | 100 | `result-track:deefad02c57c6b650870d661a67ee0a93e094d0d9faa0ebe31b2e2b9f4cefdf6` |
| 9 | `theorem` | [coe_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/coe-finset-prod--8c2047edc75e2b00f3651807.md) | 105 | `result-track:8c2047edc75e2b00f365180751a1dcda67446474956d28ba5158f23aa05a7b6c` |
| 10 | `theorem` | [list_prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/list-prod-mem--4262ec2d901c176ad0158633.md) | 111 | `result-track:4262ec2d901c176ad0158633bdcbafae76cf82a97c6a8a7c612e23779588d0b9` |
| 11 | `theorem` | [multiset_prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/multiset-prod-mem--21235ee039fdd56ae3e63d31.md) | 120 | `result-track:21235ee039fdd56ae3e63d315b09ec5dfc0de4e5ef0bbf09cf765eda0e746af5` |
| 12 | `theorem` | [multiset_noncommProd_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/multiset-noncommprod-mem--507df8b64a323bb5c593fac4.md) | 127 | `result-track:507df8b64a323bb5c593fac4ebe8f029b67c1f92c20d1bb1b8ba922996f00eaa` |
| 13 | `theorem` | [prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/prod-mem--e2abf97a4472ac3db38b78ff.md) | 138 | `result-track:e2abf97a4472ac3db38b78ff7e85c231b343167b2784bd2fe862a65a121d4f2b` |
| 14 | `theorem` | [noncommProd_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/noncommprod-mem--656dda45fa3d4a8bc01cf0d0.md) | 145 | `result-track:656dda45fa3d4a8bc01cf0d02f813efda5b9b3982f55b8b7052796412681dec4` |
| 15 | `lemma` | [mem_closure_iff_exists_finset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/mem-closure-iff-exists-finset-subset--f3fc8ac33b488479e4c471d3.md) | 159 | `result-track:f3fc8ac33b488479e4c471d3fe108c5d7c386dd2e95794f08306d0c6d608cc2a` |
| 16 | `lemma` | [mem_closure_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc.lean/declarations/mem-closure-finset--e234a760859ab234beb45473.md) | 184 | `result-track:e234a760859ab234beb454736a57ca722c8727ee4d1ecc184b2cfb620cf863fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
