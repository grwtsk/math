# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eb892745f31ad77b2576526e9b7fecd67350f2b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eb892745f31ad77b2576526e9b7fecd67350f2b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProofWidgets.Data.Html` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExprPresenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/declarations/exprpresenter--96a5ed91fb380056b3105be1.md) | 9 | `declaration-track:96a5ed91fb380056b3105be12decfe9584a35c314653c2ce2360e2c3262fce58` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/declarations/initialize--90db0035d211e13a3b162991.md) | 17 | `declaration-track:90db0035d211e13a3b162991b71ad732d11c9e0aafa55ea784c2d763c3e33517` |
| 3 | `def` | [evalExprPresenterUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/declarations/evalexprpresenterunsafe--0799e86971d15711544df35d.md) | 26 | `declaration-track:0799e86971d15711544df35dfedc2881f2e00879adea23a6f32eb3d128e394e9` |
| 4 | `opaque` | [evalExprPresenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/declarations/evalexprpresenter--5da7b249690accdc9609191a.md) | 31 | `declaration-track:5da7b249690accdc9609191a22a66e7f80937103cb0f0fa2b0ac58bab0308042` |
| 5 | `structure` | [GetExprPresentationsParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/declarations/getexprpresentationsparams--eac5d3266e3f9ff5829de8ce.md) | 34 | `declaration-track:eac5d3266e3f9ff5829de8cedf51f017398cd9518c782cac784d54d4ed4ee315` |
| 6 | `structure` | [ExprPresentationData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/declarations/exprpresentationdata--a81bc380428c3769c4aa3368.md) | 39 | `declaration-track:a81bc380428c3769c4aa3368ec7b5ec8140455d42365746d5b6abea39b4aee2c` |
| 7 | `structure` | [ExprPresentations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/declarations/exprpresentations--41474825011b79a5ffcc1968.md) | 45 | `declaration-track:41474825011b79a5ffcc1968e5d78d13d1e00b2ae195ebd072827c2b500aab9d` |
| 8 | `def` | [getExprPresentations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/declarations/getexprpresentations--ecd76e739efd2ed1f47f94b6.md) | 50 | `declaration-track:ecd76e739efd2ed1f47f94b61f500da8afe1850aac00767a7ed83c2168320b16` |
| 9 | `structure` | [GetExprPresentationParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/declarations/getexprpresentationparams--05a4d238ea889e6620cbeec8.md) | 78 | `declaration-track:05a4d238ea889e6620cbeec8af63a450c3176a8ff3aab011e3bece17a1e09aa0` |
| 10 | `def` | [getExprPresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/declarations/getexprpresentation--adfe11f1cedf61a3ace72fa8.md) | 86 | `declaration-track:adfe11f1cedf61a3ace72fa88f5b05b78158a41d6def27130741fe66e6b55502` |
| 11 | `structure` | [ExprPresentationProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/declarations/exprpresentationprops--2ce5db138cbf58633b462971.md) | 100 | `declaration-track:2ce5db138cbf58633b462971f111a8b1a6e09f41756c75d4117a1ac2a8dba36b` |
| 12 | `def` | [ExprPresentation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c.lean/declarations/exprpresentation--c99bd4217c576fd7328b9537.md) | 109 | `declaration-track:c99bd4217c576fd7328b9537e6d5c8c11679924523141a2951af0a6bcca25bad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
