# Verification target: GRWTSK.Algebra.GroupTheory.Solvable.Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52d0b6de8636368d9883edc5763bc392df35ea51",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52d0b6de8636368d9883edc5763bc392df35ea51`.

Source path: `GRWTSK/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Abelianization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.ViaEmbedding` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Simple` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/derivedseries--8cff747e3ee142848ad4f3b3.md) | 35 | `declaration-track:8cff747e3ee142848ad4f3b37b8fce631c6882b3070f0b5de9b2eba90c628f11` |
| 2 | `theorem` | [derivedSeries_zero](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/derivedseries-zero--a968f96a319dcfd4f49e3c89.md) | 40 | `result-track:a968f96a319dcfd4f49e3c8980af6be38f0b6785d3d9454b87630c777720c645` |
| 3 | `theorem` | [derivedSeries_succ](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/derivedseries-succ--2e9c7bc84742553678a102a7.md) | 44 | `result-track:2e9c7bc84742553678a102a78dca20cc1f0a1b36774dc6b2c3e82422af607895` |
| 4 | `theorem` | [derivedSeries_normal](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/derivedseries-normal--d8a1681187dfa02f50bba6c9.md) | 48 | `result-track:d8a1681187dfa02f50bba6c9eee3172964dee397d458145f6247424bb328540d` |
| 5 | `theorem` | [derivedSeries_one](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/derivedseries-one--cd688082d57cb66018c5e250.md) | 54 | `result-track:cd688082d57cb66018c5e2503837276859a36a1aa58c79b3e8d68e1fcea330df` |
| 6 | `theorem` | [map_derivedSeries_le_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/map-derivedseries-le-derivedseries--a7676b3be17a6e53e9feef05.md) | 64 | `result-track:a7676b3be17a6e53e9feef05c66bb134087448778d49a52fb39a57be34d17419` |
| 7 | `theorem` | [derivedSeries_le_map_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/derivedseries-le-map-derivedseries--006f39cbe0a5fbf9be1e7948.md) | 70 | `result-track:006f39cbe0a5fbf9be1e7948feaaff3d5fcc5e56db744b304d58d0db2f2548f7` |
| 8 | `theorem` | [map_derivedSeries_eq](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/map-derivedseries-eq--e3028b1ff2f74d1c58e3bd7a.md) | 76 | `result-track:e3028b1ff2f74d1c58e3bd7a28888632c8f5ff79b856ed5b2f4e9998a5584072` |
| 9 | `class` | [IsSolvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/issolvable--44a19b993628bbfcddb78308.md) | 91 | `declaration-track:44a19b993628bbfcddb78308b37b62e4bb44b71850acf07f03f8395836f44cb3` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/instance--62ca37243cc6d2497b10365d.md) | 95 | `declaration-track:62ca37243cc6d2497b10365ddbaf3f7f5946ffbd307054039e545767cda74fa4` |
| 11 | `theorem` | [isSolvable_of_comm](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/issolvable-of-comm--20232a28368ad452f3d298ee.md) | 98 | `result-track:20232a28368ad452f3d298ee4e70e0954a9b41b6d6408f478e04c7ebc1c09cf3` |
| 12 | `theorem` | [isSolvable_of_top_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/issolvable-of-top-eq-bot--2eebc620087e57ed5ca20b17.md) | 104 | `result-track:2eebc620087e57ed5ca20b172f06df9c8ad7d6f5ca1902de2c565ebfb7c05308` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/instance--dda064c73827a198b9d3ba4d.md) | 107 | `declaration-track:dda064c73827a198b9d3ba4da3be14f2215bbfc9c5aec80af067d6bfe81c37c4` |
| 14 | `theorem` | [solvable_of_ker_le_range](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/solvable-of-ker-le-range--718c77fe4c4ab058e1bc0d54.md) | 112 | `result-track:718c77fe4c4ab058e1bc0d5480c6d9c44447775989b828989c5b8298e0e93c12` |
| 15 | `theorem` | [solvable_of_solvable_injective](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/solvable-of-solvable-injective--2af38c0743fa6ef1b65306e2.md) | 124 | `result-track:2af38c0743fa6ef1b65306e2b541535cc2b51b2f483c84814ca6f5f54042ed8a` |
| 16 | `instance` | [subgroup_solvable_of_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/subgroup-solvable-of-solvable--4eae5d9013923bd16e2232ce.md) | 128 | `declaration-track:4eae5d9013923bd16e2232ce3c81ee826b1dbc9f844ae95a9e24b852e7172eea` |
| 17 | `theorem` | [solvable_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/solvable-of-surjective--18ccf72d6b66e72660a62428.md) | 131 | `result-track:18ccf72d6b66e72660a62428b6725d0a995507bde23ef1ceda5ea1bec3441625` |
| 18 | `instance` | [solvable_quotient_of_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/solvable-quotient-of-solvable--9cb67b001e4d483f8cf99b20.md) | 134 | `declaration-track:9cb67b001e4d483f8cf99b2092bb5c635062f717c2541d885275bdfcac8baa8c` |
| 19 | `instance` | [solvable_prod](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/solvable-prod--ca4681654a26d3cd9ecf5f4b.md) | 138 | `declaration-track:ca4681654a26d3cd9ecf5f4b6a14eb4257d4a950df31bd659dcdc02f5e989870` |
| 20 | `theorem` | [IsSolvable.commutator_lt_top_of_nontrivial](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/issolvable-commutator-lt-top-of-nontrivial--d110044036c065404c300f2c.md) | 144 | `result-track:d110044036c065404c300f2c6ee4c4cb4bdf5cd5d95fd8bd165c70fed269aa27` |
| 21 | `theorem` | [IsSolvable.commutator_lt_of_ne_bot](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/issolvable-commutator-lt-of-ne-bot--00e979b12dda725427903bcf.md) | 154 | `result-track:00e979b12dda725427903bcf99a9444d9b79e49f39d033c0490f8c66fa074bd3` |
| 22 | `theorem` | [isSolvable_iff_commutator_lt](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/issolvable-iff-commutator-lt--011ab8ccd1a8b603179d2ecf.md) | 160 | `result-track:011ab8ccd1a8b603179d2ecf7ea3ce04d44d5117a5737e89ede603a95b14ecca` |
| 23 | `theorem` | [IsSimpleGroup.derivedSeries_succ](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/issimplegroup-derivedseries-succ--71533aff7551f03751effb37.md) | 184 | `result-track:71533aff7551f03751effb376123ea8998702f7bc38ca291cba9413ca91319ba` |
| 24 | `theorem` | [IsSimpleGroup.comm_iff_isSolvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/issimplegroup-comm-iff-issolvable--d3c181da9cbe0f23bce2c51d.md) | 193 | `result-track:d3c181da9cbe0f23bce2c51d893cced61d52a68b9212f58e6056f572be7f4821` |
| 25 | `theorem` | [not_solvable_of_mem_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/not-solvable-of-mem-derivedseries--fe6e8bae545fdd3f5cb09060.md) | 209 | `result-track:fe6e8bae545fdd3f5cb09060d9229bf1a9e0c940378478d151c513109f255959` |
| 26 | `theorem` | [Equiv.Perm.fin_5_not_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/equiv-perm-fin-5-not-solvable--0f894e0ba8bbffdd0f09dd1f.md) | 215 | `result-track:0f894e0ba8bbffdd0f09dd1f0d7094a7dac0a4088a82737fd1ebfeb8a278df34` |
| 27 | `theorem` | [Equiv.Perm.not_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variant01ff7c262c94f7ac3d1ae812cb466cae51e175b0fcec9961c1c64afd690fe9e9.lean/declarations/equiv-perm-not-solvable--2b46b567c3d49b2bcfffc809.md) | 227 | `result-track:2b46b567c3d49b2bcfffc8094520a28e5a52387c477e653622aa7ccdc08b91cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
