# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant05d557be1a5cdd6fb1799d29ff32290109ec81c5348b2d3ac55eca0899bab658

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75459538e02bb3354c2547460415033fbb02037e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant05d557be1a5cdd6fb1799d29ff32290109ec81c5348b2d3ac55eca0899bab658.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant05d557be1a5cdd6fb1799d29ff32290109ec81c5348b2d3ac55eca0899bab658.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant05d557be1a5cdd6fb1799d29ff32290109ec81c5348b2d3ac55eca0899bab658.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75459538e02bb3354c2547460415033fbb02037e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant05d557be1a5cdd6fb1799d29ff32290109ec81c5348b2d3ac55eca0899bab658.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant05d557be1a5cdd6fb1799d29ff32290109ec81c5348b2d3ac55eca0899bab658.lean.json)

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
| 1 | `def` | [iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant05d557be1a5cdd6fb1799d29ff32290109ec81c5348b2d3ac55eca0899bab658.lean/declarations/iter--f2657f9e4f05214e092bd0ed.md) | 38 | `declaration-track:f2657f9e4f05214e092bd0edbde8639339eab61c65ba2e30f95874cb82658b58` |
| 2 | `def` | [keysIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant05d557be1a5cdd6fb1799d29ff32290109ec81c5348b2d3ac55eca0899bab658.lean/declarations/keysiter--de6aeae511571326112c9ab2.md) | 54 | `declaration-track:de6aeae511571326112c9ab28ab54a9ee1e4ea9b6154328b5891400ee91efe5c` |
| 3 | `def` | [valuesIter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant05d557be1a5cdd6fb1799d29ff32290109ec81c5348b2d3ac55eca0899bab658.lean/declarations/valuesiter--b22159fd128c63323ec1325f.md) | 70 | `declaration-track:b22159fd128c63323ec1325f327f6717e9c11fe67a8356df3a541e559497a257` |
| 4 | `theorem` | [toList_iter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant05d557be1a5cdd6fb1799d29ff32290109ec81c5348b2d3ac55eca0899bab658.lean/declarations/tolist-iter--cf4316526d6e5c5c053ee221.md) | 75 | `result-track:cf4316526d6e5c5c053ee2211c30ad5aea0372cfa7e4fc904112d162b88ae8c2` |
| 5 | `theorem` | [keysIter_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant05d557be1a5cdd6fb1799d29ff32290109ec81c5348b2d3ac55eca0899bab658.lean/declarations/keysiter-tolist--40e9612c42af1df956367844.md) | 81 | `result-track:40e9612c42af1df95636784497d87f596a7c504d47689c4de5dc08892125f652` |
| 6 | `theorem` | [valuesIter_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterator/Variant05d557be1a5cdd6fb1799d29ff32290109ec81c5348b2d3ac55eca0899bab658.lean/declarations/valuesiter-tolist--335d0d12afebd05b995b25f0.md) | 87 | `result-track:335d0d12afebd05b995b25f0ff3194c4c4007333dc2d49e6d122dd67508266c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
