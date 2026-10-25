# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variantba7a3e86b0827b21a006f4bdf9d7aee5cf53ddcf54ece6002f0c54927c93fd1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eebc76ef3bbd3670acb33d61bad6d0d556106e9f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantba7a3e86b0827b21a006f4bdf9d7aee5cf53ddcf54ece6002f0c54927c93fd1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantba7a3e86b0827b21a006f4bdf9d7aee5cf53ddcf54ece6002f0c54927c93fd1f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantba7a3e86b0827b21a006f4bdf9d7aee5cf53ddcf54ece6002f0c54927c93fd1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eebc76ef3bbd3670acb33d61bad6d0d556106e9f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantba7a3e86b0827b21a006f4bdf9d7aee5cf53ddcf54ece6002f0c54927c93fd1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantba7a3e86b0827b21a006f4bdf9d7aee5cf53ddcf54ece6002f0c54927c93fd1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators.FilterMap` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantba7a3e86b0827b21a006f4bdf9d7aee5cf53ddcf54ece6002f0c54927c93fd1f.lean/declarations/iter--0bdb834566e127701f195a7a.md) | 38 | `declaration-track:0bdb834566e127701f195a7ad797ff0e11f492608bd57f9db20ac24e0d6a23c0` |
| 2 | `def` | [keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantba7a3e86b0827b21a006f4bdf9d7aee5cf53ddcf54ece6002f0c54927c93fd1f.lean/declarations/keysiter--6f75cab25fd9575f7addd118.md) | 54 | `declaration-track:6f75cab25fd9575f7addd11825ba6c1ef6cf60c46cc42110f601677a224b6d39` |
| 3 | `def` | [valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantba7a3e86b0827b21a006f4bdf9d7aee5cf53ddcf54ece6002f0c54927c93fd1f.lean/declarations/valuesiter--2df1e4c3a0a1fbb88fcc1941.md) | 70 | `declaration-track:2df1e4c3a0a1fbb88fcc19410a4033f88d54982920ccdc017c31fd3f553ae3b5` |
| 4 | `theorem` | [toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantba7a3e86b0827b21a006f4bdf9d7aee5cf53ddcf54ece6002f0c54927c93fd1f.lean/declarations/tolist-iter--fb6ba7daf652dfd3f7548764.md) | 75 | `result-track:fb6ba7daf652dfd3f75487645442c826fa3812b97470697cfc0d6ea6992e0dfd` |
| 5 | `theorem` | [keysIter_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantba7a3e86b0827b21a006f4bdf9d7aee5cf53ddcf54ece6002f0c54927c93fd1f.lean/declarations/keysiter-tolist--d106a5059bd186439c5c3f99.md) | 83 | `result-track:d106a5059bd186439c5c3f99480b42667519d1ab8c4ee7fa5d9fdf9cd1edd044` |
| 6 | `theorem` | [valuesIter_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variantba7a3e86b0827b21a006f4bdf9d7aee5cf53ddcf54ece6002f0c54927c93fd1f.lean/declarations/valuesiter-tolist--91facc90f5444a2b4455f1e0.md) | 88 | `result-track:91facc90f5444a2b4455f1e05f1913df346acb3ea35a28c3aaa51adfc8a62ddb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
