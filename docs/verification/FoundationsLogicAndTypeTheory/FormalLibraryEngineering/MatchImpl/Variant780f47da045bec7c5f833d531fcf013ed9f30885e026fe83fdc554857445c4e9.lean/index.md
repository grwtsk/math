# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchImpl.Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5313916b22dfc762b85dcc3773f6812e3ae6afdd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5313916b22dfc762b85dcc3773f6812e3ae6afdd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.Syntax.stripPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean/declarations/lean-syntax-strippos--720635ce161eed90f5dc1fc8.md) | 16 | `declaration-track:720635ce161eed90f5dc1fc874ecc0ca794507aad965318ff10d97de4ddaa67e` |
| 2 | `structure` | [PatVarDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean/declarations/patvardecl--14a0b18b59f7a791033b5c18.md) | 29 | `declaration-track:14a0b18b59f7a791033b5c18d1ed1be6bf7dd562c5e22ab78d33efd76a2e64b3` |
| 3 | `def` | [PatVarDecl.fvarTy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean/declarations/patvardecl-fvarty--d3ff929fcfa0490b9f1a5666.md) | 34 | `declaration-track:d3ff929fcfa0490b9f1a56668c5295ce9969b9e8cb873e0ed4c75ee97504a3fc` |
| 4 | `def` | [PatVarDecl.fvar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean/declarations/patvardecl-fvar--ce0c1a469da0e32561339c5e.md) | 38 | `declaration-track:ce0c1a469da0e32561339c5e289f4110019ef5aaf5939a0d709a5231d0edbe58` |
| 5 | `def` | [mkIsDefEqType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean/declarations/mkisdefeqtype--b9ba1bcd1dfe768fe548442c.md) | 41 | `declaration-track:b9ba1bcd1dfe768fe548442c4f7db12c684170a41675475a64a0189c9812ae1d` |
| 6 | `def` | [mkIsDefEqResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean/declarations/mkisdefeqresult--7df14a2fe9b8ad458d8ff11f.md) | 45 | `declaration-track:7df14a2fe9b8ad458d8ff11fe87e173c0e706040b195121854be86e5e0f275b7` |
| 7 | `def` | [mkIsDefEqResultVal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean/declarations/mkisdefeqresultval--990be2ed1e9ed92fff91131c.md) | 49 | `declaration-track:990be2ed1e9ed92fff91131c0c9d419612749547de187153244e6694ef8f6c83` |
| 8 | `def` | [mkLambda'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean/declarations/mklambda--0edd82613ae76c42635b2c23.md) | 53 | `declaration-track:0edd82613ae76c42635b2c238039a2e32e705fab61c1138379d6d3d612e0a8b1` |
| 9 | `def` | [mkLet'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean/declarations/mklet--513f4ceb1fb5ffb633e2a05f.md) | 56 | `declaration-track:513f4ceb1fb5ffb633e2a05fc2115ef8680608327953cd189059444f9cbcc374` |
| 10 | `def` | [mkLambdaQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchImpl/Variant780f47da045bec7c5f833d531fcf013ed9f30885e026fe83fdc554857445c4e9.lean/declarations/mklambdaq--a7ac62ce1532de9228b567f0.md) | 59 | `declaration-track:a7ac62ce1532de9228b567f0251415e1b01ac34f65dfb55f2a378ca42852a97c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
