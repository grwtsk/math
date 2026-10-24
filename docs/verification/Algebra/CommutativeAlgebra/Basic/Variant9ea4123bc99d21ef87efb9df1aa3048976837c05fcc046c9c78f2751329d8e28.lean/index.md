# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79602d21069bd7859fad64eb6da406c2f5084c03",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79602d21069bd7859fad64eb6da406c2f5084c03`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/minpoly--c24aac70fe384eba2708c554.md) | 45 | `declaration-track:c24aac70fe384eba2708c554bde516207b133bafd4f2cbd01d718534ede112b9` |
| 2 | `theorem` | [monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/monic--3d659fc60ef466d9b359946c.md) | 58 | `result-track:3d659fc60ef466d9b359946c9dadb1c5cee3d25551f80dc00122686feb987c84` |
| 3 | `theorem` | [ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/ne-zero--7d8d9924bd5102d715527df2.md) | 64 | `result-track:7d8d9924bd5102d715527df2b4805e19fef4e01adfde7b4386832ea3be9a2fd2` |
| 4 | `theorem` | [eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/eq-zero--54ebd5ef67e72c563bf04429.md) | 67 | `result-track:54ebd5ef67e72c563bf044292759cc94e3a04c32c29305df49ff052dd6b6727e` |
| 5 | `theorem` | [ne_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/ne-zero-iff--e7adea2720e33f6e45de90a2.md) | 70 | `result-track:e7adea2720e33f6e45de90a2ac63400d4364d2ff4e909d6941a4c232a5ec4550` |
| 6 | `theorem` | [algHom_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/alghom-eq--7a6ca97050cb7e3ad27261e0.md) | 73 | `result-track:7a6ca97050cb7e3ad27261e0f00d3e431505ca1c0158064c3ed134ab44f73a83` |
| 7 | `theorem` | [algebraMap_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/algebramap-eq--57cebab109cc34b8f968c1b8.md) | 79 | `result-track:57cebab109cc34b8f968c1b86dba7024fa54cf4ae77c0daa3c9af523f924b3f8` |
| 8 | `theorem` | [algEquiv_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/algequiv-eq--5976aad3e3dc7d9210e43b20.md) | 85 | `result-track:5976aad3e3dc7d9210e43b201b2215d66408ae2c2d6e4175ddb13a07ba36c1cd` |
| 9 | `theorem` | [aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/aeval--bb630489b64a1ba949a148f1.md) | 92 | `result-track:bb630489b64a1ba949a148f1df137ad1e1a27b87166899d3f529610b8bb85b5e` |
| 10 | `theorem` | [aeval_algHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/aeval-alghom--4eed52f49ae031d2355c6a3c.md) | 100 | `result-track:4eed52f49ae031d2355c6a3c425c771647e48ec941ff6a689d0a1b07c19f2469` |
| 11 | `theorem` | [ne_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/ne-one--dba90bdaebaaedf0397f4a18.md) | 104 | `result-track:dba90bdaebaaedf0397f4a185c9832c26a0727ee04fdc863b661c6ff00fc5dab` |
| 12 | `theorem` | [map_ne_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/map-ne-one--5a33d89eec165c974308c8de.md) | 109 | `result-track:5a33d89eec165c974308c8de4ff2e09fc358517e8642e4dee3f6746b1aeb0a89` |
| 13 | `theorem` | [not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/not-isunit--6f65fda48f64220f59a304e3.md) | 117 | `result-track:6f65fda48f64220f59a304e364c7b7cada9007779d39778f57e4583385a1aa99` |
| 14 | `theorem` | [mem_range_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/mem-range-of-degree-eq-one--116bce40197d5cb7a6c168c8.md) | 124 | `result-track:116bce40197d5cb7a6c168c8f5f232171d06669f9ebec3b988dff8b475806b45` |
| 15 | `theorem` | [min](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/min--5aee7959514434e9b0fe6da7.md) | 137 | `result-track:5aee7959514434e9b0fe6da7397f8d12e3950e590bf4a697b570512c27cc216d` |
| 16 | `theorem` | [unique'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/unique--75c8dd49be742d836ff09631.md) | 143 | `result-track:75c8dd49be742d836ff0963130ad0afba008c923f5afc0f33fa8440a0afd0eec` |
| 17 | `theorem` | [subsingleton](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/subsingleton--c7b66f832e06787cbb6bd1d3.md) | 168 | `result-track:c7b66f832e06787cbb6bd1d3ccd2166c9451b4dbfb383b253d5c00eef3623d52` |
| 18 | `theorem` | [natDegree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/natdegree-pos--21bc869a24418eacab847e81.md) | 189 | `result-track:21bc869a24418eacab847e8153935ded89e1263200b9b123ad87751410fec73a` |
| 19 | `theorem` | [degree_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/degree-pos--876bde58f24a03b8982ec991.md) | 199 | `result-track:876bde58f24a03b8982ec991adaf9d59eb13342680e82e26a6a672bf59c8a489` |
| 20 | `theorem` | [degree_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/degree-eq-one-iff--cdc7d218ce1351ee67481330.md) | 206 | `result-track:cdc7d218ce1351ee67481330c769e2cd84de94525136d6dea93962a126eb8f83` |
| 21 | `theorem` | [natDegree_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/natdegree-eq-one-iff--3e904422fd0971a7a2651209.md) | 213 | `result-track:3e904422fd0971a7a2651209869e853134c2fae9b4a840bc81cc678766700cfb` |
| 22 | `theorem` | [two_le_natDegree_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/two-le-natdegree-iff--b9123ac00d7e9c1adc821b5b.md) | 218 | `result-track:b9123ac00d7e9c1adc821b5b83c89673f50eca681f5967fd728b9fdf7e975199` |
| 23 | `theorem` | [two_le_natDegree_subalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/two-le-natdegree-subalgebra--ea682c8076b0e2c27ae1be76.md) | 223 | `result-track:ea682c8076b0e2c27ae1be765bfeda1a84a7e66c0b9bd59fc4fd136165852ac4` |
| 24 | `theorem` | [eq_X_sub_C_of_algebraMap_inj](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/eq-x-sub-c-of-algebramap-inj--61781c3bb692be98ebfc29c3.md) | 232 | `result-track:61781c3bb692be98ebfc29c379e79ed18908cf25ee3210e588d79a0b289308c2` |
| 25 | `theorem` | [aeval_ne_zero_of_dvdNotUnit_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/aeval-ne-zero-of-dvdnotunit-minpoly--2f059b57505fb7defc080d09.md) | 251 | `result-track:2f059b57505fb7defc080d099b13173c07093e1d4a8b61619fb62925d91cfbb5` |
| 26 | `theorem` | [irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant9ea4123bc99d21ef87efb9df1aa3048976837c05fcc046c9c78f2751329d8e28.lean/declarations/irreducible--d83fb5e937c508d1c38cf13a.md) | 267 | `result-track:d83fb5e937c508d1c38cf13a099b4b18aff8a1990412e99a7db0421eabecd1b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
