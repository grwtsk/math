# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DropWhile.Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce8f532852b5e10e630a429e994839aae45b37c4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce8f532852b5e10e630a429e994839aae45b37c4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Iterators.Types.DropWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/declarations/iterators-types-dropwhile--3ee085e11da7dd9b47fce1be.md) | 50 | `declaration-track:3ee085e11da7dd9b47fce1be9b356fd1d6412abac9c3f7dc4edc34b2175c67f0` |
| 2 | `def` | [IterM.Intermediate.dropWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/declarations/iterm-intermediate-dropwhilewithpostcondition--9250c0be45b6389f18dab138.md) | 68 | `declaration-track:9250c0be45b6389f18dab138353e2d401143cdd6ad4b106a389b546eb4d3e0e4` |
| 3 | `def` | [IterM.Intermediate.dropWhileM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/declarations/iterm-intermediate-dropwhilem--71aae6e64ca716ce95accd90.md) | 80 | `declaration-track:71aae6e64ca716ce95accd9001780d4c7176d9e30e32d81dd074ac35b6f306d4` |
| 4 | `def` | [IterM.Intermediate.dropWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/declarations/iterm-intermediate-dropwhile--dd45bab2e183ba47e83b9a30.md) | 92 | `declaration-track:dd45bab2e183ba47e83b9a306c6b625bdb51be26dfb5df9eaf35e81b83d9217f` |
| 5 | `def` | [IterM.dropWhileWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/declarations/iterm-dropwhilewithpostcondition--6746592c1b188a18fff38c64.md) | 135 | `declaration-track:6746592c1b188a18fff38c64c445d4295f0faefd710bd57426bc4c3af2b54a43` |
| 6 | `def` | [IterM.dropWhileM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/declarations/iterm-dropwhilem--922f9ec25df4b3fa35e0a755.md) | 171 | `declaration-track:922f9ec25df4b3fa35e0a755e1c039aa23cb773cc4c1f3c0f40847c44530c8bc` |
| 7 | `def` | [IterM.dropWhile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/declarations/iterm-dropwhile--2383f31ad03cefb5bc7aa07d.md) | 204 | `declaration-track:2383f31ad03cefb5bc7aa07db1c2eed8076f0364dd7b722a590253bf75a15686` |
| 8 | `inductive` | [DropWhile.PlausibleStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/declarations/dropwhile-plausiblestep--c2072bb06b0f80aa9c82a7b7.md) | 214 | `declaration-track:c2072bb06b0f80aa9c82a7b74578676b74b12865089ca79c77a0d9a17feae14b` |
| 9 | `instance` | [DropWhile.instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/declarations/dropwhile-institerator--9064203ce96230378a096652.md) | 230 | `declaration-track:9064203ce96230378a09665233ba3a76b710016d1897d06b2f177537506734ce` |
| 10 | `def` | [DropWhile.instFinitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/declarations/dropwhile-instfinitenessrelation--d4ef8758b3d6ba46239f9446.md) | 250 | `declaration-track:d4ef8758b3d6ba46239f94466d8f6e6e679a92167569db11be9807127e8f16df` |
| 11 | `instance` | [DropWhile.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/declarations/dropwhile-instfinite--81f099d48ab72fbba8fc3dc9.md) | 276 | `declaration-track:81f099d48ab72fbba8fc3dc93ad1cb564fed603239ab5ade8c6bce82b321cde4` |
| 12 | `instance` | [DropWhile.instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DropWhile/Variant3f5bc71bf246ec37a490df7449a107d397529a29b2c7c50456fb3af9079ed77f.lean/declarations/dropwhile-institeratorloop--91273beefb95ed75a2acfd22.md) | 280 | `declaration-track:91273beefb95ed75a2acfd22e3cf4f4b47819a9ef4777993fc6055f5aeb3d7b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
