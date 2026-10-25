# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FloatLetIn.Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "231bf52cfeacaa53d0f74916accf9a9f1764ea06",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `231bf52cfeacaa53d0f74916accf9a9f1764ea06`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.PhaseExt` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Decision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/decision--8ddd3f1c9fdcf948d5e26487.md) | 30 | `declaration-track:8ddd3f1c9fdcf948d5e264872d67a4907dda897684922ce7c8779dbc41568a28` |
| 2 | `def` | [Decision.ofAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/decision-ofalt--b7cebee2969069cbd3946bd8.md) | 49 | `declaration-track:b7cebee2969069cbd3946bd831cd61d0c41608fcc97f59ffe880e32a8b44dda0` |
| 3 | `structure` | [BaseFloatContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/basefloatcontext--04b39a5167ce68baa5d965a8.md) | 56 | `declaration-track:04b39a5167ce68baa5d965a86d0d2a4618cc7cb477eb0e6eac257a550c3f6f15` |
| 4 | `structure` | [FloatState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/floatstate--6c356e72f339d2d20aaee0e5.md) | 66 | `declaration-track:6c356e72f339d2d20aaee0e5a59bc5bff478639fd8da5268e917e13778c61007` |
| 5 | `abbrev` | [BaseFloatM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/basefloatm--443effb7e4abe5f88b7c45fe.md) | 83 | `declaration-track:443effb7e4abe5f88b7c45fee5dcbed52f6f6cec26d2188dd05ad0290e0d3d03` |
| 6 | `abbrev` | [FloatM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/floatm--72a2d8379f7674bfb946ef1e.md) | 88 | `declaration-track:72a2d8379f7674bfb946ef1e0544a0c7648a37e15929339f9db5e281a0caa1e5` |
| 7 | `def` | [withNewCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/withnewcandidate--0b45a2cc599be7852fe97198.md) | 93 | `declaration-track:0b45a2cc599be7852fe9719838e765316a3fdbefcae8daa383b17045c7e96f0c` |
| 8 | `def` | [withNewScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/withnewscope--965312d011ec8db6e09a12b5.md) | 100 | `declaration-track:965312d011ec8db6e09a12b5b767634283e1514b7158c4253f04a1220cbf46ba` |
| 9 | `def` | [ignore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/ignore--cf4e4c866147dc2b1a08a253.md) | 109 | `declaration-track:cf4e4c866147dc2b1a08a25332d6db7ab578fc04744f11690cec30b28e181d63` |
| 10 | `def` | [initialDecisions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/initialdecisions--77efa20b93e29c70829fa6d3.md) | 128 | `declaration-track:77efa20b93e29c70829fa6d3335a3a601b0459d989096efb02093cdc512802b3` |
| 11 | `def` | [initialNewArms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/initialnewarms--3e6dcbacac85827157204d00.md) | 193 | `declaration-track:3e6dcbacac85827157204d004803fddd6dc9a5907002ee45c18e9a2512d4cba7` |
| 12 | `def` | [dontFloat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/dontfloat--41421df6a10c8f9b0beb610e.md) | 214 | `declaration-track:41421df6a10c8f9b0beb610e8f04e4d45e655c2107a3e2036f6e14e43a4ea08f` |
| 13 | `def` | [float](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/float--536960c7b03c634cb424845c.md) | 268 | `declaration-track:536960c7b03c634cb424845c891b909367e946feddfe6deff46eac014e75e094` |
| 14 | `def` | [floatLetIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/floatletin--30aa8a2cd494d494effef94c.md) | 284 | `declaration-track:30aa8a2cd494d494effef94c1a7dd3a59a59bce16578a23c26a6b45f7a150fdd` |
| 15 | `def` | [Decl.floatLetIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/decl-floatletin--3974855e921602bc8dd03faa.md) | 345 | `declaration-track:3974855e921602bc8dd03faaa45aad0eb00d70a79b30f3c9c8c8ba57ae878fec` |
| 16 | `def` | [floatLetIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/floatletin--9554770815555f3f8f9a8b81.md) | 348 | `declaration-track:9554770815555f3f8f9a8b81a5059814684f3bffe9b350b615b36c8003a3b9ec` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variantfbafb3063f043470bc7b28f2d5e3a4d46804f55d01a613e33dad7d1b82722a11.lean/declarations/builtin-initialize--95ea03bb2846f8c40a921522.md) | 352 | `declaration-track:95ea03bb2846f8c40a921522a561d81547dcc4cf1949bd3ab01fc713a3cb1973` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
