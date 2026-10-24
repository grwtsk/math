# Verification target: GRWTSK.Order.Taxonomy.Core

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe702c2a0701127e60846aa3097a89f22af76b9a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Order/Taxonomy/Core.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe702c2a0701127e60846aa3097a89f22af76b9a`.

Source path: `GRWTSK/Order/Taxonomy/Core.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Order/Taxonomy/Core.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Order.Taxonomy.Address`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Address__SourceOccurrence033432537d9d9af36a8e9a6f.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Taxonomy](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/taxonomy--6fda8119951d29453884c4a4.md) | 16 | `declaration-track:6fda8119951d29453884c4a46c10bd5ede93f7990c1b0ad52e12b5661932f5ce` |
| 2 | `structure` | [Taxonomy.Node](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/taxonomy-node--d7cf09cbbcd0f45e3fb1c8b5.md) | 25 | `declaration-track:d7cf09cbbcd0f45e3fb1c8b5c4abb7bf1f9262fb586221909df6220e5c4600bf` |
| 3 | `theorem` | [Taxonomy.Node.eq_of_val_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/taxonomy-node-eq-of-val-eq--42554a4071d5d1d993fb6254.md) | 29 | `result-track:42554a4071d5d1d993fb6254ec61084346fe19ec72ce67ac35eccc301a214530` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/instance--3d7cbaca371dc1f1b9fb68e2.md) | 38 | `declaration-track:3d7cbaca371dc1f1b9fb68e275a80058c4f59462f4dd3e15882ad84c9c3672ad` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/instance--aaa9f1d2468bfefb4d84c169.md) | 44 | `declaration-track:aaa9f1d2468bfefb4d84c169a4c3d302ad9633adb8707b814338352b171c5b1a` |
| 6 | `def` | [Taxonomy.lca](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/taxonomy-lca--03023b5de52c4c16c50d2cf8.md) | 49 | `declaration-track:03023b5de52c4c16c50d2cf86d816850b9a5465486cdcd77229a5c004d623dc1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/instance--69e581b9103efa6da7181f2a.md) | 52 | `declaration-track:69e581b9103efa6da7181f2a429ac21277d1f91f10b8af4b52fc7b319df602d6` |
| 8 | `theorem` | [Taxonomy.ancestors_chain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/taxonomy-ancestors-chain--b9d30aad151d34f82f921351.md) | 60 | `result-track:b9d30aad151d34f82f921351a3e1230de75136d3618e0a4464feb0278ba4e710` |
| 9 | `def` | [ofPaths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/ofpaths--40d4f936ab615f3fe473a4db.md) | 65 | `declaration-track:40d4f936ab615f3fe473a4db40b9d34cccc62f61670954317b6cf2d1ac3fed99` |
| 10 | `def` | [ClosedPaths](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/closedpaths--42130dd184164417bcd94508.md) | 81 | `declaration-track:42130dd184164417bcd94508d3d477e7c5c43ed98d3499d6eec89785820c0724` |
| 11 | `def` | [checkClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/checkclosed--c522c9d494e7901f31d7f7fe.md) | 85 | `declaration-track:c522c9d494e7901f31d7f7fe19a1dd7f209fb3baf39520dd3a87b92e8d630f42` |
| 12 | `theorem` | [checkClosed_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/checkclosed-sound--a8d1b133c11074cb77adfe20.md) | 89 | `result-track:a8d1b133c11074cb77adfe20bf13c7b35b539318340d9ca98a249589003bf80e` |
| 13 | `theorem` | [ofPaths_exact](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/ofpaths-exact--bcf2ee199deceec6106105f7.md) | 96 | `result-track:bcf2ee199deceec6106105f7c579243201b7f8cdad6ffa958b87080c958ce2a5` |
| 14 | `structure` | [FinitePresentation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/finitepresentation--6b7dc8af763402a510f9f787.md) | 107 | `declaration-track:6b7dc8af763402a510f9f787a37608c23f8d6d930509c41e8b666c5402dbebc0` |
| 15 | `theorem` | [finite_representation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/finite-representation--ffe6387487bbc7f9f90709a1.md) | 112 | `result-track:ffe6387487bbc7f9f90709a1988ba4a10102a34a72b0ea844543d4f1f58b091e` |
| 16 | `def` | [representationOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/representationorderiso--e2e80996e749c878f55b118b.md) | 123 | `declaration-track:e2e80996e749c878f55b118b035bd25a59748b5579fbcbee1ef13e0b39b245fd` |
| 17 | `def` | [RadixBounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/radixbounded--4fba00cc76f5c8c743fc7ffd.md) | 132 | `declaration-track:4fba00cc76f5c8c743fc7ffd5f092c1c6af7dc29bd1723c9689e4ad1c0985b89` |
| 18 | `def` | [rootAddress](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/declarations/rootaddress--edd99500c09204740f71f769.md) | 136 | `declaration-track:edd99500c09204740f71f76957e94945f2beb35d9f7e6a30fa43006f09b70b46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
