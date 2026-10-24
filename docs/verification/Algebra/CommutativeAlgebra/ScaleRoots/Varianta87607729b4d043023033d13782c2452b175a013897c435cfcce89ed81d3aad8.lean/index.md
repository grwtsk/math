# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ScaleRoots.Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6b88407e59d58300076943f0c798c20f0f62189",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6b88407e59d58300076943f0c798c20f0f62189`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.NonZeroDivisors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots--23dd9528812539b87d6465ac.md) | 28 | `declaration-track:23dd9528812539b87d6465ac8d8de4405dcd9b77d7fc94c576b9af31b104335a` |
| 2 | `theorem` | [coeff_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/coeff-scaleroots--678068c5f0d8d7ba584d39d6.md) | 32 | `result-track:678068c5f0d8d7ba584d39d64e8f7edbf0d6ee614c2a159a5e1e45981fe0b63f` |
| 3 | `theorem` | [coeff_scaleRoots_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/coeff-scaleroots-natdegree--7075c5a0d2bd26f2f2800812.md) | 36 | `result-track:7075c5a0d2bd26f2f28008127e4f243fe5c812d65edf7270a986a1c8cc80e5d5` |
| 4 | `theorem` | [zero_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/zero-scaleroots--ecd5f15792e57ee5afd17173.md) | 41 | `result-track:ecd5f15792e57ee5afd171735ffddf341ca13097d89b075786a19b82c77a780d` |
| 5 | `theorem` | [scaleRoots_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-ne-zero--1fc95c75d2130a826c230aba.md) | 45 | `result-track:1fc95c75d2130a826c230abaef76ae2d93ebe42128627879105d6b7d0193a577` |
| 6 | `theorem` | [support_scaleRoots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/support-scaleroots-le--3a83173f95d48618ef74dc28.md) | 53 | `result-track:3a83173f95d48618ef74dc28f9e68c58bc638750f12b7e365adf6de0c8ab3726` |
| 7 | `theorem` | [support_scaleRoots_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/support-scaleroots-eq--e544f3ddb26cdf48e4ad590f.md) | 57 | `result-track:e544f3ddb26cdf48e4ad590f400db7e04d8fb36ebf96643b43dbfe61ce55024b` |
| 8 | `theorem` | [degree_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/degree-scaleroots--f9024fcc66d929ef73b09747.md) | 67 | `result-track:f9024fcc66d929ef73b09747ac524dc19baed45e0bd0ac23b308a6fa1bb4b903` |
| 9 | `theorem` | [natDegree_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/natdegree-scaleroots--279950b9255bfec85f580343.md) | 78 | `result-track:279950b9255bfec85f580343d1d55b3580677d9b3f8655e8ed16691e973a7b2b` |
| 10 | `theorem` | [monic_scaleRoots_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/monic-scaleroots-iff--9726984d6d44e0a033c9df73.md) | 81 | `result-track:9726984d6d44e0a033c9df73ceba2973cf7685de1ed0530ec7e2b3af5283f038` |
| 11 | `theorem` | [map_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/map-scaleroots--4242455bf602c127757f07ea.md) | 84 | `result-track:4242455bf602c127757f07ea3cb8edc3e86b405c0610d58358b859e19d2f2c2a` |
| 12 | `lemma` | [scaleRoots_C](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-c--735caa9b1bcb6b3fe899ff9f.md) | 90 | `result-track:735caa9b1bcb6b3fe899ff9f565a0523c1f48b7008787316e8f5faad0f980654` |
| 13 | `lemma` | [scaleRoots_one](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-one--3b63bc8d7853c7632dad1bbf.md) | 94 | `result-track:3b63bc8d7853c7632dad1bbfc8743baa139d0c564bc894dd4c8dea85719772a3` |
| 14 | `lemma` | [scaleRoots_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-zero--9bc32b763798f2cd94cb7bdc.md) | 98 | `result-track:9bc32b763798f2cd94cb7bdc4898ed59006305488ebb1304f3e449280d124218` |
| 15 | `lemma` | [one_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/one-scaleroots--0475e697a04ebaa61ae3d401.md) | 110 | `result-track:0475e697a04ebaa61ae3d401dd773bfefcee4e885c84bca39bf7e502f5657260` |
| 16 | `theorem` | [scaleRoots_eval₂_mul_of_commute](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-eval-mul-of-commute--890f970dba64a05fcbf9fd0e.md) | 119 | `result-track:890f970dba64a05fcbf9fd0e3681332708fc52a7174895c4347b2c1386c404ea` |
| 17 | `theorem` | [scaleRoots_eval₂_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-eval-mul--6520620d62ea419fc69340bf.md) | 139 | `result-track:6520620d62ea419fc69340bf2e1463bc5b8353b063c289aa50b15331086c9f7b` |
| 18 | `theorem` | [scaleRoots_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-eval-eq-zero--db2f0e509ed3725c21064a3f.md) | 143 | `result-track:db2f0e509ed3725c21064a3f81a64e3747d4cbdb61891cca196a4b57638e6731` |
| 19 | `theorem` | [scaleRoots_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-aeval-eq-zero--c3beb52efff9fab7991d26f0.md) | 146 | `result-track:c3beb52efff9fab7991d26f08e64e0fc5f2bb1a5a4a4fb1827362c227e1b30bf` |
| 20 | `theorem` | [scaleRoots_eval₂_eq_zero_of_eval₂_div_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-eval-eq-zero-of-eval-div-eq-zero--8a6bc789b7b038fbd00ae48c.md) | 152 | `result-track:8a6bc789b7b038fbd00ae48c0e4649820da976d5ede7251974777c4e4591a348` |
| 21 | `theorem` | [scaleRoots_aeval_eq_zero_of_aeval_div_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-aeval-eq-zero-of-aeval-div-eq-zero--216edebab3d198c6b16508bd.md) | 161 | `result-track:216edebab3d198c6b16508bdb701430654b7e44c636aa49a4389f804ab715422` |
| 22 | `lemma` | [scaleRoots_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-mul--75b047e8b558a64404a56f13.md) | 168 | `result-track:75b047e8b558a64404a56f13866d325b79494b11e23db95d26a5f51e46885784` |
| 23 | `lemma` | [mul_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/mul-scaleroots--b636757dd7ca586bf2f8124c.md) | 174 | `result-track:b636757dd7ca586bf2f8124c7e9d52699db1d72b26ece1144b6c76b7f00ab240` |
| 24 | `lemma` | [mul_scaleRoots'](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/mul-scaleroots--5fea410cd95b884127f4d803.md) | 198 | `result-track:5fea410cd95b884127f4d8033550b6957096c2e51ec10a1d9fc895012bffeed5` |
| 25 | `lemma` | [mul_scaleRoots_of_noZeroDivisors](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/mul-scaleroots-of-nozerodivisors--6baa71b3fd913cd0dfe53af3.md) | 202 | `result-track:6baa71b3fd913cd0dfe53af33baea2e8e041419156c524f815e221c74fd887b7` |
| 26 | `lemma` | [add_scaleRoots_of_natDegree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/add-scaleroots-of-natdegree-eq--6f7a8277df5d189f8e5f789e.md) | 209 | `result-track:6f7a8277df5d189f8e5f789ed3d79fa6c36edf39077250bde62b7b6a597966ec` |
| 27 | `lemma` | [scaleRoots_dvd'](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-dvd--586789838cd4cefa497b4f64.md) | 223 | `result-track:586789838cd4cefa497b4f64740341dc74291aaa644b95c7b510eed0e693e5b5` |
| 28 | `lemma` | [scaleRoots_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-dvd--3152db64404ea65d74b099f4.md) | 230 | `result-track:3152db64404ea65d74b099f435af782d274110fafdbc9cb1f27376e7e25275e4` |
| 29 | `lemma` | [scaleRoots_dvd_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/scaleroots-dvd-iff--79cc401404313fdf719a6170.md) | 237 | `result-track:79cc401404313fdf719a61705711cc0825d4b17d8ec5fd3d500cbd3667fe37f9` |
| 30 | `lemma` | [isCoprime_scaleRoots](../../../../../mathematics/Algebra/CommutativeAlgebra/ScaleRoots/Varianta87607729b4d043023033d13782c2452b175a013897c435cfcce89ed81d3aad8.lean/declarations/iscoprime-scaleroots--cd6f744dab75c77cca3ad5d2.md) | 243 | `result-track:cd6f744dab75c77cca3ad5d2bd11260ded48ebf69f62f53ef5a1b5cc71ac0c3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
