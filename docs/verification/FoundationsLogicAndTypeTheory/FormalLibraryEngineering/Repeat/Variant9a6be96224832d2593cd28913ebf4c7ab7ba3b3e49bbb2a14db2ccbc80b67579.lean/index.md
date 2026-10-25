# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Repeat.Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a62f68d71ee2fadb3e743dae0c7d4840ba5d3b6f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a62f68d71ee2fadb3e743dae0c7d4840ba5d3b6f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Access` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.step_repeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579.lean/declarations/iter-step-repeat--f1d340ceb4686bc40c0fefbe.md) | 30 | `result-track:f1d340ceb4686bc40c0fefbea9e02a72b0a4762306cc1abf09540fba5467be49` |
| 2 | `theorem` | [Iter.atIdxSlow?_zero_repeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579.lean/declarations/iter-atidxslow-zero-repeat--eed4788a605c51d6b4c38cb9.md) | 34 | `result-track:eed4788a605c51d6b4c38cb9d78020aa540232f4d748cd1d562095167b3277e1` |
| 3 | `theorem` | [Iter.atIdxSlow?_succ_repeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579.lean/declarations/iter-atidxslow-succ-repeat--4eb88bdb35d80a89cbb8b584.md) | 38 | `result-track:4eb88bdb35d80a89cbb8b5849f01b0e7f5461dff44d1a31c6209cb049b7bb67b` |
| 4 | `theorem` | [Iter.atIdxSlow?_succ_repeat_eq_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579.lean/declarations/iter-atidxslow-succ-repeat-eq-map--e6ba98b140f603d5260aef25.md) | 42 | `result-track:e6ba98b140f603d5260aef25f4cddf88bd42f9a71f2a44c0703572ad0f96ee0d` |
| 5 | `theorem` | [Iter.atIdxSlow?_repeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579.lean/declarations/iter-atidxslow-repeat--8dd5add36b9e57e4dcb767c1.md) | 51 | `result-track:8dd5add36b9e57e4dcb767c1deae61aa25830c4cb5569f989df98fc51d6075a3` |
| 6 | `theorem` | [Iter.isSome_atIdxSlow?_repeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579.lean/declarations/iter-issome-atidxslow-repeat--2ba3993db056042494e7cef4.md) | 58 | `result-track:2ba3993db056042494e7cef46b5aa2bb11e61e72eac36bc6e6a974893eba53b0` |
| 7 | `theorem` | [Iter.toList_take_repeat_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variant9a6be96224832d2593cd28913ebf4c7ab7ba3b3e49bbb2a14db2ccbc80b67579.lean/declarations/iter-tolist-take-repeat-succ--0d6e010314e9630c7d0e8f49.md) | 63 | `result-track:0d6e010314e9630c7d0e8f49936f9144d0766fe620aac64956da9e8faade5287` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
