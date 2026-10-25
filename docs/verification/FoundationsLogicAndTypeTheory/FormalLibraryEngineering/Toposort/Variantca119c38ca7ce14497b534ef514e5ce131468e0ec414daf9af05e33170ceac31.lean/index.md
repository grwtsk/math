# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Toposort.Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "166308e5e51fc6d81eb0dbc073d6453ac6dd9929",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `166308e5e51fc6d81eb0dbc073d6453ac6dd9929`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.InitAttr` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TopoCtx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean/declarations/topoctx--8d8fb4fa4ac143167c2d3137.md) | 22 | `declaration-track:8d8fb4fa4ac143167c2d3137199ad44b4fa8c549ef16d427ea34ef0d74eca701` |
| 2 | `structure` | [TopoState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean/declarations/topostate--728375c0802e231b5ddc9ad4.md) | 25 | `declaration-track:728375c0802e231b5ddc9ad4f8d42ebb961032845932e151a9b4657a55f41c62` |
| 3 | `abbrev` | [ToposortM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean/declarations/toposortm--f17871b135bdf4afd4b4b828.md) | 29 | `declaration-track:f17871b135bdf4afd4b4b828a5207664949c53f0f5ccdcb5edbae09f67c37074` |
| 4 | `def` | [toposort](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean/declarations/toposort--7eb8842dc48c88f0b4cf4d62.md) | 31 | `declaration-track:7eb8842dc48c88f0b4cf4d628ca266b51e47238f8f9e9c1ce2eff0b19d784cd7` |
| 5 | `def` | [toposortDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean/declarations/toposortdecls--8de461226debece0b52bd417.md) | 66 | `declaration-track:8de461226debece0b52bd417d229f036a40755abdefb2318c7c501d23ca05917` |
| 6 | `def` | [toposortPass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toposort/Variantca119c38ca7ce14497b534ef514e5ce131468e0ec414daf9af05e33170ceac31.lean/declarations/toposortpass--7910314f4f5a3b0aabee316f.md) | 69 | `declaration-track:7910314f4f5a3b0aabee316f86b013566dadb62f3b33c98555c5f26bd3e78695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
