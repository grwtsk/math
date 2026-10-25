# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Venn.Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d432785d52ad5f71603e70ebbdaeeacce6c46f5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d432785d52ad5f71603e70ebbdaeeacce6c46f5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.HashMap` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic` — import line 7; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.PenroseDiagram` — import line 8; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.HtmlDisplay` — import line 9; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.Panel` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasSubset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/hassubset--1fd29168a5538923549ac169.md) | 21 | `declaration-track:1fd29168a5538923549ac16999e79ff0b18bb3ca4842571ca183e822ef15135c` |
| 2 | `def` | [Set](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/set--0c8959db35aabd5645c46903.md) | 29 | `declaration-track:0c8959db35aabd5645c469039024b4a3808bede9cd1955f196fdfa462c0fffa9` |
| 3 | `def` | [Mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/mem--e27b202232c31013ef93a992.md) | 34 | `declaration-track:e27b202232c31013ef93a99252104dadd262e9a4498818e2863951580f03a1b4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/instance--2c6bfbdbebafc3365d1f85e0.md) | 37 | `declaration-track:2c6bfbdbebafc3365d1f85e0198e74ce0f3df05823b42498cbd9914a5709c2db` |
| 5 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/ext--75936544acb6de0cb2d67181.md) | 40 | `result-track:75936544acb6de0cb2d67181ebfaa76d4a2fa607d74192898fb8076bf2a284b8` |
| 6 | `def` | [Subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/subset--a2c90deac3865caebe5c7a4a.md) | 43 | `declaration-track:a2c90deac3865caebe5c7a4afdbba369151b74bef65c8be88a581cee6ccbebf5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/instance--2aff5efe5edfe2748953a8ee.md) | 48 | `declaration-track:2aff5efe5edfe2748953a8ee488db69404c9e1b57b0a69f2c3e8c14e203de8dd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/instance--95f97f4644d72a08be203256.md) | 51 | `declaration-track:95f97f4644d72a08be203256383be48245e8e1db617d0f571917393ef900fbd4` |
| 9 | `def` | [isSubsetPred?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/issubsetpred--50915631aad260eaa6fe1ed4.md) | 59 | `declaration-track:50915631aad260eaa6fe1ed4d01a02205e50e82c496b31f6a3291e199dc5da92` |
| 10 | `abbrev` | [ExprEmbeds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/exprembeds--497a5f9a1981a3aeca82d90d.md) | 64 | `declaration-track:497a5f9a1981a3aeca82d90d8102c1a365fb3ec43a1dd0b02c51e6079675d457` |
| 11 | `def` | [mkSetDiag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/mksetdiag--ce51fc1d5cd64b3a0d219a03.md) | 67 | `declaration-track:ce51fc1d5cd64b3a0d219a036733e8307464d309f8e6af8559b0245e474a1c19` |
| 12 | `def` | [isSetGoal?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/issetgoal--fc7a9525f3a25b199657dbca.md) | 77 | `declaration-track:fc7a9525f3a25b199657dbcac6b5f2882c28e120b00ca66083344ebefd55c1b4` |
| 13 | `structure` | [Params](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/params--9eb76d3893e7b6bfe40baf2f.md) | 98 | `declaration-track:9eb76d3893e7b6bfe40baf2f3f5be4455f51460b103ed06a2cd1782cd29ee4e1` |
| 14 | `structure` | [Response](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/response--98e5f1904b9154ef75f3264f.md) | 105 | `declaration-track:98e5f1904b9154ef75f3264f5028b8be3ac514a99d11c69c2bae5b8e9df02e04` |
| 15 | `def` | [getVennGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/getvenngoal--29280f3da463994560e79ceb.md) | 112 | `declaration-track:29280f3da463994560e79ceb8aed10f47d5abc037158cf7c77c3644cc08c3c89` |
| 16 | `def` | [SetDisplayPanel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/setdisplaypanel--6df82030a8e2a9d9578b1096.md) | 123 | `declaration-track:6df82030a8e2a9d9578b10964f92a4dae4a03edf1d29f352bf20ac8ef78c0fdd` |
| 17 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/syntax--e215e31037f11a3e4b221948.md) | 166 | `declaration-track:e215e31037f11a3e4b221948a83ffbb13b48a91603166c6985af79dbf810884c` |
| 18 | `def` | [withVennDisplay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/withvenndisplay--44f0a28a0ee24bc7bc3280a8.md) | 170 | `declaration-track:44f0a28a0ee24bc7bc3280a82aed29f94196c3b1e84ddea52c4354ee004bbbbf` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Venn/Variantbe957bf9b9e50a2b6667f009b61bca85133a58b00621b59cc06cb257382fdb75.lean/declarations/example--fccd8f9d5204cfff01be4dd2.md) | 176 | `declaration-track:fccd8f9d5204cfff01be4dd224c274750cde0fef160ff0a4fcc0e7c0fbcc7b2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
