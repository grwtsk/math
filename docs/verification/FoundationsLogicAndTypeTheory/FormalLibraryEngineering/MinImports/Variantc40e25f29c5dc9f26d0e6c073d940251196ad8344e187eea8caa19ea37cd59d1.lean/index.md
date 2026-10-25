# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MinImports.Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4c5a3697bbd57676dd2a0e99725ad575a03de91",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4c5a3697bbd57676dd2a0e99725ad575a03de91`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.DefView` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectAxioms` — import line 12; external provider; requires a separately pinned dependency.
- `ImportGraph.Imports` — import line 13; external provider; requires a separately pinned dependency.
- `ImportGraph.RequiredModules` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.Header` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getSyntaxNodeKinds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/getsyntaxnodekinds--bf4ba334228e9ad4a7d65ca7.md) | 73 | `declaration-track:bf4ba334228e9ad4a7d65ca760e5ab126195f120f1bcdf2f78604a6e92fa8b2f` |
| 2 | `def` | [getVisited](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/getvisited--7ba0ad0055d6bff50c69186b.md) | 80 | `declaration-track:7ba0ad0055d6bff50c69186bc0f7bbec8a54d56868eff653ff2848fb60c197f8` |
| 3 | `def` | [getId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/getid--a8d9ed2a00250d9fd3cb758d.md) | 91 | `declaration-track:a8d9ed2a00250d9fd3cb758d7a782d71e27425763a813c83d56b22002f1b333e` |
| 4 | `def` | [getIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/getids--f071f01258792b328f472844.md) | 106 | `declaration-track:f071f01258792b328f472844c53d522c8ba8d9258929a349d04d8ec20472a7cc` |
| 5 | `def` | [getAttrNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/getattrnames--81de7ef9a851da895213265c.md) | 114 | `declaration-track:81de7ef9a851da895213265c3ec63e7471cd9d17047cd18b3d314614e2e169e7` |
| 6 | `def` | [getAttrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/getattrs--f1a054b42ff2572431d65f36.md) | 121 | `declaration-track:f1a054b42ff2572431d65f3608b36a2410024e47b44ce8f870f64a59af15e3cd` |
| 7 | `def` | [previousInstName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/previousinstname--33b6ad852ea8d5a3f97626eb.md) | 135 | `declaration-track:33b6ad852ea8d5a3f97626ebc116784281bf95a75a2d2f33146b277d26f25877` |
| 8 | `def` | [getDeclName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/getdeclname--b390a21c8d10039364368111.md) | 152 | `declaration-track:b390a21c8d100393643681112fc10b2759075eb6480af9a8cf716daa65c6c404` |
| 9 | `def` | [getAllDependencies](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/getalldependencies--0d1f00a5e5c937d1aa36ddf8.md) | 200 | `declaration-track:0d1f00a5e5c937d1aa36ddf8d085bd5c7b0fee1bffeec6e76fa045b6a8e70811` |
| 10 | `def` | [getAllImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/getallimports--ade6601b1f53b4d5f499951f.md) | 220 | `declaration-track:ade6601b1f53b4d5f499951fdb98cb19455fad7f142c3d5d5ee1c6803873cb7e` |
| 11 | `def` | [getIrredundantImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/getirredundantimports--5239a3e1a797402a44edf167.md) | 241 | `declaration-track:5239a3e1a797402a44edf167ad0eb3ef8b43276c893cb4a4d21c2b095e9f7800` |
| 12 | `def` | [minImpsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/minimpscore--987c3331ace84b2d7d6c55ef.md) | 255 | `declaration-track:987c3331ace84b2d7d6c55ef1d1e826ee92581dd907930288c2b511c55adfe33` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/syntax--458c7c2cf358a0036337d421.md) | 262 | `declaration-track:458c7c2cf358a0036337d421e4fa038233e533a1a13a8002a97ba6c8b630b791` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/syntax--497cdafb62adf0b8bfe74b18.md) | 265 | `declaration-track:497cdafb62adf0b8bfe74b18973861751d035b37f34fb3833e6e692107d568db` |
| 15 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinImports/Variantc40e25f29c5dc9f26d0e6c073d940251196ad8344e187eea8caa19ea37cd59d1.lean/declarations/elab-rules--2539e33c49454d2d7fe20591.md) | 267 | `declaration-track:2539e33c49454d2d7fe2059164a127c0b76c0a6f2c25e6588537b2852ac8630b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
