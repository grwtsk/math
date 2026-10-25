# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Promise.Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dc359470d30a210ae30376a2a9be9f4a66ad0f6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dc359470d30a210ae30376a2a9be9f4a66ad0f6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean.json)

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
| 1 | `opaque` | [PromisePointed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/declarations/promisepointed--4237dfe9f881f1c0ea715ddf.md) | 25 | `declaration-track:4237dfe9f881f1c0ea715ddfacd60e528b19308029545e6bc66efd2517e0bcd4` |
| 2 | `structure` | [Promise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/declarations/promise--e43ff9eb6a136f11e21fd0d8.md) | 40 | `declaration-track:e43ff9eb6a136f11e21fd0d834e10a2473bb7cee8296e43fd2f27e7e36e61d15` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/declarations/instance--eba0c136533585ed4b21fc28.md) | 44 | `declaration-track:eba0c136533585ed4b21fc287ecd3294ee078d765c0fe53fec6da46c1d4d4a21` |
| 4 | `opaque` | [Promise.new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/declarations/promise-new--6710257cd2f5f84d09e3b473.md) | 49 | `declaration-track:6710257cd2f5f84d09e3b4737e735ab27f338d3265e3a8662dcc3d7006744a70` |
| 5 | `opaque` | [Promise.resolve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/declarations/promise-resolve--9a744c6c239079b40905ad09.md) | 57 | `declaration-track:9a744c6c239079b40905ad0990bf52a93717c82a6f74b2599583befba4e07353` |
| 6 | `opaque` | [Promise.result?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/declarations/promise-result--c96b600a178c0a109df0b893.md) | 63 | `declaration-track:c96b600a178c0a109df0b89378f282b741ef25d0326f12773f3dc55f9890e234` |
| 7 | `opaque` | [Option.getOrBlock!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/declarations/option-getorblock--45a659f6410012b3b646f94d.md) | 67 | `declaration-track:45a659f6410012b3b646f94de540c87e5b1f2f9d7941a20e41ff7032fa3728c8` |
| 8 | `def` | [Promise.result!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/declarations/promise-result--a1c8b8c305ad294bb9beedaa.md) | 78 | `declaration-track:a1c8b8c305ad294bb9beedaad897bb540e37f32444447da031ffe801ee0fdc8a` |
| 9 | `def` | [Promise.resultD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/declarations/promise-resultd--85832a247bfb5f5cb25af6a3.md) | 85 | `declaration-track:85832a247bfb5f5cb25af6a33fc8d408249ec4362ec60d3e1cf239a48991e9e1` |
| 10 | `def` | [Promise.isResolved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Promise/Variant5d1721fda08eaebe6f3ef20b189417fd00f992b75878f221f0ac7c96bc243933.lean/declarations/promise-isresolved--fbd3214d153786bf19261396.md) | 92 | `declaration-track:fbd3214d153786bf19261396e1ece81b0d2a35199bad8a7d4d9101dbb73874c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
