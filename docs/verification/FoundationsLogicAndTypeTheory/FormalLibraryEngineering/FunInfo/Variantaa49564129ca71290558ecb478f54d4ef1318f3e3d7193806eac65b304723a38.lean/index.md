# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FunInfo.Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac4ad43a71bd7e50a2617a86263f967e34a4f670",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac4ad43a71bd7e50a2617a86263f967e34a4f670`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FunInfoEnvCacheKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/declarations/funinfoenvcachekey--1141b1b7e4eda5531d6ac1d2.md) | 24 | `declaration-track:1141b1b7e4eda5531d6ac1d20a8dfb68b37d9fcd74550021a47031f38832123f` |
| 2 | `def` | [checkFunInfoCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/declarations/checkfuninfocache--b7606e8a370b3fcc1decf8e9.md) | 30 | `declaration-track:b7606e8a370b3fcc1decf8e9dcc8f910c1338baf8ea3accecc2499ca049cd46c` |
| 3 | `def` | [whenHasVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/declarations/whenhasvar--27b7c2a4e296d6b83ed11a35.md) | 49 | `declaration-track:27b7c2a4e296d6b83ed11a35b984b8db66b75064ba1325c430183d1e32fe8aff` |
| 4 | `def` | [collectDeps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/declarations/collectdeps--91a544ea33596e8bddaf4ad7.md) | 52 | `declaration-track:91a544ea33596e8bddaf4ad750a251bc6ffc3efe807c039e0a5fcbd9d8c2a967` |
| 5 | `def` | [updateHasFwdDeps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/declarations/updatehasfwddeps--4e521d011c691e1f9515380f.md) | 70 | `declaration-track:4e521d011c691e1f9515380fc7d6f336733d00c27d87d58835bc45e665d98bba` |
| 6 | `def` | [getFunInfoAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/declarations/getfuninfoaux--a420f8a6964e2b2411b1c83c.md) | 83 | `declaration-track:a420f8a6964e2b2411b1c83cb4f29e344f04d640d4b6f0101b9b3001c7262026` |
| 7 | `def` | [getFunInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/declarations/getfuninfo--e86687e588087d2933968508.md) | 145 | `declaration-track:e86687e588087d2933968508452130c589684af31ddf06312df2f685b27a2b6d` |
| 8 | `def` | [getFunInfoNArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/declarations/getfuninfonargs--9e6101ef5623f43ddef5ac06.md) | 148 | `declaration-track:9e6101ef5623f43ddef5ac0680ca553f33058b15c3c3611e6cb6712676fcb22f` |
| 9 | `def` | [FunInfo.getArity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInfo/Variantaa49564129ca71290558ecb478f54d4ef1318f3e3d7193806eac65b304723a38.lean/declarations/funinfo-getarity--b9053f25e58361d5940c6ece.md) | 151 | `declaration-track:b9053f25e58361d5940c6ece7065792296745500ac45f40eb9e0524c00608fff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
