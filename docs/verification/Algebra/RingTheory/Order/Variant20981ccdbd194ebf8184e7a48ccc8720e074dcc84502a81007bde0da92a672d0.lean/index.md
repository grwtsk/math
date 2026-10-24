# Verification target: GRWTSK.Algebra.RingTheory.Order.Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daf7c393bf4353c52a87b85e8951bd1abdd0586d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daf7c393bf4353c52a87b85e8951bd1abdd0586d`.

Source path: `GRWTSK/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_coeff_ne_zero_iff_ne_zero](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/exists-coeff-ne-zero-iff-ne-zero--dd7ca226a58d915ab9d4f45e.md) | 51 | `result-track:dd7ca226a58d915ab9d4f45e3f79228b1a688547797b983d6b9d385fe7eb3ab1` |
| 2 | `def` | [order](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order--1acdf8149619cb851e1bd443.md) | 58 | `declaration-track:1acdf8149619cb851e1bd443ec489f46fa110eb6f64ec3a4d86040dda13017bf` |
| 3 | `theorem` | [order_zero](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-zero--0d88955e92630a23ef6e2d10.md) | 65 | `result-track:0d88955e92630a23ef6e2d100065dc2309529a015569e51e582019cd46535df7` |
| 4 | `theorem` | [order_finite_iff_ne_zero](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-finite-iff-ne-zero--4ac1672ee6813ef6caa45267.md) | 68 | `result-track:4ac1672ee6813ef6caa45267b4ede3f669b3970f51c34a846a5d9fd6f365420f` |
| 5 | `theorem` | [order_eq_top](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-eq-top--6a01940aa6369b41b7d96587.md) | 74 | `result-track:6a01940aa6369b41b7d96587cbdcf12c000b6fc67bb9be4ec9f828670be7f13f` |
| 6 | `theorem` | [coe_toNat_order](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/coe-tonat-order--b1371ad15c16990b51aa196b.md) | 77 | `result-track:b1371ad15c16990b51aa196b2cfd9669a231b434aa46f3d971ce94e09388ad40` |
| 7 | `theorem` | [coeff_order](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/coeff-order--c09281ea4202e1d3863361d1.md) | 82 | `result-track:c09281ea4202e1d3863361d13eec3c46fbf724db39fdeda59b76ac3669fe9008` |
| 8 | `theorem` | [order_le](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-le--c45da0fe8bc3eaacaec00175.md) | 90 | `result-track:c45da0fe8bc3eaacaec00175bd7b511c8183b1aa33c7b43c0e0e192e58957723` |
| 9 | `theorem` | [coeff_of_lt_order](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/coeff-of-lt-order--9ac08f159143fb57578111a4.md) | 98 | `result-track:9ac08f159143fb57578111a4448cf8b98b6bdfec57546649f38a0f0e71b5fc08` |
| 10 | `theorem` | [coeff_of_lt_order_toNat](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/coeff-of-lt-order-tonat--eac9c359723d018832ad42e0.md) | 102 | `result-track:eac9c359723d018832ad42e0fd6317534238571b6ab5739fe39320b583b81697` |
| 11 | `theorem` | [nat_le_order](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/nat-le-order--2ebab2b0b588ffa2777fe5c0.md) | 110 | `result-track:2ebab2b0b588ffa2777fe5c0a0cf24d31aae21233e881149533b2dc8fec49cb8` |
| 12 | `theorem` | [le_order](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/le-order--48d3a991b60f8e6b5690d370.md) | 119 | `result-track:48d3a991b60f8e6b5690d370daee7a5e83099513ce6ff178cb6d35e4b337a534` |
| 13 | `theorem` | [order_eq_nat](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-eq-nat--4e2722a0dc7efc3eea27e5cb.md) | 129 | `result-track:4e2722a0dc7efc3eea27e5cb3c1c9c1ffc5588562d4a15c3b904f5ba836bf7d1` |
| 14 | `theorem` | [order_eq](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-eq--c4edb856f8d129ac1032a935.md) | 138 | `result-track:c4edb856f8d129ac1032a9354c9ca15d7b2bc274b7338f2f73291e33fc6e8e25` |
| 15 | `theorem` | [min_order_le_order_add](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/min-order-le-order-add--3c6751895e55b78648333c03.md) | 147 | `result-track:3c6751895e55b78648333c037ed85e63cb8c377ed295733f81b50baf4a0cf1d9` |
| 16 | `theorem` | [order_add_of_order_eq.aux](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-add-of-order-eq-aux--4c3fb6de5149a09919d5cb42.md) | 153 | `result-track:4c3fb6de5149a09919d5cb423c2e86b57ccd18c99697d7831c5fae53caa7b443` |
| 17 | `theorem` | [order_add_of_order_eq](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-add-of-order-eq--497b2fb9412201db4a1a7409.md) | 170 | `result-track:497b2fb9412201db4a1a74097d7111b351f6925b1d9eee07f9bb1889598c6ebb` |
| 18 | `theorem` | [le_order_mul](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/le-order-mul--5770d3bc163fb197eca8743e.md) | 179 | `result-track:5770d3bc163fb197eca8743e8e627f0b4a23c7d1d2c8541549fe4d35fd3eaedd` |
| 19 | `theorem` | [le_order_pow](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/le-order-pow--1b50666daca5cec7d687baba.md) | 192 | `result-track:1b50666daca5cec7d687baba1287c3598ce48408fcf07f28613bbdeac4229cb6` |
| 20 | `theorem` | [order_monomial](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-monomial--74d462fc51dfd35f7f4d70fa.md) | 203 | `result-track:74d462fc51dfd35f7f4d70fa2583fa4f35b3e9375841245ce36ac6c14247ffd3` |
| 21 | `theorem` | [order_monomial_of_ne_zero](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-monomial-of-ne-zero--fcb511970dc5ca289d49e251.md) | 216 | `result-track:fcb511970dc5ca289d49e25152844b26ccaa36c7c3dc0d21a501b3450d1d0ec9` |
| 22 | `theorem` | [coeff_mul_of_lt_order](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/coeff-mul-of-lt-order--2938c041c5bb8c9bd9aaf35c.md) | 222 | `result-track:2938c041c5bb8c9bd9aaf35c7f20f08faa07a84cf5033d215b6dd3fe0296ca6a` |
| 23 | `theorem` | [coeff_mul_one_sub_of_lt_order](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/coeff-mul-one-sub-of-lt-order--b90815273e599fc838b211c7.md) | 233 | `result-track:b90815273e599fc838b211c75ef10c20a8159d29cbed70fd47b3e30bae11a30f` |
| 24 | `theorem` | [coeff_mul_prod_one_sub_of_lt_order](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/coeff-mul-prod-one-sub-of-lt-order--a3ed2fe18a3528e9f4518a1e.md) | 237 | `result-track:a3ed2fe18a3528e9f4518a1e1012248513eaf18bc11ef7e1adf5af6d4e066e21` |
| 25 | `def` | [divXPowOrder](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/divxpoworder--a9375f61b1c68eac8acbb40e.md) | 251 | `declaration-track:a9375f61b1c68eac8acbb40e8732b406021a70c26db7efae5c16bcc23cbd29cf` |
| 26 | `lemma` | [coeff_divXPowOrder](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/coeff-divxpoworder--699eaf557f8b0ab40a243cd4.md) | 258 | `result-track:699eaf557f8b0ab40a243cd4fa512162f1eda472cb27c27606a4dbcbd29db8b0` |
| 27 | `lemma` | [divXPowOrder_zero](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/divxpoworder-zero--880113ca8bdd14df1cf053df.md) | 263 | `result-track:880113ca8bdd14df1cf053df3a821d9bc5ca7abcddde60d57160d7ce7824821c` |
| 28 | `lemma` | [constantCoeff_divXPowOrder](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/constantcoeff-divxpoworder--de7229127ad6ce3bf1942326.md) | 268 | `result-track:de7229127ad6ce3bf1942326a8ea3b844e4f5ea6e4ccfb07bdf930a1b9f75404` |
| 29 | `lemma` | [constantCoeff_divXPowOrder_eq_zero_iff](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/constantcoeff-divxpoworder-eq-zero-iff--d42353e8ad93d457992576fb.md) | 272 | `result-track:d42353e8ad93d457992576fbc5dbcd8ccb0a497f2c65992690c0d1f146a95d7c` |
| 30 | `theorem` | [X_pow_order_mul_divXPowOrder](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/x-pow-order-mul-divxpoworder--95d4b09e9bb5e493ed082145.md) | 278 | `result-track:95d4b09e9bb5e493ed082145d2d46269299931f1099bb23d85f4b6cbc249159e` |
| 31 | `theorem` | [X_pow_order_dvd](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/x-pow-order-dvd--771b5ac0115cb166d918712c.md) | 290 | `result-track:771b5ac0115cb166d918712c9f06208a5386cd86dd86839944bdc87b953448aa` |
| 32 | `theorem` | [order_eq_emultiplicity_X](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-eq-emultiplicity-x--52600671c2b5a8203f13c0cf.md) | 293 | `result-track:52600671c2b5a8203f13c0cf7636c9d9d11892581b1cd6b0594575d762bb8740` |
| 33 | `theorem` | [order_one](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-one--0cac17f8365cea2f16b2dedf.md) | 326 | `result-track:0cac17f8365cea2f16b2dedf43fbf65295340381208d351e76e4f3c17c7026f6` |
| 34 | `theorem` | [order_zero_of_unit](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-zero-of-unit--f3eb57b8d5aef15c46609481.md) | 330 | `result-track:f3eb57b8d5aef15c4660948188236a4649b9efa4fb7274d806381d0efc000036` |
| 35 | `theorem` | [order_X](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-x--48cee3e10b385bce78a6e1cb.md) | 338 | `result-track:48cee3e10b385bce78a6e1cbfedfa995e84328dddf209e6dff2cb869a9772045` |
| 36 | `theorem` | [order_X_pow](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-x-pow--b0dcd2264b95109f428a9ff2.md) | 343 | `result-track:b0dcd2264b95109f428a9ff2fbafd68294f6cb8ce38234ca109269f2c2337e13` |
| 37 | `theorem` | [divXPowOrder_X](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/divxpoworder-x--2c56cfec756c1c16a0436534.md) | 349 | `result-track:2c56cfec756c1c16a0436534ceb553956cefda4cd6332ba0b39b5f1aca36620d` |
| 38 | `theorem` | [order_mul](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-mul--73c2f4ba3105a45289fe5897.md) | 364 | `result-track:73c2f4ba3105a45289fe589779053b0829376fac066446bb7605f1c3328d3a3c` |
| 39 | `theorem` | [order_pow](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/order-pow--a7296c313cea8b8cd2b7d3dd.md) | 379 | `result-track:a7296c313cea8b8cd2b7d3dd1bc32f4805729fb5b95ddd06daede2ef194b3fbe` |
| 40 | `theorem` | [divXPowOrder_mul_divXPowOrder](../../../../../mathematics/Algebra/RingTheory/Order/Variant20981ccdbd194ebf8184e7a48ccc8720e074dcc84502a81007bde0da92a672d0.lean/declarations/divxpoworder-mul-divxpoworder--990bb5a2329ec68611002055.md) | 393 | `result-track:990bb5a2329ec686110020554e86d33695e92903af9427758f2dff2c15d48b7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
