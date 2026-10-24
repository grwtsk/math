# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fin.Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bedabbd10d9554b6a3aae71fca725ad06c06531",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bedabbd10d9554b6a3aae71fca725ad06c06531`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Fin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.FinRange` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-range--095df13557cafbd852b99afc.md) | 44 | `result-track:095df13557cafbd852b99afc1e8cf04e5b0896836fcce347abb04e7345dcfdd7` |
| 2 | `theorem` | [prod_univ_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-def--6fac86d9bdb493a4d28e99ed.md) | 55 | `result-track:6fac86d9bdb493a4d28e99eda671a57785f3c40c8d35eccd0a9530139781662a` |
| 3 | `theorem` | [prod_ofFn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-offn--07c697cf3de6177fe9993d46.md) | 61 | `result-track:07c697cf3de6177fe9993d46e51718b98f950df0a680037aff03294d29e60243` |
| 4 | `theorem` | [prod_univ_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-zero--4a1d40ebf33cb87eabc9fa68.md) | 68 | `result-track:4a1d40ebf33cb87eabc9fa68e0926d58f6864c047a4216e47db07e1ad196b80c` |
| 5 | `theorem` | [prod_univ_succAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-succabove--818c55b84028a4bffac057dd.md) | 77 | `result-track:818c55b84028a4bffac057dda7bd5be3be8ede76fe094e6e01d0e75ed5037776` |
| 6 | `theorem` | [prod_univ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-succ--25c2d9ca1137ef299b0f3e9b.md) | 89 | `result-track:25c2d9ca1137ef299b0f3e9bd72724b5049c38df19f489ec9900a50cddb13f4b` |
| 7 | `theorem` | [prod_univ_castSucc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-castsucc--ffb2a73dbd656276385df463.md) | 99 | `result-track:ffb2a73dbd656276385df46328556e5178fd3bc754138d3cc3dee4b2d784920e` |
| 8 | `theorem` | [prod_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-cons--b4bff7a7138c18f2af578f84.md) | 106 | `result-track:b4bff7a7138c18f2af578f847f605e7326cba8af8e59db770d4144698bf223b5` |
| 9 | `theorem` | [prod_univ_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-one--12b206a0c74ea2a51e6c2059.md) | 113 | `result-track:12b206a0c74ea2a51e6c2059c55ce76c0997b6e6763e13d5278572beda3c7cf4` |
| 10 | `theorem` | [prod_univ_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-two--538c476c80fa46f5ebc7a686.md) | 118 | `result-track:538c476c80fa46f5ebc7a68643ce6ff765f91d02f2ac1af1980789f08d3560de` |
| 11 | `theorem` | [prod_univ_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-three--23c67badb6795face54f1d32.md) | 124 | `result-track:23c67badb6795face54f1d32a62fa0fa2c32bb952128b17c9c482c8e223349ba` |
| 12 | `theorem` | [prod_univ_four](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-four--0e6d7a2effce12336aca04d1.md) | 131 | `result-track:0e6d7a2effce12336aca04d18652d8d6e2a596438262a31358cb7ce83fc5ae95` |
| 13 | `theorem` | [prod_univ_five](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-five--6e8f8f7b0aec9612e8ad4226.md) | 138 | `result-track:6e8f8f7b0aec9612e8ad4226b50164c33966e73eb6adf1f653deac0cd705def7` |
| 14 | `theorem` | [prod_univ_six](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-six--a2731d5f8ab2f1b869b9b196.md) | 146 | `result-track:a2731d5f8ab2f1b869b9b196875b3669b884104231d6adb27e720fa70bc160a2` |
| 15 | `theorem` | [prod_univ_seven](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-seven--0e75c84e42c3ad4dd3b533d7.md) | 154 | `result-track:0e75c84e42c3ad4dd3b533d7b492e8d61727fc3abbde35ceeb9ada790825b19c` |
| 16 | `theorem` | [prod_univ_eight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-eight--eb6ccba5d69fc1b407fabc1f.md) | 162 | `result-track:eb6ccba5d69fc1b407fabc1fac827355e7122689c00c9faac7eef13ca5d2497b` |
| 17 | `theorem` | [sum_pow_mul_eq_add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/sum-pow-mul-eq-add-pow--679b58353afd5526891753ec.md) | 169 | `result-track:679b58353afd5526891753ec3ad13423f89759d6f9bb2a8eddafad09a6a7917f` |
| 18 | `theorem` | [prod_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-const--793972edf1f9e894d3088e31.md) | 174 | `result-track:793972edf1f9e894d3088e31e61b5f5e2665b19e92cbf79ecb596c31655fce81` |
| 19 | `theorem` | [sum_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/sum-const--3ae9c92fe1987e6e8b605d51.md) | 177 | `result-track:3ae9c92fe1987e6e8b605d5146acf68bec8c4285dc26b90556a38c2ba11b4529` |
| 20 | `theorem` | [prod_Ioi_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-ioi-zero--59d658433df9ed119b028b20.md) | 181 | `result-track:59d658433df9ed119b028b205b467c0f3dac0c26a550fb7a8ac6829a5ec2ddfc` |
| 21 | `theorem` | [prod_Ioi_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-ioi-succ--3dbc2750a2946c1dc98144ad.md) | 188 | `result-track:3dbc2750a2946c1dc98144ad7129df5b6daa0837595694bf0f92cb4e36038839` |
| 22 | `theorem` | [prod_congr'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-congr--2a4cd4ade8e05a9d42c44fdd.md) | 195 | `result-track:2a4cd4ade8e05a9d42c44fddb916d67e05412b9904d06b56e98c35cf0aaac9b2` |
| 23 | `theorem` | [prod_univ_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-univ-add--0812df143eb55197b574a2bd.md) | 203 | `result-track:0812df143eb55197b574a2bdaccdc994504642cc9bad863a09bedd2b710f140c` |
| 24 | `theorem` | [prod_trunc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-trunc--6cc4d2902d0aa62b1ccf6bf3.md) | 213 | `result-track:6cc4d2902d0aa62b1ccf6bf3c2f31d0c5ef322ef7c4423dc37f0667f0f4330cb` |
| 25 | `def` | [partialProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/partialprod--cb3b1201986d2961aa143d06.md) | 228 | `declaration-track:cb3b1201986d2961aa143d065b9385643c4d6e1661fe11a5f2988f5fcdb257f8` |
| 26 | `theorem` | [partialProd_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/partialprod-zero--a4fb28b7ba560d3ed96796c1.md) | 234 | `result-track:a4fb28b7ba560d3ed96796c16c7c87617272142cbe0d1bc5d756d86944bee8d3` |
| 27 | `theorem` | [partialProd_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/partialprod-succ--05267e0cf172160bad34e1f7.md) | 239 | `result-track:05267e0cf172160bad34e1f73b4541393ee11d27c37fc8cb5d262c9f046a467b` |
| 28 | `theorem` | [partialProd_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/partialprod-succ--1d3e80febd55d2fe7e8277be.md) | 246 | `result-track:1d3e80febd55d2fe7e8277be2cba1cf9b08d298359e1309037e8be15b8019df3` |
| 29 | `theorem` | [partialProd_left_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/partialprod-left-inv--ec05542a36c7696c8445dce2.md) | 254 | `result-track:ec05542a36c7696c8445dce2944d3c783085004f0982536bd1918cb0e002ced5` |
| 30 | `theorem` | [partialProd_right_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/partialprod-right-inv--b91bc7d21455abd7ba1d875c.md) | 263 | `result-track:b91bc7d21455abd7ba1d875cfcf904851289199500e12cf5b51b99ce6f352f7d` |
| 31 | `theorem` | [inv_partialProd_mul_eq_contractNth](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/inv-partialprod-mul-eq-contractnth--8d17a9c65b10344b01cfb328.md) | 291 | `result-track:8d17a9c65b10344b01cfb328b4aeb2ef3a06cd064ab23af0da4be10a0b0ce5bb` |
| 32 | `def` | [finFunctionFinEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/finfunctionfinequiv--54ab59796e4ed83b025772e9.md) | 319 | `declaration-track:54ab59796e4ed83b025772e9355aef4283c80c2f612257546100d63c61e0eece` |
| 33 | `theorem` | [finFunctionFinEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/finfunctionfinequiv-apply--c86f453f90eb1a52a2aa4494.md) | 355 | `result-track:c86f453f90eb1a52a2aa44942d3dafe7b6f1c668b546aebbb242c6d282f3a757` |
| 34 | `theorem` | [finFunctionFinEquiv_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/finfunctionfinequiv-single--45ded6e2caa8b5efbf35e018.md) | 360 | `result-track:45ded6e2caa8b5efbf35e0184300bf5760cc42d1876802d2b4f4638e44b73205` |
| 35 | `def` | [finPiFinEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/finpifinequiv--032db1f87a16b0b58d6878a3.md) | 368 | `declaration-track:032db1f87a16b0b58d6878a30ae5c7d74be8cfe50a510e61ed63b9890bffccf4` |
| 36 | `theorem` | [finPiFinEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/finpifinequiv-apply--f97c353f7aefaad6c8748cc8.md) | 438 | `result-track:f97c353f7aefaad6c8748cc85b33e4e92f6cb2bd440e8379023ba21fa31392d1` |
| 37 | `theorem` | [finPiFinEquiv_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/finpifinequiv-single--a3bcd584350fc389cc3c00a4.md) | 442 | `result-track:a3bcd584350fc389cc3c00a4cd78ff0381308007f87d64236dc816c374983aec` |
| 38 | `theorem` | [prod_take_ofFn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-take-offn--01efeb572e77ad9d7208db10.md) | 458 | `result-track:01efeb572e77ad9d7208db10c6d430f3d4e833028a1eca24f53fc87f0e60067f` |
| 39 | `theorem` | [prod_ofFn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/prod-offn--6df1f0f54c6fb7f8e9238a6b.md) | 488 | `result-track:6df1f0f54c6fb7f8e9238a6b7e02abdcecd93e03b6683c6950ef4c1aa68d41de` |
| 40 | `theorem` | [alternatingProd_eq_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fin/Varianta96116a7b8147273ff40f5babd23f24c0ec086f3ca3aa88fc72b148eee11f0ad.lean/declarations/alternatingprod-eq-finset-prod--37075a4a6cd3035d95232da1.md) | 499 | `result-track:37075a4a6cd3035d95232da17b50b632fa116c5c66ec0b273cd0a34adad8e665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
