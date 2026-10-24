# Verification target: GRWTSK.Algebra.GroupTheory.Bounds.Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f230db1b98d974928cac53dd5b339dcbdd502d5d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f230db1b98d974928cac53dd5b339dcbdd502d5d`.

Source path: `GRWTSK/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.OrderIso` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_mem_upperBounds_mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/mul-mem-upperbounds-mul--84ea5dd77445df9d29307107.md) | 29 | `result-track:84ea5dd77445df9d29307107c8a98a299e8d3fbf58b2e845e7b4545abed9d13e` |
| 2 | `lemma` | [subset_upperBounds_mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/subset-upperbounds-mul--d63116525dccd1a01ec85c66.md) | 33 | `result-track:d63116525dccd1a01ec85c66e8ff0a141b61f33ccf3cccd102d96cfaf2a75965` |
| 3 | `lemma` | [mul_mem_lowerBounds_mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/mul-mem-lowerbounds-mul--79a785fdba92e6191a6129d6.md) | 37 | `result-track:79a785fdba92e6191a6129d640ae2599dafb3e9fb33ef505ebd47468259e192c` |
| 4 | `lemma` | [subset_lowerBounds_mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/subset-lowerbounds-mul--3a796cf5e12f29f6c730a302.md) | 41 | `result-track:3a796cf5e12f29f6c730a3029df0d9cdf6c9462de4fedc1410ce06da474e91b6` |
| 5 | `lemma` | [BddAbove.mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/bddabove-mul--1ee6841824cd88221cb7dc53.md) | 45 | `result-track:1ee6841824cd88221cb7dc531727b8b58c6782fc2d89ed9de3b97bb1b9f5d0a5` |
| 6 | `lemma` | [BddBelow.mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/bddbelow-mul--89f91b6d4d7b7b14cf4efcd2.md) | 49 | `result-track:89f91b6d4d7b7b14cf4efcd250fd74808c3f266e792b8a640d0da6ebca121f75` |
| 7 | `lemma` | [BddAbove.range_mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/bddabove-range-mul--4f83be76ed3600b83b3bbbba.md) | 60 | `result-track:4f83be76ed3600b83b3bbbba429e0f663a9806d4b9e8518b93e1b3f5c10fca78` |
| 8 | `lemma` | [BddBelow.range_mul](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/bddbelow-range-mul--bcb456b19b75553275fd6dcf.md) | 66 | `result-track:bcb456b19b75553275fd6dcf40b4e4f919f23e1dbc34fffa70599e33bf17fabd` |
| 9 | `theorem` | [bddAbove_inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/bddabove-inv--a031c16a0e199e70322597dc.md) | 76 | `result-track:a031c16a0e199e70322597dc66a62ef12633569764a777eda0a72298bc73ef1f` |
| 10 | `theorem` | [bddBelow_inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/bddbelow-inv--97cfbcfe112ab4b60289d9f9.md) | 80 | `result-track:97cfbcfe112ab4b60289d9f974225190bc9f6d6f69aa58c13d48f531bfd920f3` |
| 11 | `theorem` | [BddAbove.inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/bddabove-inv--b0af584e537165bbf0e6ec0b.md) | 84 | `result-track:b0af584e537165bbf0e6ec0b24f98ec685fd8caef2489cfa41bbd64531e561d7` |
| 12 | `theorem` | [BddBelow.inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/bddbelow-inv--750eaa14b5d35ce5f024b13b.md) | 88 | `result-track:750eaa14b5d35ce5f024b13b9c33dadc59c4a6cc444d63fadd51151808e84a68` |
| 13 | `theorem` | [isLUB_inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/islub-inv--263be349198c5001cb4a3ce3.md) | 92 | `result-track:263be349198c5001cb4a3ce3614411545cf77c3c1727e127d8d9fce0a1bac8e8` |
| 14 | `theorem` | [isLUB_inv'](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/islub-inv--49750526bb769067026858fb.md) | 96 | `result-track:49750526bb769067026858fb09e83dc1431b893325b929366c2731d395be6a1a` |
| 15 | `theorem` | [IsGLB.inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/isglb-inv--2bca468e66dfc4e7eb9ea44a.md) | 100 | `result-track:2bca468e66dfc4e7eb9ea44a59307967b00af5b76b63e77faa29a18c64445a78` |
| 16 | `theorem` | [isGLB_inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/isglb-inv--00331e5386044b5417816dac.md) | 104 | `result-track:00331e5386044b5417816dace2f36eb8be3216bc335a12641689a5a402357af3` |
| 17 | `theorem` | [isGLB_inv'](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/isglb-inv--bcca97ba58f7e272cac71c34.md) | 108 | `result-track:bcca97ba58f7e272cac71c3412b9d9b9b6e81c42c24151547148b368a670064a` |
| 18 | `theorem` | [IsLUB.inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/islub-inv--e5c78345f87797a0c4755946.md) | 112 | `result-track:e5c78345f87797a0c47559466e4bbceff96ea44a7fb7e4ddd457a98b3c2b4063` |
| 19 | `lemma` | [BddBelow.range_inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/bddbelow-range-inv--773dd50bca89b292184837a4.md) | 116 | `result-track:773dd50bca89b292184837a4209de967ad0e748619af954c6c1c7757e7a94c30` |
| 20 | `lemma` | [BddAbove.range_inv](../../../../../mathematics/Algebra/GroupTheory/Bounds/Variant19f90a0e2d27cf4a925d77199f6efde32439d4267d19e5712d563f93c68824a3.lean/declarations/bddabove-range-inv--70888a5a3b487fcb24d60d61.md) | 121 | `result-track:70888a5a3b487fcb24d60d6121fe81b6566253ac6780d3448942f03d246ae157` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
