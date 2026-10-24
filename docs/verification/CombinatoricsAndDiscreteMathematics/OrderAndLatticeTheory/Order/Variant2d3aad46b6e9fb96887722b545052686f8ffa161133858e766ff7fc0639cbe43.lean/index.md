# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa9a192c850c6a0e42a0428315a1c91e15340eb8",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa9a192c850c6a0e42a0428315a1c91e15340eb8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/nonneg--f847ec069eb68765e1c3f694.md) | 42 | `declaration-track:f847ec069eb68765e1c3f694a247a72c8a7e401909bcb9f22a136df322473129` |
| 2 | `theorem` | [divInt_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/divint-nonneg--9991c60ea31c3c90238ab57c.md) | 47 | `result-track:9991c60ea31c3c90238ab57cf228297cbf96a290a702dccf77b3329c838a7e4a` |
| 3 | `theorem` | [nonneg_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/nonneg-add--60d94530c540a15dc8fcbeeb.md) | 61 | `result-track:60d94530c540a15dc8fcbeeb1533232696b779ea4473df819373daaeb5693b6a` |
| 4 | `theorem` | [nonneg_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/nonneg-mul--bb5b6b14b306359d8f7a3d3c.md) | 72 | `result-track:bb5b6b14b306359d8f7a3d3c77a2684a3a8c1bbcf7a27dfcacd19aa2b67622e0` |
| 5 | `theorem` | [nonneg_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/nonneg-antisymm--cd30441a1a82f853d979f471.md) | 82 | `result-track:cd30441a1a82f853d979f4713ecfc5a2e4403588c2fb59776a589c3c8ba73dd5` |
| 6 | `theorem` | [nonneg_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/nonneg-total--acc94bfeccc82f35e2122388.md) | 90 | `result-track:acc94bfeccc82f35e2122388e87ce69b0cf9b59c802696c6349c62e62514be0e` |
| 7 | `instance` | [decidableNonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/decidablenonneg--55acb6c4dfbde346a9be2d08.md) | 94 | `declaration-track:55acb6c4dfbde346a9be2d085ab476246b39ef2b72f56254cc6da8ba516ee6c7` |
| 8 | `def` | [le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/le--6118bf0bc32b1013b3c08223.md) | 102 | `declaration-track:6118bf0bc32b1013b3c08223f00261c3a9991237915fbb319c235d37d68e18d3` |
| 9 | `def` | [numDenCasesOn''.](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/numdencaseson--832538c074da88e8a2dd397f.md) | 109 | `declaration-track:832538c074da88e8a2dd397f4a5fd6427c5d61a8bb083eab3710ecb7763c9882` |
| 10 | `theorem` | [le_iff_Nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/le-iff-nonneg--c736fe4887126d8d30778f52.md) | 117 | `result-track:c736fe4887126d8d30778f52cbc5ef5881ae067eb9a9ff21c0c4c18b0ab974f9` |
| 11 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/le-def--bf449097404c5169ba0c8c2c.md) | 158 | `result-track:bf449097404c5169ba0c8c2cbfb41f64814b509d51857b3a38010a4eadffc0ff` |
| 12 | `theorem` | [le_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/le-refl--41aabb5772925cd40d5a0920.md) | 166 | `result-track:41aabb5772925cd40d5a092061a49bc639a9c7b2defe20d914c957188786a5b5` |
| 13 | `theorem` | [le_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/le-total--9ddc18b8b1dc8ebee5b26680.md) | 173 | `result-track:9ddc18b8b1dc8ebee5b2668084cc5f3329463a534bc56e2a94be69e39fb9bba3` |
| 14 | `theorem` | [le_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/le-antisymm--79822724dd304cebfaea7181.md) | 179 | `result-track:79822724dd304cebfaea7181ea1f218e3a27c7457620d700687c2502847a92eb` |
| 15 | `theorem` | [le_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/le-trans--9d00350e4aa6f39686f8dfb7.md) | 187 | `result-track:9d00350e4aa6f39686f8dfb79f399e987d1cbf067cb6065dd7ec08264b1bd1bd` |
| 16 | `theorem` | [not_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/not-le--012b1a104a4e37fee9db618c.md) | 197 | `result-track:012b1a104a4e37fee9db618cd61a71350160e0440505764045896520c8a416a1` |
| 17 | `instance` | [linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/linearorder--3c3e242c49ba3c3f938f968b.md) | 199 | `declaration-track:3c3e242c49ba3c3f938f968be2eb07f6efd38e8343157377b3eb807e837b4330` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--1d3f045b5ca0451581ed8445.md) | 209 | `declaration-track:1d3f045b5ca0451581ed844562cac65dec3505f80e540932e8be5debf80fb096` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--de4379342a71729c789e2ae1.md) | 211 | `declaration-track:de4379342a71729c789e2ae1aaa3ae161044d60d77965c415e5fde00f8b3b910` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--e9c8d8244c09e31e73cdd5a5.md) | 213 | `declaration-track:e9c8d8244c09e31e73cdd5a5e4d440800c2c23b989d3bf23344f19ba0ed5114f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--7f9c056eca42293e98ab3f91.md) | 215 | `declaration-track:7f9c056eca42293e98ab3f914860a86fb4b8cf92b78e67e594f55368a671e876` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--5237b6f658d6d83d5d0ec6a4.md) | 217 | `declaration-track:5237b6f658d6d83d5d0ec6a4cced741d196225e93cd0f5d2ef2a23775257232c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--c02c035384d4bcaab7093a69.md) | 219 | `declaration-track:c02c035384d4bcaab7093a692add295f942f164afe266a73c4d61c65bd433b06` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--ad127fa58b94d0dd3f75f15d.md) | 221 | `declaration-track:ad127fa58b94d0dd3f75f15df2a77e09dc9b95dbab12160fcad50578d506d16f` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--00b53aefb3036abc0983c3b5.md) | 223 | `declaration-track:00b53aefb3036abc0983c3b5a56f69c46b2fe69a61f60a1cede0f359cfc52774` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--edc54c9d367779bc42067735.md) | 225 | `declaration-track:edc54c9d367779bc420677359195b9227528bff33e65745c23b60821119a5853` |
| 27 | `theorem` | [le_def'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/le-def--94eab798a1f4641b8977beb5.md) | 227 | `result-track:94eab798a1f4641b8977beb55436888ea547c7cdaf27a0548a439311d6935a64` |
| 28 | `theorem` | [lt_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/lt-def--f85d8a89c2048c2e1a4ba551.md) | 233 | `result-track:f85d8a89c2048c2e1a4ba55172bde8ed6e27b09bf5978a67b34a96d192a6005b` |
| 29 | `theorem` | [nonneg_iff_zero_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/nonneg-iff-zero-le--5e6199a6f56f58967fabacb0.md) | 243 | `result-track:5e6199a6f56f58967fabacb05f869fb4ab03c45eda1c82a47c9dba6e75396756` |
| 30 | `theorem` | [num_nonneg_iff_zero_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/num-nonneg-iff-zero-le--e1e0e03044a4a7d88e3b38f0.md) | 249 | `result-track:e1e0e03044a4a7d88e3b38f0aaf0c3edec52f53e1ccd70505976a2f7a03d64fc` |
| 31 | `theorem` | [add_le_add_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/add-le-add-left--4d0019b988b990d73f76e6fe.md) | 253 | `result-track:4d0019b988b990d73f76e6fe426341610d597a5353beae9d668e0b7a036cd819` |
| 32 | `theorem` | [mul_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/mul-nonneg--c66b873317cfd902e1002f48.md) | 257 | `result-track:c66b873317cfd902e1002f483640968742e3a1fdc70ffd408ae6034a709f6f67` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--fce4d336a1e5bb78e6e44c99.md) | 261 | `declaration-track:fce4d336a1e5bb78e6e44c997bca9b3ec4360e5969009d1d35f7bde793d14a9c` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--df43d4b7a1fdf380fedb1936.md) | 270 | `declaration-track:df43d4b7a1fdf380fedb19367f86d253325a76381382db74d71bf015a5c1cf72` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--72f315ddba35369f3cfc5bbd.md) | 272 | `declaration-track:72f315ddba35369f3cfc5bbd680607580bf9c21da9f02c01e7bb36419d0cdc16` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--9073554976e00c47bf940acb.md) | 274 | `declaration-track:9073554976e00c47bf940acb1916fe958ce0696425d15906e58c4cef269c576d` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--dd434e249b7d466adbd608b5.md) | 276 | `declaration-track:dd434e249b7d466adbd608b5fd3526453f8b1e5feec5407c1e97600c239af9aa` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--8dd2b73f5e887fc8f88e7aae.md) | 278 | `declaration-track:8dd2b73f5e887fc8f88e7aae6e194f3b69e071e359ad5e245d6f14111c976d50` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--a3a7a82eb209bf9cff996bc2.md) | 280 | `declaration-track:a3a7a82eb209bf9cff996bc243d4416f9703309aad8bfff0f806c7cff13548c3` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--dfe7803ae8e22f06d95e6d74.md) | 282 | `declaration-track:dfe7803ae8e22f06d95e6d747cad868b11995856508932acdd8b4b7365ed9e03` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--d5a22639e2ea044c6b8f195c.md) | 284 | `declaration-track:d5a22639e2ea044c6b8f195cd06b4de7b4840212eff1e9dcd0289e666fe55796` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/instance--95ecd90a7c7d8201de2f9aca.md) | 286 | `declaration-track:95ecd90a7c7d8201de2f9aca9cf38bcd6de4e5be9b5e4b1f4eaf729801a3961b` |
| 43 | `theorem` | [num_pos_iff_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/num-pos-iff-pos--1fe69bad403f313e5b211ec8.md) | 288 | `result-track:1fe69bad403f313e5b211ec89d724199fa3d5f4a8a7e7e4ade675183742bcff1` |
| 44 | `theorem` | [div_lt_div_iff_mul_lt_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/div-lt-div-iff-mul-lt-mul--ffd9517c9f74c9b087344c1e.md) | 293 | `result-track:ffd9517c9f74c9b087344c1ef3b16088b71eb9b6ecfb9ce97236b0e2f1ebff49` |
| 45 | `theorem` | [lt_one_iff_num_lt_denom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/lt-one-iff-num-lt-denom--363ed1c5634314360cc61f34.md) | 302 | `result-track:363ed1c5634314360cc61f34200da47d3bc9dfe49271e55f1c2ac1aa24fc291c` |
| 46 | `theorem` | [abs_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/declarations/abs-def--ef98bbe0dd08faaa55c1b005.md) | 305 | `result-track:ef98bbe0dd08faaa55c1b00524f511e8ac073c89ee530db41906e4ee30c166d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
