# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RulePattern.Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25b4b3c857a607af65f3a40e8a8d336e323e8e79",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25b4b3c857a607af65f3a40e8a8d336e323e8e79`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.Meta.DiscrTree` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RulePatternSubstMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/rulepatternsubstmap--2e08eea07f6136f1d600a578.md) | 22 | `declaration-track:2e08eea07f6136f1d600a5787020f170aa1e6c02ed8cc313fb30179033eb5d77` |
| 2 | `def` | [insertArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/insertarray--7ebaa0e4fd217992081d3add.md) | 28 | `declaration-track:7ebaa0e4fd217992081d3addb4e2dd87294b51750cc9a707852b7e9bc18e8538` |
| 3 | `def` | [ofArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/ofarray--221498a48384e75952c03041.md) | 36 | `declaration-track:221498a48384e75952c03041318fb4d34aca3a18990ba07643f3a6f07a671e6c` |
| 4 | `def` | [toFlatArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/toflatarray--1e0c873e45dd55147238ceb7.md) | 40 | `declaration-track:1e0c873e45dd55147238ceb7b55b2860eb564263d1a3f4b2a0337ec33961b237` |
| 5 | `structure` | [RulePatternIndex.Entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/rulepatternindex-entry--a4e020a7fdf87e45b8a98c80.md) | 49 | `declaration-track:a4e020a7fdf87e45b8a98c800ced2e9a790065d60ef0c6c9abb0334d07ac476d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/instance--2e0d89c4d8c414bc91a9ec21.md) | 57 | `declaration-track:2e0d89c4d8c414bc91a9ec21aec2d788ee7fd52307cb07e40c6550dafe49e01e` |
| 7 | `structure` | [RulePatternIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/rulepatternindex--a2a813159f1e5e151e78ca6b.md) | 63 | `declaration-track:a2a813159f1e5e151e78ca6b80dbff1ee8eae38926c7722a3861e83b6b4eebb4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/instance--907214b372db508b6d67b445.md) | 72 | `declaration-track:907214b372db508b6d67b445dc7be09ab02e8fd3b0e774c99c5ee0c37d9d00ed` |
| 9 | `def` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/add--9d5c6739cbfc8461d11b2c21.md) | 76 | `declaration-track:9d5c6739cbfc8461d11b2c219c931563c926ffbbca09d6db6e4ab734b7d60c56` |
| 10 | `def` | [merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/merge--b1297066eae292d61d878fd6.md) | 82 | `declaration-track:b1297066eae292d61d878fd60d2c35c1ca4851653b66c5857dc388b1fbbf22d7` |
| 11 | `def` | [getSingle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/getsingle--c805ab65df30b484fa983d61.md) | 93 | `declaration-track:c805ab65df30b484fa983d616bb020ca064107f88722be29c08efedb951c819d` |
| 12 | `def` | [getCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/getcore--4c654df0ec4a03cd2c127c00.md) | 106 | `declaration-track:4c654df0ec4a03cd2c127c0097ac569bddbeaaf63684d0956c19bfd418fadf0e` |
| 13 | `def` | [get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/get--efd1a3018ddd77efbac57f65.md) | 128 | `declaration-track:efd1a3018ddd77efbac57f65a0a44392156a3178459f0034d8aa79c261864d7a` |
| 14 | `def` | [getInLocalDeclCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/getinlocaldeclcore--35b3f666f1c4d9a5b4b3b7d3.md) | 134 | `declaration-track:35b3f666f1c4d9a5b4b3b7d3807be1014dbc7a787d8e484c038a581465db1c0c` |
| 15 | `def` | [getInLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/getinlocaldecl--13665a4f8059885baa234c9b.md) | 146 | `declaration-track:13665a4f8059885baa234c9b2aaf5e1be8176a85ece2d741e5345bc33ea13d35` |
| 16 | `def` | [getInGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RulePattern/Variant01f61a1c3e7d673dfb32251a0675142bd35341cd025d2055edc59393213765fe.lean/declarations/getingoal--938746aa991dcfda34438193.md) | 153 | `declaration-track:938746aa991dcfda34438193b929b403d37f9109dbeafaf68b912e7b92e229e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
