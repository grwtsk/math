# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Package.Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "266ec3b5b04775b349c727f8602a568fdee5ce00",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `266ec3b5b04775b349c727f8602a568fdee5ce00`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.IO` — import line 17; external provider; requires a separately pinned dependency.
- `Lake.Load.Lean` — import line 18; external provider; requires a separately pinned dependency.
- `Lake.Load.Toml` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/declarations/mkpackage--a30bd77dd17d165b041d3927.md) | 43 | `declaration-track:a30bd77dd17d165b041d39276d19b2bf75efe620706a7c2e78624444a36fcadf` |
| 2 | `theorem` | [wsIdx_mkPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/declarations/wsidx-mkpackage--2cf7a2ab0d37af5cd2c1ed04.md) | 67 | `result-track:2cf7a2ab0d37af5cd2c1ed04256a3af1c2c33ba767d5ddefbcf39dcaf82d4f14` |
| 3 | `theorem` | [depIdxs_mkPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/declarations/depidxs-mkpackage--7ce7dc740fa9ea746eb2af0c.md) | 68 | `result-track:7ce7dc740fa9ea746eb2af0c398ba00e7a16c52805644eac11cda288ff312bc9` |
| 4 | `def` | [configFileExists](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/declarations/configfileexists--f161c17877046bc9611655c9.md) | 74 | `declaration-track:f161c17877046bc9611655c99643698157a8b5016bd0de37a50caf69a3d40b77` |
| 5 | `def` | [realConfigFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/declarations/realconfigfile--6972b09e249501322a7cf663.md) | 86 | `declaration-track:6972b09e249501322a7cf663b4d0b5ebbb7525996ccafb0a86c2e76921d7b6e3` |
| 6 | `def` | [resolveConfigFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/declarations/resolveconfigfile--c94489bbbd6db5974e1e0bab.md) | 101 | `declaration-track:c94489bbbd6db5974e1e0babd5c48c78045f5f23a7bb42b989e62333d8469df2` |
| 7 | `def` | [loadConfigFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/declarations/loadconfigfile--b961acafdcce43df9ca37df4.md) | 137 | `declaration-track:b961acafdcce43df9ca37df48d03c7d23bf1f6cfb6f09fa0e444cc2577556ce7` |
| 8 | `def` | [loadPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Package/Variantcee7e5cec622d5bc689316fd16d77745af212138e6b83be99da62e71e61b9644.lean/declarations/loadpackage--733c2f8b4962b3176a782733.md) | 143 | `declaration-track:733c2f8b4962b3176a7827332408f75ee0acd0a2effa31d3595ac04b4bc3273a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
