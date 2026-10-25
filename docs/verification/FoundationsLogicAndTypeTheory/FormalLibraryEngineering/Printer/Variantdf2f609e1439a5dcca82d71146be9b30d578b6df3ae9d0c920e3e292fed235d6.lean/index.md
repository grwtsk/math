# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Printer.Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c34f066497adc76f73d2cca6885c0c0b6b788ba",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c34f066497adc76f73d2cca6885c0c0b6b788ba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Search` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.UInt.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [escapeTable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/escapetable--d82ccf39d4a3e9c3cfb0a59e.md) | 32 | `declaration-track:d82ccf39d4a3e9c3cfb0a59ed6e94a0e16e064b1ad1b19d7fdc76c9bc75dfe95` |
| 2 | `def` | [escapeAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/escapeaux--ce56d2d3c7af51aafec7c19a.md) | 44 | `declaration-track:ce56d2d3c7af51aafec7c19a50d61fa8e45f1aca7fddecbca115fee98c7460fa` |
| 3 | `def` | [needEscape](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/needescape--6748a711b7df05aefc35f80b.md) | 73 | `declaration-track:6748a711b7df05aefc35f80b227920443f91ac7a105be4fc06b80fc89459e613` |
| 4 | `def` | [escape](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/escape--7d263f7771d960b5ab86d756.md) | 89 | `declaration-track:7d263f7771d960b5ab86d756d1bfad3756ae14865e5a9c0cccc1c599047a7508` |
| 5 | `def` | [renderString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/renderstring--f772fc8db649fbc550665bf6.md) | 97 | `declaration-track:f772fc8db649fbc550665bf664d103a2e231a4aeeee4eeb67326e636a8f1f895` |
| 6 | `def` | [render](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/render--331f8df42981ce3f4c54d3ac.md) | 104 | `declaration-track:331f8df42981ce3f4c54d3acf224e84da597f32c3b92071b9c797ab1f3f1556e` |
| 7 | `def` | [pretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/pretty--d21914a1f022bb3411818f6a.md) | 120 | `declaration-track:d21914a1f022bb3411818f6ab2fbd29a98c435e456f29f6fda36526c7d9b0bba` |
| 8 | `inductive` | [CompressWorkItemKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/compressworkitemkind--8383e2edbae95346cc247c18.md) | 123 | `declaration-track:8383e2edbae95346cc247c18ecf58fa1f1fe525ff18b9fec36801503f9f9c0b6` |
| 9 | `structure` | [CompressWorkItemQueue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/compressworkitemqueue--abdd96add590e98d9668a665.md) | 131 | `declaration-track:abdd96add590e98d9668a6656215ecbcd8c8b1bb1a5f9d07f8974b58391f6114` |
| 10 | `def` | [CompressWorkItemQueue.pushKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/compressworkitemqueue-pushkind--b4f47f4dd314b86126ad7991.md) | 137 | `declaration-track:b4f47f4dd314b86126ad79916aaf10ef03b924ca80123ebe35c6f38ca93778b8` |
| 11 | `def` | [CompressWorkItemQueue.pushValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/compressworkitemqueue-pushvalue--c2d027498e79cd19cef3e573.md) | 143 | `declaration-track:c2d027498e79cd19cef3e573321b61fd46e6a5d824718893a7344aca699ee9a0` |
| 12 | `def` | [CompressWorkItemQueue.pushObjectFieldKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/compressworkitemqueue-pushobjectfieldkey--dd22afec124176e025f71d8c.md) | 149 | `declaration-track:dd22afec124176e025f71d8c1cc0d26cb2722e43042f5efb697725c87ea29ac5` |
| 13 | `def` | [CompressWorkItemQueue.popKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/compressworkitemqueue-popkind--45ceff4ef5395fb69b11eb01.md) | 155 | `declaration-track:45ceff4ef5395fb69b11eb0189da96c42e01953dc7ca3b900e18c53f897ea4fc` |
| 14 | `def` | [CompressWorkItemQueue.popValue!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/compressworkitemqueue-popvalue--09d8e5ab28528a6af272e287.md) | 162 | `declaration-track:09d8e5ab28528a6af272e287aa019f4582a459ef636368f561c52d0f3212faa6` |
| 15 | `def` | [CompressWorkItemQueue.popObjectFieldKey!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/compressworkitemqueue-popobjectfieldkey--a7b745c098f21ade72870848.md) | 169 | `declaration-track:a7b745c098f21ade7287084875cd9f3a086d991ff426a001daee1eac5d4fab48` |
| 16 | `def` | [compress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/compress--beadd632efd7dad7a9680637.md) | 175 | `declaration-track:beadd632efd7dad7a968063747bcbcdc6b85f8e7cb2d85d7fea005ceccdd2fbe` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/instance--8fe70ed34f692ec0e5d6adb9.md) | 241 | `declaration-track:8fe70ed34f692ec0e5d6adb948abfcb4cfe6d280a16c2a6d65927ef2c1a7efaa` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Printer/Variantdf2f609e1439a5dcca82d71146be9b30d578b6df3ae9d0c920e3e292fed235d6.lean/declarations/instance--701c01f351086cf5f1185721.md) | 242 | `declaration-track:701c01f351086cf5f1185721f1580843b68e48fc56847547f758c4cd63afac76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
