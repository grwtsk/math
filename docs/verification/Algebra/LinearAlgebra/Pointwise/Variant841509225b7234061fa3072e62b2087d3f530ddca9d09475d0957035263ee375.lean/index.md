# Verification target: GRWTSK.Algebra.LinearAlgebra.Pointwise.Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38cf02d68666fb807e76e22850d9703064e8e3f7",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38cf02d68666fb807e76e22850d9703064e8e3f7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseNeg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/pointwiseneg--6d1f82997a6b9077239dbef2.md) | 52 | `declaration-track:6d1f82997a6b9077239dbef2be8036fe415db2afdd0f6305d2d01f29f3a4261e` |
| 2 | `theorem` | [coe_set_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/coe-set-neg--9a6ddc50997d172e55928851.md) | 64 | `result-track:9a6ddc50997d172e55928851e4731ea983b45d0913d611b901a240f67f8949d5` |
| 3 | `theorem` | [neg_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/neg-toaddsubmonoid--0beeb2739164ad3e70f689ab.md) | 69 | `result-track:0beeb2739164ad3e70f689abaeb84dbc30959fc2ce734c4b994100800fdea2ec` |
| 4 | `theorem` | [mem_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/mem-neg--c2b3da15d9df6d2b6ed0e723.md) | 74 | `result-track:c2b3da15d9df6d2b6ed0e723313def2ff82ea05893daf681129fd4e16a321e5d` |
| 5 | `def` | [involutivePointwiseNeg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/involutivepointwiseneg--dd0a8f5077119e67f3313b37.md) | 81 | `declaration-track:dd0a8f5077119e67f3313b37339a8c506fd18639ee276e81e590bfabdfd40a62` |
| 6 | `theorem` | [neg_le_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/neg-le-neg--3ed123f352f6e4b72866ba2d.md) | 90 | `result-track:3ed123f352f6e4b72866ba2dad5149af7e2fd5dc3d5e21166124b03bbf3cce60` |
| 7 | `theorem` | [neg_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/neg-le--fd3533310b69228f2e020320.md) | 94 | `result-track:fd3533310b69228f2e0203202a373ab510ae175482ac14382d186c63301bc5bf` |
| 8 | `def` | [negOrderIso](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/negorderiso--f5265dad4cc5643b1202e0dc.md) | 99 | `declaration-track:f5265dad4cc5643b1202e0dcfe1eb58f04961a3a6a91000795fb07d0c4dd2994` |
| 9 | `theorem` | [closure_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/closure-neg--0ae52f17a2a2497dc509f9c1.md) | 105 | `result-track:0ae52f17a2a2497dc509f9c1a0284e2fde29f75726351be297e08022ff6cc79f` |
| 10 | `theorem` | [neg_inf](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/neg-inf--3c4b279fbf55acab2f7b3bc5.md) | 114 | `result-track:3c4b279fbf55acab2f7b3bc5aba5b1303e1026f724242c074c883a0620f98585` |
| 11 | `theorem` | [neg_sup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/neg-sup--a46fe1e22d910e0529cb6d05.md) | 119 | `result-track:a46fe1e22d910e0529cb6d050464987672397d038493a20ec78d27d802d34395` |
| 12 | `theorem` | [neg_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/neg-bot--c9266963d93c1a89dcff4553.md) | 124 | `result-track:c9266963d93c1a89dcff45539c5b0a3b8f76e85300e7fa22a388069232dcf1a2` |
| 13 | `theorem` | [neg_top](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/neg-top--a3dc9b3f3f4b7d3964bf0e44.md) | 129 | `result-track:a3dc9b3f3f4b7d3964bf0e4407ebdfa3781f669e2deb151cdd4d1756aaaf9101` |
| 14 | `theorem` | [neg_iInf](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/neg-iinf--b9f557aec6c2b8a81d24629c.md) | 134 | `result-track:b9f557aec6c2b8a81d24629cb1cfa4b1a91e999f37ca232274c0500802b5eeb6` |
| 15 | `theorem` | [neg_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/neg-isup--1c8500e20a4bdd1460927e19.md) | 139 | `result-track:1c8500e20a4bdd1460927e1950b664c582de1cc2160411e9cb3e4e4ab8ee4ba4` |
| 16 | `theorem` | [neg_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/neg-eq-self--d53ca453092992efe5eb6cfd.md) | 148 | `result-track:d53ca453092992efe5eb6cfdab71b513d5214c415bc616659e3a1f1213d3787d` |
| 17 | `instance` | [pointwiseAddCommMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/pointwiseaddcommmonoid--3535911e773b46d7f23a0795.md) | 156 | `declaration-track:3535911e773b46d7f23a0795f3f82d288f7ca36a6d135cd259547fe5973d2696` |
| 18 | `theorem` | [add_eq_sup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/add-eq-sup--9bda417006eb059ea16d7ecc.md) | 167 | `result-track:9bda417006eb059ea16d7ecc92f950c94fcff470a3c92701f0abd642bfb3c9a8` |
| 19 | `theorem` | [zero_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/zero-eq-bot--217f6c06c6606b4164a06ae7.md) | 172 | `result-track:217f6c06c6606b4164a06ae78363bd01d1c60adcb2d2a811aa641fef4f385aac` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/instance--c13e6d02c1ea1d939cfc273c.md) | 176 | `declaration-track:c13e6d02c1ea1d939cfc273c1308c548d18339c56c96ab46eefbfb858e9c25a5` |
| 21 | `def` | [pointwiseDistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/pointwisedistribmulaction--879df5e3705b3f8f9feb2a64.md) | 193 | `declaration-track:879df5e3705b3f8f9feb2a647e173ef786197d341de9843bec7a17cc89f5de48` |
| 22 | `theorem` | [coe_pointwise_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/coe-pointwise-smul--c5299b76b19d3a1b1a3355ac.md) | 210 | `result-track:c5299b76b19d3a1b1a3355ac0b14549cea6cc6721f9f9b1c7d7367113ef925fa` |
| 23 | `theorem` | [pointwise_smul_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/pointwise-smul-toaddsubmonoid--d3012e26389d33413e3baff9.md) | 215 | `result-track:d3012e26389d33413e3baff9e9de627681f79b861e248550f19bf6dc1edddeb2` |
| 24 | `theorem` | [pointwise_smul_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/pointwise-smul-toaddsubgroup--f5adb3e609fd038ee74d771a.md) | 221 | `result-track:f5adb3e609fd038ee74d771a393ecf21d7852141c876180a0f4f3a5c2f440778` |
| 25 | `theorem` | [smul_mem_pointwise_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/smul-mem-pointwise-smul--1a4896341bd3928495ba2b19.md) | 227 | `result-track:1a4896341bd3928495ba2b19254a5f1682a0b062980edb42800479eba13ab99a` |
| 26 | `theorem` | [smul_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/smul-bot--0148d227f84e04e1cf625da4.md) | 233 | `result-track:0148d227f84e04e1cf625da436fc92ed51432b774433653b9e96820c22b8faf7` |
| 27 | `theorem` | [smul_sup'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/smul-sup--bf8061534818e33f344746df.md) | 238 | `result-track:bf8061534818e33f344746df41bc20c20e63cc9a440be37a490a59166c51d34f` |
| 28 | `theorem` | [smul_span](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/smul-span--9a1b45d5df824574bea77062.md) | 242 | `result-track:9a1b45d5df824574bea770623abfc79b1fcd124b0aa41e471c4ef9fb471ba014` |
| 29 | `theorem` | [span_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/span-smul--dc7ab65a18eb33a038995c0e.md) | 246 | `result-track:dc7ab65a18eb33a038995c0e8b197f3d8a1b89373e8d4869a08520aa9afb79f3` |
| 30 | `instance` | [pointwiseCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/pointwisecentralscalar--42aead2026d58370d439f06d.md) | 250 | `declaration-track:42aead2026d58370d439f06d2cda9dc5a030b93e39ec0323f212b327b2d9dc3c` |
| 31 | `theorem` | [smul_le_self_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/smul-le-self-of-tower--6dbefc567261d64ac5594c96.md) | 256 | `result-track:6dbefc567261d64ac5594c96bc1eb192474c3f0edcfa37e68f807d5a887f389a` |
| 32 | `def` | [pointwiseMulActionWithZero](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean/declarations/pointwisemulactionwithzero--1fff2f51af49a0c2d72a3986.md) | 274 | `declaration-track:1fff2f51af49a0c2d72a398638d2846dacd16baad0dc4a6f6236e8dbc510322f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
