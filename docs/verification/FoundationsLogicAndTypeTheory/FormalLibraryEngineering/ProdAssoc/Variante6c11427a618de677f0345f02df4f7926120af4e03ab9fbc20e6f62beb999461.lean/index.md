# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProdAssoc.Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40a335233a30ebb7f74a962a53d6b5cc0267189a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40a335233a30ebb7f74a962a53d6b5cc0267189a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Expr.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProdTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/prodtree--b706a76a9588d7f8186ec529.md) | 25 | `declaration-track:b706a76a9588d7f8186ec5293ad5efa0dea47efa5873d58bc73e40ad8ab4dba0` |
| 2 | `def` | [ProdTree.getType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/prodtree-gettype--48cf0283c7f643ce7848a869.md) | 31 | `declaration-track:48cf0283c7f643ce7848a86970d45cdd25a36be762c6814cec2048571ecde0b3` |
| 3 | `def` | [ProdTree.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/prodtree-size--2e1400ba0150ca4ea79c8614.md) | 36 | `declaration-track:2e1400ba0150ca4ea79c861445d3b6426e03c72d2191fb6a1552cda98aaae8c5` |
| 4 | `def` | [ProdTree.components](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/prodtree-components--896170499858cdf8f0044849.md) | 41 | `declaration-track:896170499858cdf8f00448497137b1e19b64d1a837bbc1421c360a040ad77454` |
| 5 | `def` | [mkProdTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/mkprodtree--c5adb7b4676b79146af3c36d.md) | 46 | `declaration-track:c5adb7b4676b79146af3c36dceabd243c64704dcaeee9529d7148eefce579805` |
| 6 | `def` | [ProdTree.unpack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/prodtree-unpack--485fc08eb5facb0d6d77bce6.md) | 63 | `declaration-track:485fc08eb5facb0d6d77bce6e792d82ce2f61ace5b5ced1f1ca681d7ba1a20f2` |
| 7 | `def` | [ProdTree.pack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/prodtree-pack--c3576a26a4a3fc5c8269931f.md) | 72 | `declaration-track:c3576a26a4a3fc5c8269931f6c3b269186f7be02a254880aa6ffa000a212b894` |
| 8 | `def` | [ProdTree.convertTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/prodtree-convertto--291d4930a8a8b0bae4290852.md) | 90 | `declaration-track:291d4930a8a8b0bae429085215cdd226bffa5d0adb618784087e0a4dca9cb1a6` |
| 9 | `def` | [mkProdFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/mkprodfun--089352303f21d46cc9bcb517.md) | 95 | `declaration-track:089352303f21d46cc9bcb517a2f7e50bd50f15e9a244e296530cda020d7531e2` |
| 10 | `def` | [mkProdEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/mkprodequiv--8cbac6aff76b2bdff8892548.md) | 108 | `declaration-track:8cbac6aff76b2bdff8892548465dbc8f64ecbf26c702e7cc8a784026b6aeb198` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/syntax--6546b48925c3778d33d6dcf6.md) | 121 | `declaration-track:6546b48925c3778d33d6dcf6530e7f8b3d5a856520fac85624648b2c576382b3` |
| 12 | `def` | [elabProdAssoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/elabprodassoc--6415f945d3dea39f541d9fe1.md) | 126 | `declaration-track:6415f945d3dea39f541d9fe11bb5c90eadffa6f3b851e39d2204ecf8499a9e37` |
| 13 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/declarations/macro--e3a9f3e88ef81a3b174a6f73.md) | 149 | `declaration-track:e3a9f3e88ef81a3b174a6f731aa0d682b31328894e79d8b40da21351b05cb682` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
