# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagatorAttr.Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77e0ab069bf9277ead3008e315199e06addd09d0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77e0ab069bf9277ead3008e315199e06addd09d0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PropagatorMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/declarations/propagatormap--4a8c11655898cbdf85c1b900.md) | 13 | `declaration-track:4a8c11655898cbdf85c1b900fb2798b8867b5e65d58438cb7a769bcef3499fda` |
| 2 | `def` | [PropagatorMap.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/declarations/propagatormap-insert--b03acfda9e4df2e6bf8bd4e1.md) | 15 | `declaration-track:b03acfda9e4df2e6bf8bd4e1b867c97022e10e06e67f806d932ec49c8ade0400` |
| 3 | `structure` | [BuiltinPropagators](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/declarations/builtinpropagators--6aeea4f311a04a3734dec6fb.md) | 20 | `declaration-track:6aeea4f311a04a3734dec6fbc6f5b1d96f744937ae41f5c07df60d87351633c1` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/declarations/builtin-initialize--a12a7e50a893b51509fde3cc.md) | 25 | `declaration-track:a12a7e50a893b51509fde3ccacacb93e0b1d48a8b10705cc987c8af3dd084fd1` |
| 5 | `def` | [registerBuiltinPropagatorCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/declarations/registerbuiltinpropagatorcore--5c072b7ea432ae126948959e.md) | 27 | `declaration-track:5c072b7ea432ae126948959e8665b634d5034351248cb95b54fa975150e4828f` |
| 6 | `def` | [registerBuiltinUpwardPropagator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/declarations/registerbuiltinupwardpropagator--25537a6f3e844b716a76eaf8.md) | 35 | `declaration-track:25537a6f3e844b716a76eaf88e3d02e1ae7d5b3bc212411d0baef9494aa3b444` |
| 7 | `def` | [registerBuiltinDownwardPropagator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/declarations/registerbuiltindownwardpropagator--95295ad9e54b0f7282957a96.md) | 38 | `declaration-track:95295ad9e54b0f7282957a96b738522b0d9f5e3ab8b07bca2adaad3f076576b2` |
| 8 | `def` | [addBuiltin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/declarations/addbuiltin--8cd9d26ed50be0999b93ce1c.md) | 41 | `declaration-track:8cd9d26ed50be0999b93ce1c71fe8b0b313af3de923da20f89e1928758b5cd2a` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagatorAttr/Variant4bbb6cfe835ce2fd3ef767714c18a6773a91664e3d86d14247e770de4f32e9eb.lean/declarations/builtin-initialize--cd7e33ace9f93e6bd3c67b81.md) | 57 | `declaration-track:cd7e33ace9f93e6bd3c67b8121d7b09d3e446fa31ba858496a99869a4939a7d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
