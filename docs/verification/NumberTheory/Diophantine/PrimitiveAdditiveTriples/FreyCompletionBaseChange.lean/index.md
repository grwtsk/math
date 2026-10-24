# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionBaseChange

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b94a8842ece546e139336b7901b87ace4699846b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b94a8842ece546e139336b7901b87ace4699846b`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetBaseChange`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetBaseChange.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetCompletion`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapLimit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/maplimit--570eaacb7b33aad63415eb35.md) | 25 | `declaration-track:570eaacb7b33aad63415eb35519daa1a91fcb89e0bd2321cf09c7fdd5b95b79e` |
| 2 | `theorem` | [mapLimit_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/maplimit-projection--2a9bcbfe6b4d0fabc51accfd.md) | 37 | `result-track:2a9bcbfe6b4d0fabc51accfdc2087ebfcf953a343902a1f7e221044accf13d7d` |
| 3 | `theorem` | [mapLimit_scalar](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/maplimit-scalar--144ee70cac258c8b19e84d42.md) | 43 | `result-track:144ee70cac258c8b19e84d429d980761824764a50dc28ab9c2b19c2e99962920` |
| 4 | `theorem` | [mapLimit_id](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/maplimit-id--02e8b21cef514bc58b6708c2.md) | 51 | `result-track:02e8b21cef514bc58b6708c2338659308e4ee8c71847ed9eae6850a964701d04` |
| 5 | `theorem` | [mapLimit_comp](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/maplimit-comp--70ddd7cae249cbe7552b02ea.md) | 60 | `result-track:70ddd7cae249cbe7552b02ea30ab3c54b6518a937cd305331c65ad5dec25e951` |
| 6 | `theorem` | [seriesTrunc_map](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/seriestrunc-map--862e26df8edcae2d2904acf5.md) | 70 | `result-track:862e26df8edcae2d2904acf50495fa8186dc6db482e729a85227f99eb0b8be4d` |
| 7 | `theorem` | [completion_natural](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/completion-natural--d1d10278e93aef5931e7dce4.md) | 81 | `result-track:d1d10278e93aef5931e7dce4b0b7e1a6b1ff18a577dbaff427ff7582ba939d39` |
| 8 | `theorem` | [projection_zero_map](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/projection-zero-map--21e54192b39711fab20eeb43.md) | 99 | `result-track:21e54192b39711fab20eeb43b802fe003507ccae672ef89ce3400a7e4d8212e6` |
| 9 | `theorem` | [projection_zero_iff_of_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/projection-zero-iff-of-injective--83c6c74c1d686df7640b311d.md) | 107 | `result-track:83c6c74c1d686df7640b311d7e25904b49b36e3530f510650b885c9ae5367b0b` |
| 10 | `theorem` | [mapLimit_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/maplimit-injective--8c84bf79d17b6679bfd1e455.md) | 121 | `result-track:8c84bf79d17b6679bfd1e4557439c96f3c5330fc995df19897bcb43f28581c4c` |
| 11 | `theorem` | [residue_erases_nonzero_constant](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/residue-erases-nonzero-constant--6e34654f2047c8f90de48f21.md) | 132 | `result-track:6e34654f2047c8f90de48f213c0db2039e75befc894a9fb0d2decbd129ace0a5` |
| 12 | `def` | [orderIncreaseSource](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/orderincreasesource--d0551a098de9f1e75b1838e3.md) | 143 | `declaration-track:d0551a098de9f1e75b1838e3b3b14193b15fe5a724d27dc2a0afd2a660e2bcad` |
| 13 | `theorem` | [orderIncreaseSource_coeff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/orderincreasesource-coeff--f41cd894656b70bcc6fe0653.md) | 146 | `result-track:f41cd894656b70bcc6fe06539aacca74f8c3603a24c9762b91f1f138097f4bdc` |
| 14 | `theorem` | [orderIncreaseSource_specializes](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/orderincreasesource-specializes--69c81180ce2b3a66be43369d.md) | 152 | `result-track:69c81180ce2b3a66be43369d6fe5827222245cbb2ea0809d7492f5d1334bf333` |
| 15 | `theorem` | [residue_exact_order_increase](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/residue-exact-order-increase--e8af5bccd15e642c14da020d.md) | 159 | `result-track:e8af5bccd15e642c14da020d92f40a3992f77d76e5ecaf1108dce6c920d2ca3e` |
| 16 | `def` | [PrimitiveAdditiveTriple.freySectionCompletionMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/primitiveadditivetriple-freysectioncompletionmap--7be8592bc10efb2ddbd16e94.md) | 201 | `declaration-track:7be8592bc10efb2ddbd16e941e09ea1ccb3056179bcb60921f9fd2eeef463cd8` |
| 17 | `theorem` | [PrimitiveAdditiveTriple.freySectionCompletion_baseChange](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/declarations/primitiveadditivetriple-freysectioncompletion-basechange--2dc0ae9c001292ae747bfe65.md) | 211 | `result-track:2dc0ae9c001292ae747bfe65cea76f2d60cca90ba833eb69043ebe2050613e5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
