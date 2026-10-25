# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InferType.Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf0b45db1d34d2f68cbbc22c0f89513e48680efc",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf0b45db1d34d2f68cbbc22c0f89513e48680efc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [InferTypeM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/infertypem--16fac80e2e3df440b81f817d.md) | 79 | `declaration-track:16fac80e2e3df440b81f817dc5eca95b1234694870d23be7b25cdb3fbed79b99` |
| 2 | `def` | [getBinderName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/getbindername--8c41d851c0066a4c3917ffec.md) | 81 | `declaration-track:8c41d851c0066a4c3917ffec36c80878e9f9b94707aba1652c5458e8625fe73f` |
| 3 | `def` | [getType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/gettype--5e06f1ea14001e7109cd3dc2.md) | 86 | `declaration-track:5e06f1ea14001e7109cd3dc27a4bf28276166fa04bbf8659c16594acb7a4bc71` |
| 4 | `def` | [mkForallFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/mkforallfvars--3c0f0306a9971561fc59ea5c.md) | 91 | `declaration-track:3c0f0306a9971561fc59ea5c6f07f6d708c758204e4c7a3d17ef31ba49d14af1` |
| 5 | `def` | [mkForallParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/mkforallparams--0e06116fd7c93f7083bf8a76.md) | 100 | `declaration-track:0e06116fd7c93f7083bf8a76e65791beca12eaefbc455541bee3f3497de85704` |
| 6 | `def` | [withLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/withlocaldecl--a66083cca5b1395844aba57f.md) | 104 | `declaration-track:a66083cca5b1395844aba57fca53b62ff6f12fd9bffc7cf8ef6713f203570f26` |
| 7 | `def` | [inferConstType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/inferconsttype--26625ec2453bef4ac5051a4a.md) | 109 | `declaration-track:26625ec2453bef4ac5051a4a0552638db16f450234b91f752b5d16f36de70086` |
| 8 | `def` | [inferLitValueType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/inferlitvaluetype--610ea996be07871deb81cb85.md) | 118 | `declaration-track:610ea996be07871deb81cb853ffba286f8e8060d82be731a9448af501d01f845` |
| 9 | `def` | [inferArgType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/inferargtype--2e05abb9fdc8662a87ae9f14.md) | 129 | `declaration-track:2e05abb9fdc8662a87ae9f14e65f6203f2dc931fa45349f64682515ea458c1fe` |
| 10 | `def` | [inferType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/infertype--9d2ae53210c110cd963b9247.md) | 135 | `declaration-track:9d2ae53210c110cd963b9247fe0901a2ef5ee39c2e39564332eaead3e645420e` |
| 11 | `def` | [inferLetValueType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/inferletvaluetype--b2cb6ba42ceaf8235c888db2.md) | 145 | `declaration-track:b2cb6ba42ceaf8235c888db27d394d3a72a12b25affa5975e7c91545de48bfb2` |
| 12 | `def` | [inferAppTypeCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/inferapptypecore--4ae372e0940f8e5a9d541589.md) | 153 | `declaration-track:4ae372e0940f8e5a9d54158968f94a34569a1c0529f1cc2c488964a2a9ef6908` |
| 13 | `def` | [inferAppType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/inferapptype--bb5017518bab8cbc8bae3bfb.md) | 167 | `declaration-track:bb5017518bab8cbc8bae3bfbbfe0200849622e8dc6af8d7d1c0ce2f9252240a0` |
| 14 | `def` | [inferProjType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/inferprojtype--967993d1378ed4ec11ae6b24.md) | 182 | `declaration-track:967993d1378ed4ec11ae6b242aba60926782a7ce3760a8a9991ef5bd1ff2fd5d` |
| 15 | `def` | [getLevel?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/getlevel--aba7438e0f6ea94acb93856f.md) | 215 | `declaration-track:aba7438e0f6ea94acb93856f2f85badfc72236b6771659612f69054710951b71` |
| 16 | `def` | [inferForallType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/inferforalltype--cc9e3f93b93c90713f63d702.md) | 220 | `declaration-track:cc9e3f93b93c90713f63d702c646f84c47fa66a825d37a9f4ccc5f326bab8a1e` |
| 17 | `def` | [inferLambdaType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/inferlambdatype--2d0e0a42036d421368155beb.md) | 238 | `declaration-track:2d0e0a42036d421368155beb8c196c29e7a521326dfcc9ed0e53da6d6667c859` |
| 18 | `def` | [inferType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/infertype--d76d726916a9658bd96e200a.md) | 260 | `declaration-track:d76d726916a9658bd96e200a2ab1650b7682fdde2af20d63f7ea6c57303dfd0e` |
| 19 | `def` | [inferAppType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/inferapptype--c332ae56df74c836d9041863.md) | 263 | `declaration-track:c332ae56df74c836d90418632d944f02314f8607e701cb6de43f03e2d627586f` |
| 20 | `def` | [Arg.inferType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/arg-infertype--0b12a5228250a5249bcabc0b.md) | 268 | `declaration-track:0b12a5228250a5249bcabc0bdc930ffe4cc80b5729fa18084289cf83a3919ea1` |
| 21 | `def` | [LetValue.inferType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/letvalue-infertype--935d2f30ea5d2a1263b856a6.md) | 273 | `declaration-track:935d2f30ea5d2a1263b856a6fc0860fd988ff74266a7142d7b7a6ea9fcf02773` |
| 22 | `def` | [Code.inferType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/code-infertype--742d404496b0afec4ae274dc.md) | 278 | `declaration-track:742d404496b0afec4ae274dca29f447b32e849986911eaabbc1f719ab54cd87d` |
| 23 | `def` | [Code.inferParamType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/code-inferparamtype--40990cb7db96b73fe2c054a4.md) | 289 | `declaration-track:40990cb7db96b73fe2c054a410dececd4cd3d9e84fb113658e6ad5ab62bbdede` |
| 24 | `def` | [Alt.inferType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/alt-infertype--19716a8303618702f513a407.md) | 294 | `declaration-track:19716a8303618702f513a407b3c60962748bab00fbf17ebb65ba85a808c36990` |
| 25 | `def` | [mkAuxLetDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/mkauxletdecl--2d9bd4e88ea43a7f7dfc0286.md) | 297 | `declaration-track:2d9bd4e88ea43a7f7dfc0286b2fc3b4baf6bdd3d29ec57aeef24daa619a61366` |
| 26 | `def` | [mkForallParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/mkforallparams--744b47942e67772d027a2698.md) | 300 | `declaration-track:744b47942e67772d027a26982aa18e76539b6d6a971cee6e9904effc8c70b574` |
| 27 | `def` | [mkAuxFunDeclAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/mkauxfundeclaux--5101678c4ce971b7aee7d64d.md) | 305 | `declaration-track:5101678c4ce971b7aee7d64daadb0439182209980a7d26bd94d1e11fcbebe1eb` |
| 28 | `def` | [mkAuxFunDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/mkauxfundecl--68120246befaad4f65e5549b.md) | 311 | `declaration-track:68120246befaad4f65e5549b9a3322c83cf7892359e17ca7eeac5aca1c4eb808` |
| 29 | `def` | [mkAuxJpDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/mkauxjpdecl--6fa0bcff7791c13a338e1640.md) | 315 | `declaration-track:6fa0bcff7791c13a338e164005a60db5b7d6b01d0ccafc1513a327a6d47cfc9e` |
| 30 | `def` | [mkAuxJpDecl'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/mkauxjpdecl--4b8acd589032b8a919b033e7.md) | 319 | `declaration-track:4b8acd589032b8a919b033e7a969f05cd9f318538a45cc046258bcbe8d6e3e58` |
| 31 | `def` | [mkCasesResultType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/mkcasesresulttype--e2f570b28f8e621ee420f09f.md) | 324 | `declaration-track:e2f570b28f8e621ee420f09f00adf2a644601819af7c7b25845c607af090433f` |
| 32 | `def` | [isErasedCompatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/iserasedcompatible--205b714ebc0fcccd96c20c9f.md) | 339 | `declaration-track:205b714ebc0fcccd96c20c9f04c72e18e8b2ec9bf1350d1cd7d689ce0923af9e` |
| 33 | `def` | [eqvTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant264f7776ea812787c3dc88d3158c9e6f9f8cc079ad2809ada37f2df119696f1e.lean/declarations/eqvtypes--adf8dbac91684e0019a880d4.md) | 359 | `declaration-track:adf8dbac91684e0019a880d4b654a89d6f1006022f2fe3934e7d55badae8c9ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
