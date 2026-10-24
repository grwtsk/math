# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ComputeDegree.Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba2e8c8da198f8aee873714934135d9e06d6bb94",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba2e8c8da198f8aee873714934135d9e06d6bb94`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_C_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/natdegree-c-le--f689d21fb514da9431684f95.md) | 92 | `result-track:f689d21fb514da9431684f95ecdf977da4e93f0bb7d3f02a85fe5871fd66ba4e` |
| 2 | `theorem` | [natDegree_natCast_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/natdegree-natcast-le--5c1aa402d6a6107d26293e88.md) | 94 | `result-track:5c1aa402d6a6107d26293e88f0ec10161436bbde125a1ae247d8f6831f564dab` |
| 3 | `theorem` | [natDegree_zero_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/natdegree-zero-le--4b70d562f57d5c2b3539cccb.md) | 95 | `result-track:4b70d562f57d5c2b3539cccb69c6c8ecedf797253804c0c4af0c0de8b04e1cf2` |
| 4 | `theorem` | [natDegree_one_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/natdegree-one-le--ee8edec765ceca2e7efc3f67.md) | 96 | `result-track:ee8edec765ceca2e7efc3f67806ef776268e2978afce6e1710a20363a33ef754` |
| 5 | `theorem` | [coeff_add_of_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/coeff-add-of-eq--230605a079ce6c6322df20dc.md) | 98 | `result-track:230605a079ce6c6322df20dcc8add3d2f72be920c2456d28aa874f1ef5ffa566` |
| 6 | `theorem` | [coeff_mul_add_of_le_natDegree_of_eq_ite](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/coeff-mul-add-of-le-natdegree-of-eq-ite--a9703e22fa0fe96661d02757.md) | 102 | `result-track:a9703e22fa0fe96661d027576316d764a7020aa2ae9205eaf889dc6414c71f8b` |
| 7 | `theorem` | [coeff_pow_of_natDegree_le_of_eq_ite'](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/coeff-pow-of-natdegree-le-of-eq-ite--1b9d9d108ee939c674cc9e7e.md) | 114 | `result-track:1b9d9d108ee939c674cc9e7e4d80cc621c4c5d4f2660fcec60ee989229ba8018` |
| 8 | `theorem` | [natDegree_smul_le_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/natdegree-smul-le-of-le--7d434b5d67f9ffd0bb55ef3c.md) | 125 | `result-track:7d434b5d67f9ffd0bb55ef3cb3494f9c67d2fc444efd9b1467c47017ccff0575` |
| 9 | `theorem` | [degree_smul_le_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/degree-smul-le-of-le--2ef25b7bc50dbdd485746238.md) | 129 | `result-track:2ef25b7bc50dbdd485746238024f28ad0668e75646a403a25e4238a3df3156c4` |
| 10 | `theorem` | [coeff_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/coeff-smul--b71972c839ab669bd7650464.md) | 133 | `result-track:b71972c839ab669bd76504641fc2c2a0ec66f86a2de7627b91aa6af7ca3d57b9` |
| 11 | `theorem` | [natDegree_eq_of_le_of_coeff_ne_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/natdegree-eq-of-le-of-coeff-ne-zero--fe6543e57a76053bc1c0fb48.md) | 147 | `result-track:fe6543e57a76053bc1c0fb4806a7b54941c72501c804dc325b7f4c54efbffed2` |
| 12 | `theorem` | [degree_eq_of_le_of_coeff_ne_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/degree-eq-of-le-of-coeff-ne-zero--87b538caf00b57b56dca5d0a.md) | 154 | `result-track:87b538caf00b57b56dca5d0aa1d8c09d9a0e6e0f0c4a7207ef40f5307d94b15d` |
| 13 | `theorem` | [coeff_congr_lhs](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/coeff-congr-lhs--0d90c8e0f776d18a0d993663.md) | 166 | `result-track:0d90c8e0f776d18a0d993663eef0b709ea7cbf3e02d6d000ecb4bded2441fc37` |
| 14 | `theorem` | [coeff_congr](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/coeff-congr--1965b74597a536b025903bff.md) | 168 | `result-track:1965b74597a536b025903bff8403bdc18e14c99426f8fd843d0d856db48e40f3` |
| 15 | `theorem` | [natDegree_intCast_le](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/natdegree-intcast-le--abe41220a98cc8b01466c7cb.md) | 179 | `result-track:abe41220a98cc8b01466c7cb33baa8453c40ae5e4c28892f7e806b75caeaef3f` |
| 16 | `theorem` | [coeff_sub_of_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/coeff-sub-of-eq--644722caa4fb4b3b2ef4f338.md) | 181 | `result-track:644722caa4fb4b3b2ef4f338a8182d3bc73002897a4c937abc9c2d11971d14ba` |
| 17 | `theorem` | [coeff_intCast_ite](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/coeff-intcast-ite--50e493ad700b43d393ed0989.md) | 184 | `result-track:50e493ad700b43d393ed0989ec245bcb2b109c5502af497602eabbc500b12edd` |
| 18 | `def` | [twoHeadsArgs](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/twoheadsargs--fe71de85df10553a0ab1b28b.md) | 217 | `declaration-track:fe71de85df10553a0ab1b28b11c49ff9743e4cf05004ef32017519d100a4f5f4` |
| 19 | `def` | [getCongrLemma](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/getcongrlemma--932c95c430dfb275fe894375.md) | 264 | `declaration-track:932c95c430dfb275fe894375f4905135d802c0c3834dcdc3f2623904c0af2dd8` |
| 20 | `def` | [dispatchLemma](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/dispatchlemma--eb26dc078b77e882bae1e8f4.md) | 293 | `declaration-track:eb26dc078b77e882bae1e8f49fb19f582175c544c9642b8b7393bc0e42391c4d` |
| 21 | `def` | [try_rfl](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/try-rfl--0c84e79af1022650cd7670ac.md) | 359 | `declaration-track:0c84e79af1022650cd7670acfbd877f4bc01c40f44cb77bba6d4c216a323d456` |
| 22 | `def` | [splitApply](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/splitapply--50971ed20ab889ee47aa33a2.md) | 385 | `declaration-track:50971ed20ab889ee47aa33a28f4c8f19e1c1c22db90a767b6de4e830bd2091df` |
| 23 | `def` | [miscomputedDegree?](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/miscomputeddegree--bfc05552f590e8d2f86c6c3d.md) | 414 | `declaration-track:bfc05552f590e8d2f86c6c3d20c9b3ccdf8ca917521ba51d1c57c5327adc4b77` |
| 24 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/syntax--2e2d42bc59ec6a399da7214a.md) | 443 | `declaration-track:2e2d42bc59ec6a399da7214a6eddb879e34587aa39568e217d1d4d18a5b99cdd` |
| 25 | `initialize` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/initialize--bc292a784233b17c8d9199f8.md) | 445 | `declaration-track:bc292a784233b17c8d9199f888d6c59597df33bc23aa8e4091bc163046a02388` |
| 26 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/macro--695e6a4a9d097bc06c657546.md) | 448 | `declaration-track:695e6a4a9d097bc06c657546bd24d0467a4486cd2461931b2d323c00f4e04377` |
| 27 | `elab_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/elab-rules--a1c667737d9e88dcaa4ed1b4.md) | 450 | `declaration-track:a1c667737d9e88dcaa4ed1b44aae1c526b0ba2cc918f1a8b318d64d4573ea8a2` |
| 28 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/macro--18d04094f02ec3e9245c96cc.md) | 497 | `declaration-track:18d04094f02ec3e9245c96cc8bdb4f33bcdac303b97bc55f4f2c39b795c1c52b` |
| 29 | `macro` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean/declarations/macro--16d67eb1661ad69a168bd943.md) | 501 | `declaration-track:16d67eb1661ad69a168bd943bbeca63863bf6662cc8976bb67ac86686bd5e06c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
