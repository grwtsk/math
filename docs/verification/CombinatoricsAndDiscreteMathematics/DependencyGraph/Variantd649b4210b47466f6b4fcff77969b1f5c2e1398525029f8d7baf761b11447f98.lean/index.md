# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DependencyGraph.Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9eb2cf21c5fc62682143db925e721f578776dde0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9eb2cf21c5fc62682143db925e721f578776dde0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Union` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFounded` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DependencyGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/dependencygraph--7e9987fae702d21dcef0d231.md) | 31 | `declaration-track:7e9987fae702d21dcef0d231e896304539095848435c78c68eaf7cab364fe6ef` |
| 2 | `def` | [DependencyGraph.ofRank](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/dependencygraph-ofrank--081252c9af95a339cb88a3ac.md) | 45 | `declaration-track:081252c9af95a339cb88a3ac77644dd4fc68a0c71aff8091d8cb879cd498b660` |
| 3 | `def` | [DirectDep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/directdep--4e197368803930ca7d742d7a.md) | 64 | `declaration-track:4e197368803930ca7d742d7a49c3a05a6515af39778bb176d94095296a561b20` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/instance--c1e2e513beb3841c4076bf1e.md) | 67 | `declaration-track:c1e2e513beb3841c4076bf1ebecbd423e6b2bdb23e00cf86489be17ce54b40fe` |
| 5 | `abbrev` | [DepReachable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/depreachable--e482ae455d7f027967b1af9e.md) | 71 | `declaration-track:e482ae455d7f027967b1af9ea22d4d9f30adb9293da84bf5aa420515f669832b` |
| 6 | `def` | [dependencyCone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/dependencycone--f21cf294c95eeae553f04acb.md) | 78 | `declaration-track:f21cf294c95eeae553f04acb4f1c2321c90289d4c40879e91c5d73368c0717d5` |
| 7 | `theorem` | [dependencyCone_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/dependencycone-eq--593382c7c3657ea00ed06958.md) | 84 | `result-track:593382c7c3657ea00ed069581f5fb75c9c8c10827a25e1a7ee54fd245b8a640d` |
| 8 | `theorem` | [mem_dependencyCone_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/mem-dependencycone-iff--43841e7ddb55ddeaae65dc6b.md) | 91 | `result-track:43841e7ddb55ddeaae65dc6b1f75346864bfa853db875d9162eea7691df647f6` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/instance--8a9281653942fb5a937c6ea3.md) | 108 | `declaration-track:8a9281653942fb5a937c6ea3d3535578288cc3aaa79de74ff1a43907e4f2ba11` |
| 10 | `def` | [depClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/depclosure--714dd724bbec3e305061b3b8.md) | 113 | `declaration-track:714dd724bbec3e305061b3b8280cbf1a037e40cc37c24e1f58bab399c75ae66b` |
| 11 | `theorem` | [mem_depClosure_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/mem-depclosure-iff--2f8eb1eae0f124ba26c08b16.md) | 117 | `result-track:2f8eb1eae0f124ba26c08b16aa76febb148304366704a125c72cba514c3653f6` |
| 12 | `theorem` | [root_mem_depClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/root-mem-depclosure--542a6fec624d61a4a3965e36.md) | 124 | `result-track:542a6fec624d61a4a3965e366afe6ac677758571446556fc349935a210c10daa` |
| 13 | `theorem` | [dependency_mem_depClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/dependency-mem-depclosure--754934dc76c43e9781c4dd46.md) | 131 | `result-track:754934dc76c43e9781c4dd4637cb78e4155594423c25a5a2201177c33ab50da0` |
| 14 | `theorem` | [depClosure_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/depclosure-minimal--271e8c3ee2283fda173c0dec.md) | 143 | `result-track:271e8c3ee2283fda173c0dec4f604932ee8b373dbaf57aa5e2f24e697835c745` |
| 15 | `theorem` | [depClosure_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/depclosure-mono--ea3acf6e2b41844d0e249a68.md) | 160 | `result-track:ea3acf6e2b41844d0e249a68047a2c4c77301f5f02b2c054a065587bbd653a69` |
| 16 | `theorem` | [depClosure_idempotent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/depclosure-idempotent--fa5517194609131181ac6c5d.md) | 170 | `result-track:fa5517194609131181ac6c5d38cef2dd23362ea06aa7efc0307c484e80050843` |
| 17 | `def` | [DependencyEnv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/dependencyenv--5bef26be5c7d6ec8117e9faf.md) | 183 | `declaration-track:5bef26be5c7d6ec8117e9faf52d0a8391051d0c26c7d4f92ad94cd90c0831024` |
| 18 | `structure` | [Tenant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/tenant--d2a7f2698973b685ccf0d8f9.md) | 190 | `declaration-track:d2a7f2698973b685ccf0d8f950367c3e59d216ac0adeaf30b129b2d5fb470645` |
| 19 | `def` | [Environment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/environment--0bfb209b159e844cd0de843d.md) | 196 | `declaration-track:0bfb209b159e844cd0de843d5fe9c4ff6e0b947f452bf975ebb3b952c20e2ca4` |
| 20 | `def` | [RootExports](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/rootexports--e9733cd96381b1add949ad2e.md) | 203 | `declaration-track:e9733cd96381b1add949ad2e26ba448e533a611abeab558a1f5fa0f94b078d63` |
| 21 | `def` | [Environment.toRootExports](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantd649b4210b47466f6b4fcff77969b1f5c2e1398525029f8d7baf761b11447f98.lean/declarations/environment-torootexports--d45eedf49050f3d8da586ed7.md) | 210 | `declaration-track:d45eedf49050f3d8da586ed71a46d4e3aba783a75cd6df3c2b5a648ce8d9a98e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
