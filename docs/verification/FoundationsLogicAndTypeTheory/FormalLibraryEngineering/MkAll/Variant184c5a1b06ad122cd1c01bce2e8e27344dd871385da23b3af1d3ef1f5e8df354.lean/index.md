# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkAll.Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae79948610542fbf00e7db8d2879e271d8e0df74",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae79948610542fbf00e7db8d2879e271d8e0df74`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Cli.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Lake.CLI.Main` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.GetAllModules` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getLeanLibs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean/declarations/getleanlibs--f69b2b75cbbbd837a2d24597.md) | 26 | `declaration-track:f69b2b75cbbbd837a2d24597e5cec097c8bf91c885fb5b815ab29e815e85ef41` |
| 2 | `def` | [mkAllCLI](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean/declarations/mkallcli--2e02e2dc7b83690e00b4fea2.md) | 42 | `declaration-track:2e02e2dc7b83690e00b4fea2590af1edde085c108ec172872d9b87e44b609d49` |
| 3 | `def` | [mkAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean/declarations/mkall--ae3c9070e67e0edbc69fe64b.md) | 85 | `declaration-track:ae3c9070e67e0edbc69fe64b4c9d65fd07b9a0a246c02b339fe40da3e39a61a0` |
| 4 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkAll/Variant184c5a1b06ad122cd1c01bce2e8e27344dd871385da23b3af1d3ef1f5e8df354.lean/declarations/main--b7e4d0cbba5a18bf7f03f733.md) | 100 | `declaration-track:b7e4d0cbba5a18bf7f03f7336dc746c755203c65fd3444015b5351de55bec9c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
