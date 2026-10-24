# Verification target: GRWTSK.Order.Embeddings.PrefixObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b3ea7d1c58089b5456924efa8758fbc8dcef81e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Order/Embeddings/PrefixObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b3ea7d1c58089b5456924efa8758fbc8dcef81e`.

Source path: `GRWTSK/Order/Embeddings/PrefixObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Order/Embeddings/PrefixObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreservesPrefix](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/preservesprefix--f34b96a58a7058eb25cfa2c3.md) | 31 | `declaration-track:f34b96a58a7058eb25cfa2c376bc8f3e43f41b795a2005b882023559f9053a1f` |
| 2 | `def` | [ReflectsPrefix](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/reflectsprefix--c593cc9d6457950383d39b9c.md) | 35 | `declaration-track:c593cc9d6457950383d39b9c33378bfe4a7ac497bf148ce6c7059e046537e9f7` |
| 3 | `theorem` | [comparable_of_common_upper](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/comparable-of-common-upper--1e17c5e011a2ded00daca656.md) | 39 | `result-track:1e17c5e011a2ded00daca6565d59a16903a12327101dcb75932c23006dfd3d0c` |
| 4 | `theorem` | [no_prefix_representation_of_incomparable_upper](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/no-prefix-representation-of-incomparable-upper--9630066ddae6a2add9eb1375.md) | 48 | `result-track:9630066ddae6a2add9eb13750cad45f72ac553f3daa7c32fe8408c3e419665af` |
| 5 | `def` | [chainAddress](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/chainaddress--497b3603de35ac17605ad6f5.md) | 57 | `declaration-track:497b3603de35ac17605ad6f5532af71d2cd7832cb6ead91a8d4deae3082a93da` |
| 6 | `theorem` | [chainAddress_prefix_iff](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/chainaddress-prefix-iff--88cba82e405accd9b99c3d3a.md) | 59 | `result-track:88cba82e405accd9b99c3d3abb4f9a90800d0b7878d8faa444b32df35753e370` |
| 7 | `theorem` | [chainAddress_representation](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/chainaddress-representation--55e3b804dfe1620f657c741e.md) | 62 | `result-track:55e3b804dfe1620f657c741e8a313d8e4486ca166b85529c6a1b1e22a9ee4db5` |
| 8 | `theorem` | [chainAddress_injective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/chainaddress-injective--956e66c7ad797a561cd39c51.md) | 68 | `result-track:956e66c7ad797a561cd39c51b8778520b68cb2dc597b64d3b865540759dab088` |
| 9 | `inductive` | [Diamond](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/diamond--c28b36fd80793aedbb75aba6.md) | 74 | `declaration-track:c28b36fd80793aedbb75aba6bb4e40aa55644e78c226a7ffb12f358a7652f126` |
| 10 | `def` | [DiamondLe](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/diamondle--5cde0fc6f8d20cdbf6f637ad.md) | 79 | `declaration-track:5cde0fc6f8d20cdbf6f637adcca16a92e5f2fdb46065ad45159ddaade0b847f0` |
| 11 | `theorem` | [diamondLe_refl](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/diamondle-refl--cde04dea2a1d050b0ac61009.md) | 81 | `result-track:cde04dea2a1d050b0ac610090caeb764f09eefaba6593ae13c07dfc59dfc67f7` |
| 12 | `theorem` | [diamondLe_trans](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/diamondle-trans--8d80ebc73f48e3b6b7990a13.md) | 83 | `result-track:8d80ebc73f48e3b6b7990a1362c2d00346c5a48768fbf1d9a2f4532c73cd18b8` |
| 13 | `theorem` | [diamondLe_antisymm](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/diamondle-antisymm--33e884b8311181930a5ea8fe.md) | 87 | `result-track:33e884b8311181930a5ea8feab2c4145eecb2507f35dfbcb6a7b53f42d2be21a` |
| 14 | `theorem` | [diamond_has_no_prefix_representation](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/diamond-has-no-prefix-representation--686241ad2519b3b40e35ecd6.md) | 92 | `result-track:686241ad2519b3b40e35ecd6415fadbe85972a3634d22e7a2007717cf8115234` |
| 15 | `def` | [diamondRank](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/diamondrank--b143ab6fca8e7db1d1d3b22c.md) | 99 | `declaration-track:b143ab6fca8e7db1d1d3b22ce5b8cd75e8e9a98c0e8a5cffd62d22ae10b2c618` |
| 16 | `def` | [diamondAddress](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/diamondaddress--4fabbabd583d04944071fa30.md) | 105 | `declaration-track:4fabbabd583d04944071fa302482e065234464af3416e370f9f7946d953feabc` |
| 17 | `theorem` | [diamondAddress_injective](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/diamondaddress-injective--2ec0b862c0c82172a1b5abef.md) | 107 | `result-track:2ec0b862c0c82172a1b5abefe0405c59bade3b5d1a9df89639ce7a926933f7cd` |
| 18 | `theorem` | [diamondAddress_preserves](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/diamondaddress-preserves--8bcca985170b4cdfb8113e7a.md) | 115 | `result-track:8bcca985170b4cdfb8113e7a257ca984783620673bef442b24fc042a7c4933b5` |
| 19 | `theorem` | [diamondAddress_not_reflects](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/diamondaddress-not-reflects--df062c6c5f111b0f313b2f16.md) | 121 | `result-track:df062c6c5f111b0f313b2f16f5a1a21180206f502a1253cd2689b4b5f5bba2ed` |
| 20 | `theorem` | [injective_preservation_without_reflection](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/PrefixObstruction__SourceOccurrence690ebab3feeac57c2abc937e.lean/declarations/injective-preservation-without-reflection--f22160198b44dd0254d0c599.md) | 128 | `result-track:f22160198b44dd0254d0c599cab16ed6aa2b47a80eb446a73e62cd377301418c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
