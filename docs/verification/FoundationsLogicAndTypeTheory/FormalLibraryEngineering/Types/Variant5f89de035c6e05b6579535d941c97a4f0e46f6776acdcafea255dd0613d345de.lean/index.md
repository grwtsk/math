# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e55d27af69829f4a60e8ced929867d0205a68ae",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e55d27af69829f4a60e8ced929867d0205a68ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.AC.Seq` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EqCnstr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/declarations/eqcnstr--6e1e16713d7426d9a3a0cfd3.md) | 19 | `declaration-track:6e1e16713d7426d9a3a0cfd3b63d2a3d782bcd266a4e16d6036cdda3688f879c` |
| 2 | `inductive` | [EqCnstrProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/declarations/eqcnstrproof--b3e9506addf8ef2a3de918ef.md) | 25 | `declaration-track:b3e9506addf8ef2a3de918efd2536f1474128a047211e04276841b41dee1dfa5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/declarations/instance--fcd046602b23622034896e29.md) | 46 | `declaration-track:fcd046602b23622034896e2918415016fcfee754b9f6a618e88480162bf8fc8f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/declarations/instance--7bc1cf419b547fdfc5569052.md) | 49 | `declaration-track:7bc1cf419b547fdfc5569052a25318a79fa1b91f995975662f3301d10314a93d` |
| 5 | `def` | [EqCnstr.compare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/declarations/eqcnstr-compare--31b2d9c6911924a674466256.md) | 52 | `declaration-track:31b2d9c6911924a67446625670a8bcfddb55311a3ce263c5c66079ca0eb67e19` |
| 6 | `abbrev` | [Queue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/declarations/queue--9ea53ed16fa120dad22177ac.md) | 56 | `declaration-track:9ea53ed16fa120dad22177aca520aa5a06254655c32e306d4657e172c29e1269` |
| 7 | `structure` | [DiseqCnstr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/declarations/diseqcnstr--d8b8495433ae7bebbe12124e.md) | 59 | `declaration-track:d8b8495433ae7bebbe12124e8c32a91f9f7fdf501019cb2a86fc76086c7a17ca` |
| 8 | `inductive` | [DiseqCnstrProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/declarations/diseqcnstrproof--bacbf1cd96dc088497d651d8.md) | 64 | `declaration-track:bacbf1cd96dc088497d651d8395d4ee411560694307a90ce0dc31312e1255d47` |
| 9 | `structure` | [Struct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/declarations/struct--646d9a6dfa7921c8249095a7.md) | 75 | `declaration-track:646d9a6dfa7921c8249095a781fcdf785be0d5b454ddb8d2838120d5e6ab316f` |
| 10 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/declarations/state--a4df5b8890edb41dff00b791.md) | 113 | `declaration-track:a4df5b8890edb41dff00b791a396169b9bcd36c3cbef46b3838b9e682c2931a1` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant5f89de035c6e05b6579535d941c97a4f0e46f6776acdcafea255dd0613d345de.lean/declarations/builtin-initialize--b9a95bbce6f4c48366c9ba09.md) | 130 | `declaration-track:b9a95bbce6f4c48366c9ba09ee6a0e78368ba18165c5ce2951eca12ad529f6dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
