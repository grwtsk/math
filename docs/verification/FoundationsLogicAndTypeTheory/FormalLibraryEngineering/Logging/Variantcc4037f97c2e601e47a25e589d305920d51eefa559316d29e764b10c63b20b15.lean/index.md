# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Logging.Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1b5147372004f009eae1a1b34dd396561dd8a4c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1b5147372004f009eae1a1b34dd396561dd8a4c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Time` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LogConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/declarations/logconfig--80f28db9f272bacc0e1dc616.md) | 23 | `declaration-track:80f28db9f272bacc0e1dc616cce64897ef7cf22afcacf2ed8524f4aad2053ca4` |
| 2 | `def` | [LogConfig.ofLspLogConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/declarations/logconfig-oflsplogconfig--70ab5be5b0af41e84bab342f.md) | 29 | `declaration-track:70ab5be5b0af41e84bab342f7395630440bf120a1e45ac169656b2de1447b260` |
| 3 | `inductive` | [MessageMethod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/declarations/messagemethod--e2223e3ab32bcbfae5ad0fe8.md) | 50 | `declaration-track:e2223e3ab32bcbfae5ad0fe839b37df83e7ffa5b9093d2db112fccfd1c18607c` |
| 4 | `def` | [MessageMethod.all](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/declarations/messagemethod-all--8739c482cb09a423e5218c60.md) | 56 | `declaration-track:8739c482cb09a423e5218c60cf306085defcd208af1566698642a3a0aa4cb42b` |
| 5 | `def` | [messageMethod?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/declarations/messagemethod--9ac4d05b3d287a517eefd131.md) | 63 | `declaration-track:9ac4d05b3d287a517eefd13150548ae6fb1555593fac436b1e6f723014fc573f` |
| 6 | `def` | [messageId?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/declarations/messageid--b96881835ecc9606ff68911f.md) | 75 | `declaration-track:b96881835ecc9606ff68911f2b44f0fc8e9eedc30ba90e24910ac38424763919` |
| 7 | `def` | [isMsgAllowed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/declarations/ismsgallowed--d2d2be37e1d7e8c5005a780d.md) | 81 | `declaration-track:d2d2be37e1d7e8c5005a780d8c6f0ee388399f55f68c17eb53cd75b9bb03a7b7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/declarations/instance--069e7ba6cb7e6aa030801827.md) | 100 | `declaration-track:069e7ba6cb7e6aa030801827caf689ef9ef384e519097e4abd7e0602116adf71` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/declarations/instance--a0a18c77083044577793d675.md) | 103 | `declaration-track:a0a18c77083044577793d675e1d8baceb3e9e54f2b4619f9f4f88e844aef7b60` |
| 10 | `structure` | [LogEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/declarations/logentry--ec0a0ae921cd7630014fbde6.md) | 108 | `declaration-track:ec0a0ae921cd7630014fbde6d49ba5f97d42e21485388ceed3b4118e951a5546` |
| 11 | `def` | [writeLogEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Logging/Variantcc4037f97c2e601e47a25e589d305920d51eefa559316d29e764b10c63b20b15.lean/declarations/writelogentry--33a86b14d9257da8537cc12b.md) | 115 | `declaration-track:33a86b14d9257da8537cc12b356de5ea12426c814046d391afd8450ab4b5d733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
