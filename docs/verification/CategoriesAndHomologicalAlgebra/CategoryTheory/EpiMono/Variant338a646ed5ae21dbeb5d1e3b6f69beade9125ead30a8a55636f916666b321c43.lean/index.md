# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "149ef07f0b2c887e304bd08864289ecbe180bc0b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `149ef07f0b2c887e304bd08864289ecbe180bc0b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [unop_mono_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/unop-mono-of-epi--908c58424548c654bfa43cd2.md) | 33 | `declaration-track:908c58424548c654bfa43cd28c2507cbbac76c513db8d3a9c8966c460c8f9147` |
| 2 | `instance` | [unop_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/unop-epi-of-mono--3970d0cc4ffa0d1e663dfc56.md) | 37 | `declaration-track:3970d0cc4ffa0d1e663dfc56452be19dab13db04b029e1b71a554ce4cbeb6e86` |
| 3 | `instance` | [op_mono_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/op-mono-of-epi--5cbe855c816be96335088738.md) | 41 | `declaration-track:5cbe855c816be96335088738be62f276ed1e8ba6e70a3910361b5f7a9aa0101c` |
| 4 | `instance` | [op_epi_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/op-epi-of-mono--60fe7096fd6883f81a7f33a9.md) | 45 | `declaration-track:60fe7096fd6883f81a7f33a99d7e599084efe246fab72cc67d1eabbd5a123d83` |
| 5 | `structure` | [SplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/splitmono--426dfceefeb537b2be25cb1f.md) | 57 | `declaration-track:426dfceefeb537b2be25cb1f61f150d91168df6f89eb6a3ed9c2d3bd4b1989b1` |
| 6 | `class` | [IsSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/issplitmono--249d5f7f830f8b6f0485287c.md) | 67 | `declaration-track:249d5f7f830f8b6f0485287ce31ead3948651add143fbc07ff906f599fd82c6b` |
| 7 | `theorem` | [IsSplitMono.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/issplitmono-mk--b80caf924ca034fe25040e7a.md) | 74 | `result-track:b80caf924ca034fe25040e7a2d50960db5f1c92dc02b3e4225c1eef89ca904f9` |
| 8 | `structure` | [SplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/splitepi--3e6afbd70bc452d195780f87.md) | 87 | `declaration-track:3e6afbd70bc452d195780f87862929c532ece8b76d7d1e171c616cddba77c6c3` |
| 9 | `class` | [IsSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/issplitepi--6e59cfe96e55f99877a0386a.md) | 97 | `declaration-track:6e59cfe96e55f99877a0386aeda42a916f3bbd77cf0c87fd441ff3b1cfb65110` |
| 10 | `theorem` | [IsSplitEpi.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/issplitepi-mk--359f6455c42986aee50c2d32.md) | 104 | `result-track:359f6455c42986aee50c2d3208f69ab61b90c8cde1a07074f7746335e72adb5e` |
| 11 | `def` | [retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/retraction--8e11255febd195b6fc9544f1.md) | 109 | `declaration-track:8e11255febd195b6fc9544f192d8e3d4ab890b9221eb62ccf1e21b48e34c129a` |
| 12 | `theorem` | [IsSplitMono.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/issplitmono-id--009d3b49dde53336cbe2451d.md) | 114 | `result-track:009d3b49dde53336cbe2451d7f582e449be90a1db585ffcbccb05d79136e2255` |
| 13 | `def` | [SplitMono.splitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/splitmono-splitepi--4bcd4401fbf5babab0c8b695.md) | 119 | `declaration-track:4bcd4401fbf5babab0c8b6953fa2699cdcf5d323bdab3336c03b2e1147652ba3` |
| 14 | `instance` | [retraction_isSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/retraction-issplitepi--7fedd440a640c43a64c4247d.md) | 124 | `declaration-track:7fedd440a640c43a64c4247d0d703bfdd48e1cc8a5fc9a7e7ef8e46fc5643393` |
| 15 | `theorem` | [isIso_of_epi_of_isSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/isiso-of-epi-of-issplitmono--d147db35a953fd78d1927cfb.md) | 130 | `result-track:d147db35a953fd78d1927cfbcbdfafe1545d5290d5384c12cf2f6f247d2e733e` |
| 16 | `def` | [section_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/section--b903839cb282831c4ac924ec.md) | 137 | `declaration-track:b903839cb282831c4ac924ec50427f617b00728f8de5644283aa1230990c31b6` |
| 17 | `theorem` | [IsSplitEpi.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/issplitepi-id--63638ebca4eab820f9dda07a.md) | 142 | `result-track:63638ebca4eab820f9dda07abcb3083fc77655fc3150e664e3022d1cd8d10af2` |
| 18 | `def` | [SplitEpi.splitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/splitepi-splitmono--ffeb17f97fd88930f0ff2eb5.md) | 147 | `declaration-track:ffeb17f97fd88930f0ff2eb52ee0383fea9bbdf0ad92468ce1466eb8e6ed01ed` |
| 19 | `instance` | [section_isSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/section-issplitmono--3f696e7b57d777ad0ae873df.md) | 152 | `declaration-track:3f696e7b57d777ad0ae873df6141bd1c93f11218f01b1a72ce0808d8edcd2a8b` |
| 20 | `theorem` | [isIso_of_mono_of_isSplitEpi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/isiso-of-mono-of-issplitepi--0b7f82009f8190a56959e2c4.md) | 157 | `result-track:0b7f82009f8190a56959e2c45174bddc16a23128794ec5e163372e4e6899ef6a` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/instance--cb03258ba5712dfec9fb0f1c.md) | 162 | `declaration-track:cb03258ba5712dfec9fb0f1cdfface3bf2aa1c70d25724ae16f5a5787ced2da1` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/instance--69d36ed74b1ede473dab30f8.md) | 167 | `declaration-track:69d36ed74b1ede473dab30f88eecc742498fb076a4af9d9053793e2e1ce99f74` |
| 23 | `theorem` | [SplitMono.mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/splitmono-mono--0f2e9e271134b49566c087b4.md) | 171 | `result-track:0f2e9e271134b49566c087b4649633735ad1bffe3e980db0638fe294a640def0` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/instance--e7f0f3a7f583afcd46e93776.md) | 176 | `declaration-track:e7f0f3a7f583afcd46e93776dd27f7fb9b6d072a4104a103a1a3c9edfe3c2b46` |
| 25 | `theorem` | [SplitEpi.epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/splitepi-epi--f92d96da5ddc719b8ec41d25.md) | 180 | `result-track:f92d96da5ddc719b8ec41d255e04289d53ccf11a061717157a63380e86b04e86` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/instance--750e654b8e46d158316798ce.md) | 185 | `declaration-track:750e654b8e46d158316798cef016bba0adc4841eaff3a23b227a579af8fcc9fe` |
| 27 | `theorem` | [IsIso.of_mono_retraction'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/isiso-of-mono-retraction--dfcae6abbeba4f15362b2fc3.md) | 190 | `result-track:dfcae6abbeba4f15362b2fc35b930ca676ce55e1e00b30d06f5e01feeb47d794` |
| 28 | `theorem` | [IsIso.of_mono_retraction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/isiso-of-mono-retraction--56f7ffe296c83635b1b0ce0e.md) | 196 | `result-track:56f7ffe296c83635b1b0ce0e26fbb5b46c58a06c5d98aabdddfdb46a9815dbd5` |
| 29 | `theorem` | [IsIso.of_epi_section'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/isiso-of-epi-section--d320d44e2dd4e6bacdfc7e9e.md) | 202 | `result-track:d320d44e2dd4e6bacdfc7e9e223de9b2a49630066d2c4ec73b72e1a72cc10e35` |
| 30 | `theorem` | [IsIso.of_epi_section](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/isiso-of-epi-section--999e2427836ac3fcfd29856d.md) | 208 | `result-track:999e2427836ac3fcfd29856d55e608c67cacd9c5e7fe17713548efa57431fa9f` |
| 31 | `def` | [Groupoid.ofTruncSplitMono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/groupoid-oftruncsplitmono--55bcc06d77147e4c882ec7a6.md) | 215 | `declaration-track:55bcc06d77147e4c882ec7a6da5c711a43ee8ee6e2626a29e0a6e4477f9fb619` |
| 32 | `class` | [SplitMonoCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/splitmonocategory--620fbc2bdd3689f18b88929b.md) | 229 | `declaration-track:620fbc2bdd3689f18b88929ba45c025045cf3fd35c82514b37a7f1e6dc8bbc4d` |
| 33 | `class` | [SplitEpiCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/splitepicategory--0c04e772c8c56ea11262ee1c.md) | 236 | `declaration-track:0c04e772c8c56ea11262ee1c88792492933dba3a12f4b29c1b9f64735a3d0469` |
| 34 | `theorem` | [isSplitMono_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/issplitmono-of-mono--1219a46347121b7c7bd35a05.md) | 246 | `result-track:1219a46347121b7c7bd35a05dbdf07cd5b9be857848739f50729138ad3c1c6c0` |
| 35 | `theorem` | [isSplitEpi_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/issplitepi-of-epi--ff3df944a2bceeb21c5d3a6c.md) | 252 | `result-track:ff3df944a2bceeb21c5d3a6c8a2c6135e4899dbde47d1636e4729e15624f76da` |
| 36 | `def` | [SplitMono.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/splitmono-map--d671bfdf63dff7ed464a2d2b.md) | 262 | `declaration-track:d671bfdf63dff7ed464a2d2b683fb63c67cdc2b816acd98a6b120151cc653b4d` |
| 37 | `def` | [SplitEpi.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/splitepi-map--94d8e29a06ac5431c752012d.md) | 270 | `declaration-track:94d8e29a06ac5431c752012d7b8c667752aebdba4cb368695613605452e7f9dd` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/instance--acdef031906e2ce427832c59.md) | 276 | `declaration-track:acdef031906e2ce427832c59e4fe0e4494868673872443e1503db85c7153e998` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant338a646ed5ae21dbeb5d1e3b6f69beade9125ead30a8a55636f916666b321c43.lean/declarations/instance--eaaf0b87baeed4846d6f1579.md) | 279 | `declaration-track:eaaf0b87baeed4846d6f15796a591d562996899d681bb3365b0487a0cef21a5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
