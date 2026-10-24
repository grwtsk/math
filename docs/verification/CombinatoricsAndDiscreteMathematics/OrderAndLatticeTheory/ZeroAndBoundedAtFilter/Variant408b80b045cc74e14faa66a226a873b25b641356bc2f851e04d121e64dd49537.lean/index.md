# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ZeroAndBoundedAtFilter.Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "236487252285794729ef53db6bc52a9aa5af9d2e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `236487252285794729ef53db6bc52a9aa5af9d2e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Pi` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ZeroAtFilter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/zeroatfilter--0a61637280bab7d5fa99e7d8.md) | 37 | `declaration-track:0a61637280bab7d5fa99e7d88624b8e7bef83ee84763c64f6e08a15b909c0e77` |
| 2 | `theorem` | [zero_zeroAtFilter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/zero-zeroatfilter--02590d6c653499b376856b8a.md) | 40 | `result-track:02590d6c653499b376856b8abe05bf7fda79355576bd71415262ecde6615a868` |
| 3 | `theorem` | [ZeroAtFilter.add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/zeroatfilter-add--20158c958df38d1e721b06f6.md) | 44 | `result-track:20158c958df38d1e721b06f63bfeca1b7dfa2d00cb00bffc7899041e24d42a5c` |
| 4 | `theorem` | [ZeroAtFilter.neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/zeroatfilter-neg--ad57e749c488f3bf26f41ced.md) | 49 | `result-track:ad57e749c488f3bf26f41cedcf3c509dfb3bc5e6c8f547446b57b1c1ceb2a377` |
| 5 | `theorem` | [ZeroAtFilter.smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/zeroatfilter-smul--342a996e74a310e5c748b33c.md) | 53 | `result-track:342a996e74a310e5c748b33c308221d9037012aeb120c84bbbb2baf2eb4686b1` |
| 6 | `def` | [zeroAtFilterSubmodule](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/zeroatfiltersubmodule--1b44155d81bca41a40f25230.md) | 60 | `declaration-track:1b44155d81bca41a40f252302559324de443aa902319d0972f19cf7ef81e1018` |
| 7 | `def` | [zeroAtFilterAddSubmonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/zeroatfilteraddsubmonoid--07d0387a49a4823ce9efd499.md) | 71 | `declaration-track:07d0387a49a4823ce9efd4990c97c15f50a0b528be92219c7e99effb5ac978ef` |
| 8 | `def` | [BoundedAtFilter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/boundedatfilter--e78efe561d1e55cc63ac5060.md) | 79 | `declaration-track:e78efe561d1e55cc63ac50601a384bdbf5da7a873489bbb045f540081c206a19` |
| 9 | `theorem` | [ZeroAtFilter.boundedAtFilter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/zeroatfilter-boundedatfilter--46036fe896009eb3fb695008.md) | 82 | `result-track:46036fe896009eb3fb695008dc24168f5caaea53c4656880466f56106f799a81` |
| 10 | `theorem` | [const_boundedAtFilter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/const-boundedatfilter--422d130817b3b692bc41846e.md) | 86 | `result-track:422d130817b3b692bc41846eaa9a6629c769b1ff7715cbe8f8327d536779d179` |
| 11 | `theorem` | [BoundedAtFilter.add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/boundedatfilter-add--9c3ea2adcd406307e4466e07.md) | 92 | `result-track:9c3ea2adcd406307e4466e07386132359f004d77f39973eca6c518797b513705` |
| 12 | `theorem` | [BoundedAtFilter.neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/boundedatfilter-neg--f450943bd4bf341684d78b04.md) | 96 | `result-track:f450943bd4bf341684d78b044f7b83f0fc7abde2611c932cf41a375a03309041` |
| 13 | `theorem` | [BoundedAtFilter.smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/boundedatfilter-smul--6238a33f2da4cceb5e68be1e.md) | 100 | `result-track:6238a33f2da4cceb5e68be1efa23fa8badbe898fbbdb1c8c883e20113dca8cce` |
| 14 | `theorem` | [BoundedAtFilter.mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/boundedatfilter-mul--bb7460e27517e8a67d91f40f.md) | 105 | `result-track:bb7460e27517e8a67d91f40f50cf1bc974c2681741aec0f95e567efad3419d24` |
| 15 | `def` | [boundedFilterSubmodule](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/boundedfiltersubmodule--0554b4cd98a823086acf1a32.md) | 113 | `declaration-track:0554b4cd98a823086acf1a32b3eb83e8bbc6d2768a1fd4b9b1e067a57963f61e` |
| 16 | `def` | [boundedFilterSubalgebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZeroAndBoundedAtFilter/Variant408b80b045cc74e14faa66a226a873b25b641356bc2f851e04d121e64dd49537.lean/declarations/boundedfiltersubalgebra--68c082a0d9ef9feb9c6aed9f.md) | 123 | `declaration-track:68c082a0d9ef9feb9c6aed9f15c7ecc6023a3bfc3e0827bdab281c06aea6ea58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
