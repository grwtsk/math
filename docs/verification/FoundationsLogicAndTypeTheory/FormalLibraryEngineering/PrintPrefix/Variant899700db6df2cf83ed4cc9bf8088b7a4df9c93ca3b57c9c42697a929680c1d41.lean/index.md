# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintPrefix.Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4780d3a79d75d05ae004561c4bdaba81b0738e5b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4780d3a79d75d05ae004561c4bdaba81b0738e5b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.PrintPrefix` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean/declarations/tempty--a66ef12cc01d6631a355cc10.md) | 11 | `declaration-track:a66ef12cc01d6631a355cc10e1480f90d920d3f59028586f4f9d5b9fee6330f9` |
| 2 | `def` | [foo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean/declarations/foo--5372d175c78c61dea3abeaac.md) | 42 | `declaration-track:5372d175c78c61dea3abeaac933f101443c7604cb82f24213dc0fa2ab5ae8d4f` |
| 3 | `structure` | [TestStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean/declarations/teststruct--1aea9d42fb2742263257c59e.md) | 51 | `declaration-track:1aea9d42fb2742263257c59eafa52bb6357e6e3b4077fc4405d7e2d592dc698a` |
| 4 | `def` | [testMatchProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean/declarations/testmatchproof--a8ae2d4c4816d156c982ffed.md) | 139 | `declaration-track:a8ae2d4c4816d156c982ffed5da415a0496a43077b70fb852dade28ffe5cc9c3` |
| 5 | `inductive` | [TestInd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant899700db6df2cf83ed4cc9bf8088b7a4df9c93ca3b57c9c42697a929680c1d41.lean/declarations/testind--ab790c17f43b12fe8bdc254f.md) | 160 | `declaration-track:ab790c17f43b12fe8bdc254ffeda03c4cc15f0b9615bab5e9ddcb778af4c2d84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
