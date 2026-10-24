# Verification target: GRWTSK.Algebra.HomogeneousPrimeNotPrime.Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33273b34cbda9aed6238a76d6e9c6a80d89379a9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/index.md) · [Full source](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33273b34cbda9aed6238a76d6e9c6a80d89379a9`.

Source path: `GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.HomogeneousIdeal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Two](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/two--98933414d945ab53d96c78e4.md) | 45 | `declaration-track:98933414d945ab53d96c78e4a1528222bb0c7405d0850010e1084ee2cc43c29d` |
| 2 | `instance` | [Two.instLinearOrder](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/two-instlinearorder--7099e369bde21ed851200462.md) | 49 | `declaration-track:7099e369bde21ed85120046212a9358c830a8b0dd78190dab89d285aa8c1a540` |
| 3 | `instance` | [Two.instAddCommMonoid](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/two-instaddcommmonoid--efb7ed73e9a707923a26b093.md) | 52 | `declaration-track:efb7ed73e9a707923a26b093ab2594acfa90ebd1f3cfe6f630653f8b848901c8` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/instance--b07d46a9ab985ef7a17fa10e.md) | 55 | `declaration-track:b07d46a9ab985ef7a17fa10edcee3d6662615e4351852e8b815407eecce3173c` |
| 5 | `def` | [submoduleZ](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/submodulez--7b07f1a6caaa9c1d199dd90e.md) | 64 | `declaration-track:7b07f1a6caaa9c1d199dd90ebf703fc5888395276b5b3c36e7a02de952d3362d` |
| 6 | `def` | [submoduleO](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/submoduleo--e19b0bae1aa8a22f6af48ef7.md) | 72 | `declaration-track:e19b0bae1aa8a22f6af48ef7965503da24a136c64e4ab567093e68f239154129` |
| 7 | `def` | [grading](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/grading--f7215a5d167b7526f2bc74df.md) | 78 | `declaration-track:f7215a5d167b7526f2bc74df1263e36bb6ac384d4b4ec5861761c0d0c9233609` |
| 8 | `theorem` | [grading.one_mem](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/grading-one-mem--b9c339e839878f4d1f533736.md) | 83 | `result-track:b9c339e839878f4d1f5337369175ffdb536b535108f0fd819c9e6c1623790463` |
| 9 | `theorem` | [grading.mul_mem](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/grading-mul-mem--101f22dccad6ac7b83cd2be6.md) | 87 | `result-track:101f22dccad6ac7b83cd2be601b2625e3ac69903f1521819c790faea76d18b94` |
| 10 | `def` | [grading.decompose](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/grading-decompose--8fc01a0fb41b3d1e231e5e48.md) | 102 | `declaration-track:8fc01a0fb41b3d1e231e5e486c566d488c39a9b492b268a8bc13906be96dfd28` |
| 11 | `theorem` | [grading.right_inv](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/grading-right-inv--e5881ce87926168e4b97d3db.md) | 117 | `result-track:e5881ce87926168e4b97d3db87b8b988670dd9c72962cecf76ff3c390f1e0e71` |
| 12 | `theorem` | [grading.left_inv](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/grading-left-inv--fcc1c11093555312cd954b88.md) | 132 | `result-track:fcc1c11093555312cd954b88fea66831252ec662b045544ab7ca3a260c346daf` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/instance--6cd7e08a916d5624a30538b6.md) | 140 | `declaration-track:6cd7e08a916d5624a30538b68bda9352573b37ea002b94c04213de303f08d63e` |
| 14 | `def` | [I](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/i--9bfb3a7c1f415dc8fdcd5701.md) | 151 | `declaration-track:9bfb3a7c1f415dc8fdcd5701ef4e1c51d2247a89e85c149fc35953e195d9063f` |
| 15 | `theorem` | [I_not_prime](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/i-not-prime--65e07a47bbb6ba5f72fe5ce0.md) | 155 | `result-track:65e07a47bbb6ba5f72fe5ce0d48394d8aeece249013e5372353c640c2c120f79` |
| 16 | `theorem` | [I_isHomogeneous](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/i-ishomogeneous--c10c7bf388a8bc076b85dcd2.md) | 166 | `result-track:c10c7bf388a8bc076b85dcd26db578e10bac9d7c80c18149b235023c7a11d841` |
| 17 | `theorem` | [homogeneous_mem_or_mem](../../../../mathematics/Algebra/HomogeneousPrimeNotPrime/Variant95ae0cd396f337ff3936379616177e4432061fa665d1b688dccc1d5176040900.lean/declarations/homogeneous-mem-or-mem--bb02d587188349d54dbdea29.md) | 173 | `result-track:bb02d587188349d54dbdea29cd882b5c9e13f450d1eccf7318707dc848ce6cf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
