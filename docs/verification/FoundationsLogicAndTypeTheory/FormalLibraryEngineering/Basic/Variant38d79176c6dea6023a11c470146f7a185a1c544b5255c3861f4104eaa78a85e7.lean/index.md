# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22f5473c40461fea0bcdba5e0381da4d0e7459cf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22f5473c40461fea0bcdba5e0381da4d0e7459cf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Range](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/range--fc1bccecd3bc65e2bf491686.md) | 20 | `declaration-track:fc1bccecd3bc65e2bf4916868a45e521ec3ec7f8020f1a8e2c61724c85a23d44` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/instance--ce085e1a9c77d3830d0ea498.md) | 26 | `declaration-track:ce085e1a9c77d3830d0ea498e0797bb75a7d57f35fc9f6d035d64c42094ea3d9` |
| 3 | `def` | [size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/size--213530ecf5b802dffa5706b6.md) | 33 | `declaration-track:213530ecf5b802dffa5706b6c669037db62a4db1184d2afbabebb45d94b68dda` |
| 4 | `def` | [forIn'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/forin--7550a4d539f63e89d007a129.md) | 35 | `declaration-track:7550a4d539f63e89d007a12999dee24d05aba6d9d86b6278c4d894a850777b01` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/instance--4d8aa55831b3767e6d3046c9.md) | 50 | `declaration-track:4d8aa55831b3767e6d3046c987e607c556f59b7b8d90c76fa1c9898e02ad566f` |
| 6 | `def` | [forM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/form--7700d73fd525f3324dbb8cd9.md) | 55 | `declaration-track:7700d73fd525f3324dbb8cd9dc7ad43310312ca3df991626a5a0e39a379730cd` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/instance--72e802b86493112f4a95b35b.md) | 66 | `declaration-track:72e802b86493112f4a95b35b49f12924f1fe8a00de2406ad52d800c29fdfe288` |
| 8 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/macro-rules--6f14e8d5be3119c73af166c3.md) | 74 | `declaration-track:6f14e8d5be3119c73af166c33feb5f2aa01139fabcd456a726a8ee9386cb8f94` |
| 9 | `theorem` | [Membership.mem.upper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/membership-mem-upper--25f56f3f4e392b3b55c0ef20.md) | 83 | `result-track:25f56f3f4e392b3b55c0ef20581d1e706d294f5a3b28d0b0e7ca3f1e550f63cc` |
| 10 | `theorem` | [Membership.mem.lower](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/membership-mem-lower--c319975117c4f85e28f15e79.md) | 85 | `result-track:c319975117c4f85e28f15e798528dd5a0c08ee9584d8361caa5549fb1ae50b4c` |
| 11 | `theorem` | [Membership.mem.step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/membership-mem-step--011471e15ffcd4f373a20418.md) | 87 | `result-track:011471e15ffcd4f373a20418ef5b9eb7dac2e70a058369b81047f2568b1b0689` |
| 12 | `theorem` | [Membership.get_elem_helper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/membership-get-elem-helper--d433b145a021e82270b93ec8.md) | 89 | `result-track:d433b145a021e82270b93ec85d6003d6d33b06093e022debf179ef3f88a53a7b` |
| 13 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38d79176c6dea6023a11c470146f7a185a1c544b5255c3861f4104eaa78a85e7.lean/declarations/macro-rules--2a640552a1436f9697414d94.md) | 92 | `declaration-track:2a640552a1436f9697414d94b1a2e7bc2c97d47fa07c435fdd6c72a9aa3340cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
