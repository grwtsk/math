# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SearchM.Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e156a266b2c9b7661e605e7f04bf8a7b4e6a39e9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e156a266b2c9b7661e605e7f04bf8a7b4e6a39e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Util` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CaseKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean/declarations/casekind--b7fcdb9e71ec3dc1c2f768a0.md) | 17 | `declaration-track:b7fcdb9e71ec3dc1c2f768a07a4f595270f89420134f4d0c47828cbdacfcd368` |
| 2 | `structure` | [Case](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean/declarations/case--af6ecbfa5fa473e3a90175de.md) | 22 | `declaration-track:af6ecbfa5fa473e3a90175decf01f8c854cf1fbaac52c9ddb9fb2d34ccfb5031` |
| 3 | `inductive` | [Search.Kind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean/declarations/search-kind--4b69ae7d76e8eea45406d0d1.md) | 37 | `declaration-track:4b69ae7d76e8eea45406d0d1e14afeced9ceb063c514166e489e3d1b69d1c21f` |
| 4 | `structure` | [Search.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean/declarations/search-state--5a09ebd17fc1db103c881454.md) | 53 | `declaration-track:5a09ebd17fc1db103c8814547188c54023629f22cd6ff5a40262f8440e4a7054` |
| 5 | `abbrev` | [SearchM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean/declarations/searchm--b8912de099a0403f0ffbba4c.md) | 67 | `declaration-track:b8912de099a0403f0ffbba4c39a330cf8f62a35a3be91e7645df29759b0ee7ec` |
| 6 | `def` | [isApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean/declarations/isapprox--61e922624318f3f57f89e363.md) | 70 | `declaration-track:61e922624318f3f57f89e363fd8864fb1dcf50e750a6a8060673ecb88d693c12` |
| 7 | `def` | [setImprecise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean/declarations/setimprecise--1de500cdc6e5b635334c91ea.md) | 74 | `declaration-track:1de500cdc6e5b635334c91ea20aaf7ab713d68ab3ebb3b1484202d21bacf96c7` |
| 8 | `def` | [checkMaxSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean/declarations/checkmaxsteps--e6556d99551cecf7110648f0.md) | 81 | `declaration-track:e6556d99551cecf7110648f083d4b7f6304811ee9db85c879d09fdadb5eb5670` |
| 9 | `def` | [saveSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean/declarations/savesteps--9e0563a4b5f8d129981ad0c3.md) | 90 | `declaration-track:9e0563a4b5f8d129981ad0c36498b5f5927988d45982578ecf80a1c10707c7de` |
| 10 | `def` | [mkCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SearchM/Variant62a08f8374ee390c86b2b754e7e0c133d501289fa3aaa288e743e8847444f463.lean/declarations/mkcase--28db10d7c629cdfd52726392.md) | 94 | `declaration-track:28db10d7c629cdfd5272639221189f73586fccf7416f5c112ef3141e763572f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
