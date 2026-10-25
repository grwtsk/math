# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpM.Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbece52b7c18de0446db567dd9b98bbcd76c4719",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbece52b7c18de0446db567dd9b98bbcd76c4719`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean.json)

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
| 1 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/config--42c3e4d7384cb9127ea7e015.md) | 109 | `declaration-track:42c3e4d7384cb9127ea7e01524c0c9288563f21960b92a71f4b2e8c9dcf36eca` |
| 2 | `inductive` | [Result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/result--b9c2d7322f7543a445db93ac.md) | 170 | `declaration-track:b9c2d7322f7543a445db93ac67198ff57e78c9343302dbd18b47fd70cd597dee` |
| 3 | `def` | [mkRflResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/mkrflresult--d3e9bc8de73121220ee44298.md) | 183 | `declaration-track:d3e9bc8de73121220ee44298b36ed84f9faad9588f5cacf5c34f3e3e41209fc0` |
| 4 | `def` | [mkRflResultCD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/mkrflresultcd--4c9e8dcacf2a1ca868e15dfe.md) | 191 | `declaration-track:4c9e8dcacf2a1ca868e15dfebc18800b32835b2dec3fe6d0a6ae4dada7deb466` |
| 5 | `abbrev` | [Result.isContextDependent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/result-iscontextdependent--c5eb45266697820f8dd7d0c3.md) | 195 | `declaration-track:c5eb45266697820f8dd7d0c39e539899b4bd788c40f86b5ece7f7e234cfddfce` |
| 6 | `def` | [Result.withContextDependent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/result-withcontextdependent--62641ebc3f4c11767589ef48.md) | 199 | `declaration-track:62641ebc3f4c11767589ef489b06004763f20be184db325dc0c7e436527ebd4c` |
| 7 | `opaque` | [MethodsRefPointed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/methodsrefpointed--d6d3bceab5a836185f747088.md) | 203 | `declaration-track:d6d3bceab5a836185f747088d6e80910fe0586be74853344221e5083dda7216c` |
| 8 | `def` | [MethodsRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/methodsref--9fcab07e30c552e0b4c3cec4.md) | 204 | `declaration-track:9fcab07e30c552e0b4c3cec4d2f915c0e274966e975f9f2919903bd4f2b9feb6` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/instance--7f7fd7f13020792cabdd9573.md) | 205 | `declaration-track:7f7fd7f13020792cabdd95734e4c2872f3c7c89a8b9bffd309062216b60880a8` |
| 10 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/context--987f77f5b28ca75644c00f24.md) | 208 | `declaration-track:987f77f5b28ca75644c00f24cc41a83b77d996892ce47801b226dc305afc8ef7` |
| 11 | `abbrev` | [Cache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/cache--953c9f71404320660ebe1aca.md) | 217 | `declaration-track:953c9f71404320660ebe1aca09ffd7f22e4eb8a4588cc7726c878a3a5a57bf33` |
| 12 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/state--76463ac778ff46eb97d68f93.md) | 220 | `declaration-track:76463ac778ff46eb97d68f933a877c0d61df6642246f92252b8eac73b8537203` |
| 13 | `abbrev` | [SimpM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/simpm--307ce53d9abec22b3c164c8a.md) | 237 | `declaration-track:307ce53d9abec22b3c164c8a9a7a185fc0bd0b20378280cc0b34c5ba92abb825` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/instance--b04eaeef986cc3a7a3dd5c3f.md) | 239 | `declaration-track:b04eaeef986cc3a7a3dd5c3f5fb189ffbc743250662e5af5a970cd8da22c44f4` |
| 15 | `abbrev` | [Simproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/simproc--720c24e886023b5560038a11.md) | 242 | `declaration-track:720c24e886023b5560038a115d2a0b2b1b00e866cd9a0c317e65b74226760cb5` |
| 16 | `structure` | [Methods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/methods--c8f51fe3832689e81b34c8a4.md) | 244 | `declaration-track:c8f51fe3832689e81b34c8a464c855532a0820e02d31e9fc08dcdb830f606f22` |
| 17 | `def` | [Methods.toMethodsRefImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/methods-tomethodsrefimpl--6549dd91cc5ca875b2876b8d.md) | 249 | `declaration-track:6549dd91cc5ca875b2876b8df579a09316b677bda214c05883fb3a4600806416` |
| 18 | `opaque` | [Methods.toMethodsRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/methods-tomethodsref--0cb2ad3846ebae1977a1733a.md) | 253 | `declaration-track:0cb2ad3846ebae1977a1733a34cc753ee286754c1f651fc49941a7c4315922dd` |
| 19 | `abbrev` | [MethodsRef.toMethodsImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/methodsref-tomethodsimpl--a3ede717288ff1c9010d74fc.md) | 255 | `declaration-track:a3ede717288ff1c9010d74fc9643207623d78a67cfa9d8a31f3755e60b0fc0aa` |
| 20 | `opaque` | [MethodsRef.toMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/methodsref-tomethods--6ce2dd07515fe9197596fdb9.md) | 259 | `declaration-track:6ce2dd07515fe9197596fdb93b2e5a8490a9b0e42dc7dc99b20944d11dbd2059` |
| 21 | `def` | [getMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/getmethods--add84ab042d1077319840123.md) | 261 | `declaration-track:add84ab042d1077319840123907316438a3de1f3c5f4912f5547210459806bc3` |
| 22 | `def` | [SimpM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/simpm-run--c763892b2b038c1966f209a6.md) | 267 | `declaration-track:c763892b2b038c1966f209a6d01198ccd3ced033668995a4fee7a9ddc7e18a3c` |
| 23 | `def` | [SimpM.run'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/simpm-run--e0d5f1e35d06aee37e14ed25.md) | 273 | `declaration-track:e0d5f1e35d06aee37e14ed2567ad799b775b55ea6b872fdb2b89d879ee2a7dd7` |
| 24 | `opaque` | [simp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/simp--5bb3268c7e473eb576b9d1cd.md) | 279 | `declaration-track:5bb3268c7e473eb576b9d1cd8389c0d9605ea2021d63f53139a4e30204f6f023` |
| 25 | `def` | [getConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/getconfig--794fc4139f7dce7bceb1b1fe.md) | 281 | `declaration-track:794fc4139f7dce7bceb1b1fe601724bf2f2ae3ec7bcca5002c393dd575fa04de` |
| 26 | `abbrev` | [pre](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/pre--5cd3df853e1299f6f5fefa5c.md) | 284 | `declaration-track:5cd3df853e1299f6f5fefa5c4ace87e0bda3ec0107c33225fc80408293a0516a` |
| 27 | `abbrev` | [post](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/post--03bb30ceedcb323073e361cd.md) | 287 | `declaration-track:03bb30ceedcb323073e361cd4eedf375612a33a37c1eb79a5a99bd3a87b99358` |
| 28 | `abbrev` | [withoutModifyingCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/withoutmodifyingcache--a4ac3fe6fd88961304ef67cc.md) | 291 | `declaration-track:a4ac3fe6fd88961304ef67cc71ab23e875860e0fb356a0d690db56063790e8fc` |
| 29 | `abbrev` | [withFreshTransientCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/withfreshtransientcache--d7d0b9eefc69772a4da97cc5.md) | 299 | `declaration-track:d7d0b9eefc69772a4da97cc53b8ee934882a5a4517af77fb45cabb9645fde7f3` |
| 30 | `abbrev` | [simp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Variant722c69474bcbf1cd5d5c56815d4b5759c61f2b7e2a12ba7f945d4953302f5146.lean/declarations/simp--6320d6cda3c5eabedbc7ad7e.md) | 306 | `declaration-track:6320d6cda3c5eabedbc7ad7e6c27ffdd4d065856a1076dfb8a311e41ca64cc94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
