# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpM.Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4166d7e56bcfa2bbd96b64d140c393747ae7f52",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4166d7e56bcfa2bbd96b64d140c393747ae7f52`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean.json)

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
| 1 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/config--e937c05e50b941f7aba9379f.md) | 101 | `declaration-track:e937c05e50b941f7aba9379fcbdb927949134082fe618cffd43f45175a5a55cb` |
| 2 | `inductive` | [Result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/result--4383d71cb845e63626d58afb.md) | 162 | `declaration-track:4383d71cb845e63626d58afbac8f27a0157e1a8eb997bcd5321ff939487f5bdf` |
| 3 | `def` | [mkRflResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/mkrflresult--8007f04ee0f6ee4cc2b08c83.md) | 175 | `declaration-track:8007f04ee0f6ee4cc2b08c83d05ceb371c9ff15ea7d58dd416bba68d3f8276aa` |
| 4 | `def` | [mkRflResultCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/mkrflresultcd--bc8e0403682751be37cf6559.md) | 183 | `declaration-track:bc8e0403682751be37cf6559ffab3ed81fdff55740455a6a30f11014103198df` |
| 5 | `abbrev` | [Result.isContextDependent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/result-iscontextdependent--dc3c12a604d8b6e6fe35d79a.md) | 187 | `declaration-track:dc3c12a604d8b6e6fe35d79a7a61bd292e1c2d74774e4bd4cf9301ffd68a2a0b` |
| 6 | `def` | [Result.withContextDependent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/result-withcontextdependent--0227856666b5a2b021e91660.md) | 191 | `declaration-track:0227856666b5a2b021e91660d67c4fd57368b9a8a19171745ef2067d875e9e9e` |
| 7 | `opaque` | [MethodsRefPointed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/methodsrefpointed--f3135753cccf2b82f45b5d99.md) | 195 | `declaration-track:f3135753cccf2b82f45b5d991409978b5a1bd0e34a4f96faf8e0c21ddcd2374f` |
| 8 | `def` | [MethodsRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/methodsref--a8528f46e7463fc3b0b62971.md) | 196 | `declaration-track:a8528f46e7463fc3b0b62971e0fe6762df435244a300c72f4a246256ecac8907` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/instance--10b0653559477dc6b0699df1.md) | 197 | `declaration-track:10b0653559477dc6b0699df18250fc316eb2c109f5505802b23edeabc951fba9` |
| 10 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/context--6687c04b33cbd5788796e28f.md) | 200 | `declaration-track:6687c04b33cbd5788796e28f836d97a560ffc602b672d77e338c6077617bcafd` |
| 11 | `abbrev` | [Cache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/cache--6d5b476d91f1d35abecc6fc7.md) | 209 | `declaration-track:6d5b476d91f1d35abecc6fc7e33e3745ebf0548f9f98cb4f7c51d777926ddf2b` |
| 12 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/state--e785c980e5b7d30d9e84b69e.md) | 212 | `declaration-track:e785c980e5b7d30d9e84b69eae124f31942a5ddda5acdfbf29f522ed41147fa9` |
| 13 | `abbrev` | [SimpM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/simpm--6da35b8ae536ac2459635f60.md) | 229 | `declaration-track:6da35b8ae536ac2459635f60f66daf2d77545a4ace775f752b4e75b4ed6fde44` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/instance--b530aac7ba82eb4d6eda100a.md) | 231 | `declaration-track:b530aac7ba82eb4d6eda100ab8b96704385f0514556737afab3b4997e2e9740e` |
| 15 | `abbrev` | [Simproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/simproc--0d87a0d46b2d3f1d9557eeb3.md) | 234 | `declaration-track:0d87a0d46b2d3f1d9557eeb3aa59733c3d82a5a2b110ca8568865374a86fe6bd` |
| 16 | `structure` | [Methods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/methods--0b81d67153e7f13eb4b74b3a.md) | 236 | `declaration-track:0b81d67153e7f13eb4b74b3afda901b3e68df9605c8261987ed2b80b1c2ccb80` |
| 17 | `def` | [Methods.toMethodsRefImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/methods-tomethodsrefimpl--e1abc7bcb21cf6660e3a4db7.md) | 241 | `declaration-track:e1abc7bcb21cf6660e3a4db73f323bf10a0d63e50331ffaa9ce999e8334adfe4` |
| 18 | `opaque` | [Methods.toMethodsRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/methods-tomethodsref--9dba5a4650b579c1dc7bc997.md) | 245 | `declaration-track:9dba5a4650b579c1dc7bc997bfe55da464b217ca3322765b8b29ea23c1f65a3a` |
| 19 | `abbrev` | [MethodsRef.toMethodsImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/methodsref-tomethodsimpl--4f0db194b5bfc0c600ad2cc0.md) | 247 | `declaration-track:4f0db194b5bfc0c600ad2cc00da68a78fbd223a355f2dd5cbb29b93cdda81b6a` |
| 20 | `opaque` | [MethodsRef.toMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/methodsref-tomethods--c8d6383a4249e41f5c471a05.md) | 251 | `declaration-track:c8d6383a4249e41f5c471a05533bfe11a89d2e1e9cd51d588fc0363b58be58c9` |
| 21 | `def` | [getMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/getmethods--fa3fe3c6b4d37bf73f27ac29.md) | 253 | `declaration-track:fa3fe3c6b4d37bf73f27ac29f57cb1865ac9cd883a01460ed3df34ac28a66472` |
| 22 | `def` | [SimpM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/simpm-run--2a0c980d175d851fc01ef960.md) | 259 | `declaration-track:2a0c980d175d851fc01ef960c9d3f5fd35bfcd150a7238e7a4ea8649d0099296` |
| 23 | `def` | [SimpM.run'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/simpm-run--a08d02167e2d6dcc24237e1a.md) | 265 | `declaration-track:a08d02167e2d6dcc24237e1aae9572579a7e21293ab0bc1a098b5564ef8f6d03` |
| 24 | `opaque` | [simp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/simp--0f9d8585a551d08608bae366.md) | 271 | `declaration-track:0f9d8585a551d08608bae366ce11e48f9057a8557a11bed8c1a10976309854bc` |
| 25 | `def` | [getConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/getconfig--17e366dfc3a4c42ba1695c2a.md) | 273 | `declaration-track:17e366dfc3a4c42ba1695c2ac83458ad4bdab62e06619eb7f5ae0fbc9c5a79ac` |
| 26 | `abbrev` | [pre](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/pre--eb37d9166f80f927e1364332.md) | 276 | `declaration-track:eb37d9166f80f927e13643327ecc440410524ddb7b168fc77e88e15518055fdd` |
| 27 | `abbrev` | [post](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/post--092aac4883898bb3061c6411.md) | 279 | `declaration-track:092aac4883898bb3061c6411872f83d1d7f96e6b28f0db07b4b204e047b7681d` |
| 28 | `abbrev` | [withoutModifyingCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/withoutmodifyingcache--e9aeaeaba0712b3f42deb94f.md) | 283 | `declaration-track:e9aeaeaba0712b3f42deb94fba87fef11a85c556bcb4923cb7ee2034e21931dc` |
| 29 | `abbrev` | [withFreshTransientCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/withfreshtransientcache--ae1fad3f1c4f4b1882a48da5.md) | 291 | `declaration-track:ae1fad3f1c4f4b1882a48da5c2dda7e144b93240877cd72ed597798289ce796a` |
| 30 | `abbrev` | [simp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant6b949eccc565cae89590ba222fafda86285627e251416213667f74b1e0cb4c46.lean/declarations/simp--57ea5b4aad3e3521cfadc2a2.md) | 298 | `declaration-track:57ea5b4aad3e3521cfadc2a2ca44209e8541b4a286ff5cfd056afb8ef87ee6cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
