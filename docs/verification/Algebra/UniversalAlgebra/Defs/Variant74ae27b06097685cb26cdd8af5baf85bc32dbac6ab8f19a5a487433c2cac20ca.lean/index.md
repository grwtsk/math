# Verification target: GRWTSK.Algebra.UniversalAlgebra.Defs.Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5de01b0bd3d2b681e04dc8170b1656be6d9ca4b6",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5de01b0bd3d2b681e04dc8170b1656be6d9ca4b6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderedAddCommGroup](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/orderedaddcommgroup--e2f40c16484c9a247ff30ffb.md) | 46 | `declaration-track:e2f40c16484c9a247ff30ffb4595b2b8915e3370add32f8895621d3b5ac96841` |
| 2 | `structure` | [OrderedCommGroup](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/orderedcommgroup--88f57d63f1d21913f0008e91.md) | 56 | `declaration-track:88f57d63f1d21913f0008e917b567b43ba43b4672577f54fdcbf97fede0f1558` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/instance--4266bb50c2b59e2af08f7325.md) | 74 | `declaration-track:4266bb50c2b59e2af08f7325d064fe81ef54ba8365ee3dcb9f98a16a0b75cece` |
| 4 | `structure` | [LinearOrderedAddCommGroup](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/linearorderedaddcommgroup--fe64a51587db82295403c124.md) | 91 | `declaration-track:fe64a51587db82295403c12440d3bee9217f80c867eda761161748c60ea3b1af` |
| 5 | `structure` | [LinearOrderedCommGroup](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/linearorderedcommgroup--1bfb3d7aa88292af18e45e93.md) | 101 | `declaration-track:1bfb3d7aa88292af18e45e93f5ee453f72cedf1a4030a5a3ce796d4e4df7d48e` |
| 6 | `theorem` | [LinearOrderedCommGroup.mul_lt_mul_left'](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/linearorderedcommgroup-mul-lt-mul-left--9163c491cda429ed785881be.md) | 111 | `result-track:9163c491cda429ed785881befc97abd97c1a813c1ef9ef2baea5e47ca1bdce3f` |
| 7 | `theorem` | [eq_one_of_inv_eq'](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/eq-one-of-inv-eq--799c0b09d6a4282180235ff8.md) | 115 | `result-track:799c0b09d6a4282180235ff8c255ae335b13b0f608fd70ccf2a8d200ad815427` |
| 8 | `theorem` | [exists_one_lt'](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/exists-one-lt--e3ac8396519a788ea5f6a653.md) | 126 | `result-track:e3ac8396519a788ea5f6a65354ea189511ef6828cbeb4dfd3312f005de4c145e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/instance--f7aec5e219f56b3151143507.md) | 134 | `declaration-track:f7aec5e219f56b31511435077abeaa7dcfa4069f4ad8796ff7badab0ab3c4313` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/instance--923e4dc324421b6ec70a76bb.md) | 141 | `declaration-track:923e4dc324421b6ec70a76bb7870d55ed2e22efcfde4eac064643e20ba328810` |
| 11 | `theorem` | [inv_le_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/inv-le-self-iff--8c42d3e7331c1b033c74bc64.md) | 147 | `result-track:8c42d3e7331c1b033c74bc64d97d0f70f60b3a8ee82d9f4a3fd46b2f299a8db9` |
| 12 | `theorem` | [inv_lt_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/inv-lt-self-iff--5ecd755e7018fbf46a9b9d63.md) | 150 | `result-track:5ecd755e7018fbf46a9b9d63969cacf6f522097d0cde031df3d2874f5b1eba97` |
| 13 | `theorem` | [le_inv_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/le-inv-self-iff--aa66d099cd1e3aa70b431645.md) | 153 | `result-track:aa66d099cd1e3aa70b431645eb88790271e30c17007e9d23524ee2a2f53a1560` |
| 14 | `theorem` | [lt_inv_self_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/lt-inv-self-iff--a9fa62115273815ff0b9246a.md) | 156 | `result-track:a9fa62115273815ff0b9246a4411a3bb7b95b7b346806a98a42c5e47c10f4fe1` |
| 15 | `theorem` | [inv_le_inv'](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/inv-le-inv--62f465517dc767e9cbe87661.md) | 167 | `result-track:62f465517dc767e9cbe876619cba37ede36965db1cae969a5c488f8284a99f57` |
| 16 | `theorem` | [inv_lt_inv'](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/inv-lt-inv--abcc7ab466648a45954e7350.md) | 171 | `result-track:abcc7ab466648a45954e73508b580a301f15bd8a891a5d327d8fdfd8301b1ea4` |
| 17 | `theorem` | [inv_lt_one_of_one_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/inv-lt-one-of-one-lt--3bd8837449fd39c25c882626.md) | 176 | `result-track:3bd8837449fd39c25c882626a8babd9f1f8e272096728d729ae3fa1da9d19dc0` |
| 18 | `theorem` | [inv_le_one_of_one_le](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/inv-le-one-of-one-le--e57608955c57ef8e24d37cfa.md) | 181 | `result-track:e57608955c57ef8e24d37cfac23783f13fe332449c728aa640db903a850fbc98` |
| 19 | `theorem` | [one_le_inv_of_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Defs/Variant74ae27b06097685cb26cdd8af5baf85bc32dbac6ab8f19a5a487433c2cac20ca.lean/declarations/one-le-inv-of-le-one--87c3ca378c9bd955c30d34f0.md) | 185 | `result-track:87c3ca378c9bd955c30d34f0467928c15366517facbd54c30ab84227cbacd295` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
