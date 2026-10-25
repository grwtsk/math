# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InferType.Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01a650ea6298deb3943c944ddcd7afa58234b76f",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01a650ea6298deb3943c944ddcd7afa58234b76f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [InferTypeM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/infertypem--28ee4323e129db9292114c57.md) | 71 | `declaration-track:28ee4323e129db9292114c572561fba24b70d5998b54230dfdf06df870491262` |
| 2 | `def` | [getBinderName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/getbindername--845b000e42caf5c163d23b02.md) | 73 | `declaration-track:845b000e42caf5c163d23b02ee05ac5e1c0c0830d6e2dd8550ee84d3503669e1` |
| 3 | `def` | [getType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/gettype--ed62924119965bcadd90cc97.md) | 78 | `declaration-track:ed62924119965bcadd90cc9741d2a584d801f15882ada17f440b210426413e39` |
| 4 | `def` | [mkForallFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/mkforallfvars--435387d61ce040a199549c2b.md) | 83 | `declaration-track:435387d61ce040a199549c2b9627b721f4abe0b24b77ce2ed82bd196127b9d10` |
| 5 | `def` | [mkForallParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/mkforallparams--cb2a194653451a0447e8bfd8.md) | 92 | `declaration-track:cb2a194653451a0447e8bfd88a5c589cc2ef73bfab8dd9253f18da5d5a14ed6e` |
| 6 | `def` | [withLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/withlocaldecl--63070faacff06fd74fc3044a.md) | 96 | `declaration-track:63070faacff06fd74fc3044ae27a0b159731f93405f397e2af9225d6fbe7d3f7` |
| 7 | `def` | [inferConstType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/inferconsttype--8e11934a97de15bc612402b3.md) | 101 | `declaration-track:8e11934a97de15bc612402b3e4ac259ddf98881ae83d46bdf258b21be76adff6` |
| 8 | `def` | [inferLitValueType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/inferlitvaluetype--87cad89909c415411d4fba05.md) | 110 | `declaration-track:87cad89909c415411d4fba053f10dcb17c30be795c64adf1e85dcf12a5707548` |
| 9 | `def` | [inferArgType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/inferargtype--c659668123c6203314f3670b.md) | 121 | `declaration-track:c659668123c6203314f3670b88fbf7b08674b583686f8d8a4c2328f597e39dfa` |
| 10 | `def` | [inferType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/infertype--4af0fe66383ac6c5c251ab01.md) | 127 | `declaration-track:4af0fe66383ac6c5c251ab011378cf4c1d73f0354d63674bda71a7926cdf13ae` |
| 11 | `def` | [inferLetValueType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/inferletvaluetype--2afb2b48b218a4c842d6b378.md) | 137 | `declaration-track:2afb2b48b218a4c842d6b378a58632ef356b77af08f6ff26a0e6ba1f50b5a964` |
| 12 | `def` | [inferAppTypeCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/inferapptypecore--28cae7202cbbadd24557c442.md) | 145 | `declaration-track:28cae7202cbbadd24557c442674cab0ac513ed3b388a6c67f82c1d5b2f4a9fac` |
| 13 | `def` | [inferAppType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/inferapptype--e5c2c03bf15787e131a92a9b.md) | 159 | `declaration-track:e5c2c03bf15787e131a92a9bff5f51e97510e4f15897aec28178ef88302aafb8` |
| 14 | `def` | [inferProjType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/inferprojtype--4a136f4ab8b82c4e3e6aef02.md) | 174 | `declaration-track:4a136f4ab8b82c4e3e6aef0242ad6ccc2ebecbbc394066efc14032c13dab2cdc` |
| 15 | `def` | [getLevel?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/getlevel--9d5f4eec597b4858756f72ce.md) | 207 | `declaration-track:9d5f4eec597b4858756f72ce5f0bf17904404d345aeaf08d400f3fb30a8bfd38` |
| 16 | `def` | [inferForallType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/inferforalltype--fc5f5778f9efe252a0ffa1ce.md) | 212 | `declaration-track:fc5f5778f9efe252a0ffa1ce333768e27c85a1d9448c28b5a428bc7212f58763` |
| 17 | `def` | [inferLambdaType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/inferlambdatype--a8e23dddb936d8c4cce5f04f.md) | 230 | `declaration-track:a8e23dddb936d8c4cce5f04f9f541c7cb3fb76d3a08a146a0c81aff4a773bff1` |
| 18 | `def` | [inferType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/infertype--3a0c57314450a1297b7ff269.md) | 252 | `declaration-track:3a0c57314450a1297b7ff269a9a80385a626b821a29708954df4f4aa6bab1aea` |
| 19 | `def` | [inferAppType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/inferapptype--7e65c271b240a75e234d2d62.md) | 255 | `declaration-track:7e65c271b240a75e234d2d627dda5b0923c0a6a93ed1c50c1f5b152e4b654709` |
| 20 | `def` | [Arg.inferType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/arg-infertype--387de26832064d44a0d8d714.md) | 260 | `declaration-track:387de26832064d44a0d8d7146a70731809db63c701ec8b56c324dd66332b5eaa` |
| 21 | `def` | [LetValue.inferType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/letvalue-infertype--3a5d6048aac48434d08b548b.md) | 265 | `declaration-track:3a5d6048aac48434d08b548b73dcc17c882b1288740bef4bdf0bf931988894da` |
| 22 | `def` | [Code.inferType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/code-infertype--380783bf04a79c8ba1d1c3cf.md) | 270 | `declaration-track:380783bf04a79c8ba1d1c3cf024397b662cc7cf3eeca212254ddec1aecb92d58` |
| 23 | `def` | [Code.inferParamType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/code-inferparamtype--b7584e91f90b5a9cc0ec0035.md) | 281 | `declaration-track:b7584e91f90b5a9cc0ec003570b9a8d6dca904603aaa25194346f6b5bdadfcc2` |
| 24 | `def` | [Alt.inferType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/alt-infertype--85c795c5e7aa180252960c61.md) | 286 | `declaration-track:85c795c5e7aa180252960c610645a15bc207be6aa0b85e6f0b45ce4ce4d29d65` |
| 25 | `def` | [mkAuxLetDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/mkauxletdecl--26d186a4a4604191c44f44e0.md) | 289 | `declaration-track:26d186a4a4604191c44f44e001c10aac390a946e7b89599f4195669ac54c8b1a` |
| 26 | `def` | [mkForallParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/mkforallparams--4e6ec9de49f51f9c8b8b1365.md) | 292 | `declaration-track:4e6ec9de49f51f9c8b8b1365f8d1fde466a985c30f6b8d0907ed9385d6ac46f5` |
| 27 | `def` | [mkAuxFunDeclAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/mkauxfundeclaux--5bb5cdfa1fede5233a7c677c.md) | 297 | `declaration-track:5bb5cdfa1fede5233a7c677cdb104bc908c3ec04ee32978761495f3ba933725c` |
| 28 | `def` | [mkAuxFunDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/mkauxfundecl--429de95cfd7bbc8773e2425e.md) | 303 | `declaration-track:429de95cfd7bbc8773e2425e8d512ccf7b17739fc4c70a2bde214c7f8cd7ab23` |
| 29 | `def` | [mkAuxJpDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/mkauxjpdecl--cebe3f6bab37ec91827622d6.md) | 307 | `declaration-track:cebe3f6bab37ec91827622d64ca3e7a2c047e83bfeff24c52993071caf691c1e` |
| 30 | `def` | [mkAuxJpDecl'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/mkauxjpdecl--9649d260c4f2a87892019096.md) | 311 | `declaration-track:9649d260c4f2a87892019096d83540a214388f39737df72b5111e65b5ebb93fd` |
| 31 | `def` | [mkCasesResultType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/mkcasesresulttype--03d6e937d2bdee6ff0d06c37.md) | 316 | `declaration-track:03d6e937d2bdee6ff0d06c372ea04c1c2ed7baf2f42c0cef5f79627f282690e8` |
| 32 | `def` | [isErasedCompatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/iserasedcompatible--18eb6dd3efaf001adb5e768a.md) | 331 | `declaration-track:18eb6dd3efaf001adb5e768a12be087bd78c40e74ecdbcfcfb0daf67cfce209a` |
| 33 | `def` | [eqvTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferType/Variant66a552e08f56d4458218ca86e894daef5a5ae8507bc4b87df8c37c43f6956004.lean/declarations/eqvtypes--bc9099c4b2279aa315b98921.md) | 351 | `declaration-track:bc9099c4b2279aa315b989215cf61d25eceb9ed24d174a53dee7628008aa4b4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
