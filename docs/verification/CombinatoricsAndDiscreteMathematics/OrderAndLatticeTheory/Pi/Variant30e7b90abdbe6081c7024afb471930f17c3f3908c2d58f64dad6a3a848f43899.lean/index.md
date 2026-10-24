# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Pi.Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c971ad9e89c79e673299d45a5d67d9948ad7fe1a",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c971ad9e89c79e673299d45a5d67d9948ad7fe1a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.BooleanAlgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Piecewise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.UnorderedInterval` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pi_univ_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/pi-univ-ici--ba9d5ba7f70ddc50b6a6a08d.md) | 40 | `result-track:ba9d5ba7f70ddc50b6a6a08d9914fef3652d05acac22b8ef243f39ac5c393720` |
| 2 | `theorem` | [pi_univ_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/pi-univ-iic--f5ea52d96e0d0a78c77776c7.md) | 44 | `result-track:f5ea52d96e0d0a78c77776c79f3db3aa4b671dafb5b1cc25c86bed43caf6fc45` |
| 3 | `theorem` | [pi_univ_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/pi-univ-icc--10d83d7a66283f7941053f7c.md) | 48 | `result-track:10d83d7a66283f7941053f7c24353f365a0debf08a3b7b2aedd5d4bfd40bf18b` |
| 4 | `theorem` | [piecewise_mem_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/piecewise-mem-icc--9b748b3b019b3d760b8530c8.md) | 51 | `result-track:9b748b3b019b3d760b8530c8084454f6ee299bb8d81f566fd681f7b60ba39ef4` |
| 5 | `theorem` | [piecewise_mem_Icc'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/piecewise-mem-icc--1ba796231198f3ee5d1d78f6.md) | 57 | `result-track:1ba796231198f3ee5d1d78f6eabea5331ca789719ea49b0b338768426c1fbc09` |
| 6 | `theorem` | [pi_univ_Ioi_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/pi-univ-ioi-subset--855ec563302cd401c5bb6463.md) | 63 | `result-track:855ec563302cd401c5bb6463a744e35622fcce3e8f0f9bdd07f27ac3f89c2809` |
| 7 | `theorem` | [pi_univ_Iio_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/pi-univ-iio-subset--cebb9143f6fbc17b837c0037.md) | 67 | `result-track:cebb9143f6fbc17b837c003745d08b4c3ae4c9257b4636720e5ccbc1faa32f3c` |
| 8 | `theorem` | [pi_univ_Ioo_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/pi-univ-ioo-subset--ace6de1e75324cfb40ea0e5a.md) | 70 | `result-track:ace6de1e75324cfb40ea0e5a1fd312f8154090fbce58d3347438f49236e5f00b` |
| 9 | `theorem` | [pi_univ_Ioc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/pi-univ-ioc-subset--fa33cca431b232a957a1cd3a.md) | 73 | `result-track:fa33cca431b232a957a1cd3ac76e38875db58864571b7a4f08fb83c8f9b3b07f` |
| 10 | `theorem` | [pi_univ_Ico_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/pi-univ-ico-subset--2efb5a81d3f18f11119541b3.md) | 76 | `result-track:2efb5a81d3f18f11119541b3be5932d82561ebfa1b1e976bdf4d0e423bbd504c` |
| 11 | `theorem` | [pi_univ_Ioc_update_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/pi-univ-ioc-update-left--816405c4569b77f7ab2d1e26.md) | 85 | `result-track:816405c4569b77f7ab2d1e26bfe60d686e15b18446a96ba92e77e2ae79904beb` |
| 12 | `theorem` | [pi_univ_Ioc_update_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/pi-univ-ioc-update-right--ebc487bc50b20d29cdb620b7.md) | 95 | `result-track:ebc487bc50b20d29cdb620b79e91cad449473e31493fc09fb54e1306c97a856f` |
| 13 | `theorem` | [disjoint_pi_univ_Ioc_update_left_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/disjoint-pi-univ-ioc-update-left-right--a653697257bac01e469d9841.md) | 105 | `result-track:a653697257bac01e469d98410dffb325fee9794b6b76189c0bb4e405fc2d330e` |
| 14 | `theorem` | [image_update_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-icc--d7c6a005d3e3195aa9360c33.md) | 120 | `result-track:d7c6a005d3e3195aa9360c331e512c1de10e2a30365cf902abd96341c6e3354c` |
| 15 | `theorem` | [image_update_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-ico--d3255c79dcc28449839aa5e1.md) | 133 | `result-track:d3255c79dcc28449839aa5e1716e9d3503cda7a71409b1fe0873202179ad172c` |
| 16 | `theorem` | [image_update_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-ioc--05a24e0ae92142951e697ee9.md) | 138 | `result-track:05a24e0ae92142951e697ee9a71a40ed0e343c09f149a163e629f7be25a4cba9` |
| 17 | `theorem` | [image_update_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-ioo--2d70ad12330e93fca1b38257.md) | 143 | `result-track:2d70ad12330e93fca1b38257e583063636b4afa28f9f3e092157a686a3e9277e` |
| 18 | `theorem` | [image_update_Icc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-icc-left--e344ab120a113b94e6dd1cd9.md) | 148 | `result-track:e344ab120a113b94e6dd1cd922e0c462517d742f03962c2070c39e6d41842c9d` |
| 19 | `theorem` | [image_update_Ico_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-ico-left--bda119d389a1735fafddcfdf.md) | 151 | `result-track:bda119d389a1735fafddcfdfa7fdce64c2c6c2d03f91669076e585d02644f4d8` |
| 20 | `theorem` | [image_update_Ioc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-ioc-left--8aa83ede6cd58bdbd4ed90dc.md) | 154 | `result-track:8aa83ede6cd58bdbd4ed90dcaa7da79ab861243c723f454793f5cbe5feff94c8` |
| 21 | `theorem` | [image_update_Ioo_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-ioo-left--568feb2438e27591c2c3c320.md) | 157 | `result-track:568feb2438e27591c2c3c320d557a3269c27d7d38bea567668810635f5b6eb4f` |
| 22 | `theorem` | [image_update_Icc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-icc-right--9353457c6514afa571c5486c.md) | 160 | `result-track:9353457c6514afa571c5486c7f50cf448b6a566d7f05d33b50e6b9e2f54cb38e` |
| 23 | `theorem` | [image_update_Ico_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-ico-right--0dd582e01aa53a560877f382.md) | 163 | `result-track:0dd582e01aa53a560877f3825618420e83244223bc35af1448e5de2558b2a839` |
| 24 | `theorem` | [image_update_Ioc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-ioc-right--7406320991171054df0cf704.md) | 166 | `result-track:7406320991171054df0cf7041d6eff7713bcf9dde549c830c426da6dd07fbf4a` |
| 25 | `theorem` | [image_update_Ioo_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-ioo-right--30f5ad6f450da2ed2adef504.md) | 169 | `result-track:30f5ad6f450da2ed2adef504cc1f7fa75fdaf8985b3383ddc6fcd5f957de22ed` |
| 26 | `theorem` | [image_mulSingle_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-icc--a886880bc162259230d8987a.md) | 175 | `result-track:a886880bc162259230d8987a032dedbe9611d6c8a297330e50b3adcc50c3df57` |
| 27 | `theorem` | [image_mulSingle_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-ico--93a2260fd1040bc85c2f1590.md) | 180 | `result-track:93a2260fd1040bc85c2f1590d36b6536d1e60b225e5fa51d0c4ea73a5cd245d1` |
| 28 | `theorem` | [image_mulSingle_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-ioc--91a4e2f34af913bc28741ffd.md) | 185 | `result-track:91a4e2f34af913bc28741ffdc11972cfee5b4cbc3c17b9d546f893cc67d755c0` |
| 29 | `theorem` | [image_mulSingle_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-ioo--b730241909bb74bc36649d7b.md) | 190 | `result-track:b730241909bb74bc36649d7b0a07d6813dfe76e87a4fc6b06890eb71015be114` |
| 30 | `theorem` | [image_mulSingle_Icc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-icc-left--8fd0a281640fe958fd9f4fbb.md) | 195 | `result-track:8fd0a281640fe958fd9f4fbb7693afb9f752719ccf2ebe2cdca1b3cf72236afd` |
| 31 | `theorem` | [image_mulSingle_Ico_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-ico-left--b94feb41c4cbd2b58c0603d8.md) | 200 | `result-track:b94feb41c4cbd2b58c0603d8915bca1ba24761ee4bddbbfb0112ce8eff556f10` |
| 32 | `theorem` | [image_mulSingle_Ioc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-ioc-left--cfcedfa22b496b5ad160d0a1.md) | 205 | `result-track:cfcedfa22b496b5ad160d0a1ebd4e1b9e9df3d18ffabbdcc06e2c40dfd17a8ab` |
| 33 | `theorem` | [image_mulSingle_Ioo_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-ioo-left--a57d68391e2370ca79e0657d.md) | 210 | `result-track:a57d68391e2370ca79e0657d61ce04ee15e82755f6578cfe57f03dcddf127829` |
| 34 | `theorem` | [image_mulSingle_Icc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-icc-right--957c1574a70c02ffec710f49.md) | 215 | `result-track:957c1574a70c02ffec710f498ca7a4980c4959d2d1eecb795a107e5d03f5f9bc` |
| 35 | `theorem` | [image_mulSingle_Ico_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-ico-right--8bc5307f30ab24b3777c5127.md) | 220 | `result-track:8bc5307f30ab24b3777c5127495314cb40707ed70b4bc52b352d3d68452e85b8` |
| 36 | `theorem` | [image_mulSingle_Ioc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-ioc-right--5845b08e47b787bd02b81602.md) | 225 | `result-track:5845b08e47b787bd02b81602f7b0d8abe1b2f1171e82602dfa940259629716b4` |
| 37 | `theorem` | [image_mulSingle_Ioo_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-ioo-right--79ae0f9ebe82518c1cd213aa.md) | 230 | `result-track:79ae0f9ebe82518c1cd213aac44e83d4ca8a3afa463be2f1d3c3ae57a4a67c49` |
| 38 | `theorem` | [pi_univ_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/pi-univ-uicc--f65b195c5e9198728bb5a28e.md) | 241 | `result-track:f65b195c5e9198728bb5a28e1ddb529c80b6668a1e58023f6190823066f9c374` |
| 39 | `theorem` | [image_update_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-uicc--7bb2dc82138bec180e246fd6.md) | 246 | `result-track:7bb2dc82138bec180e246fd6321f83b296f199043f3a4c510811172c8f77cfcd` |
| 40 | `theorem` | [image_update_uIcc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-uicc-left--5691ada8d403017e7e8746d2.md) | 250 | `result-track:5691ada8d403017e7e8746d2a41d2d3377f09347042fd7feeccfc704a184e83c` |
| 41 | `theorem` | [image_update_uIcc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-update-uicc-right--f980e97ca7e574b1a1601991.md) | 254 | `result-track:f980e97ca7e574b1a16019910cf5c2fe3d814494b940056d8a48739369ca12a5` |
| 42 | `theorem` | [image_mulSingle_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-uicc--9ffa03e6bc728f7f5e475736.md) | 261 | `result-track:9ffa03e6bc728f7f5e475736b6d02980f65694b21d5bad9e776f303a41944651` |
| 43 | `theorem` | [image_mulSingle_uIcc_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-uicc-left--00bdc6d768f74b150c79eabf.md) | 266 | `result-track:00bdc6d768f74b150c79eabf141a563a0f84e3148598dc674d99f783491390f2` |
| 44 | `theorem` | [image_mulSingle_uIcc_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/image-mulsingle-uicc-right--89e573945cfdc792da8938f8.md) | 271 | `result-track:89e573945cfdc792da8938f84f032b1f67ebae02b46d3100c3c29b732926f978` |
| 45 | `theorem` | [pi_univ_Ioc_update_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/pi-univ-ioc-update-union--073dabef63af04738421bf45.md) | 281 | `result-track:073dabef63af04738421bf456e49ec00345315a2bbb58b5436e816c0d2fe0525` |
| 46 | `theorem` | [Icc_diff_pi_univ_Ioo_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/icc-diff-pi-univ-ioo-subset--3b5e409f9217eadbc104984a.md) | 296 | `result-track:3b5e409f9217eadbc104984a4cd24292ba60b5461745373e52a3d22f0ffb431b` |
| 47 | `theorem` | [Icc_diff_pi_univ_Ioc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pi/Variant30e7b90abdbe6081c7024afb471930f17c3f3908c2d58f64dad6a3a848f43899.lean/declarations/icc-diff-pi-univ-ioc-subset--6e43b061e39d11cf3899ac36.md) | 314 | `result-track:6e43b061e39d11cf3899ac36b4436ce8c52349e7a67a7b06d604b9c48aef8615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
