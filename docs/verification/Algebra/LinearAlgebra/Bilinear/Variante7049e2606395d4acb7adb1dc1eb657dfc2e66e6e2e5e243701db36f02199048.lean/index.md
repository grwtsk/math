# Verification target: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d17350e6c667a1d9b771fe2ef916e9a51300e41c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d17350e6c667a1d9b771fe2ef916e9a51300e41c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.NonUnitalHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulleft--7cf2e45aa9b0f5b3c8e4cffc.md) | 35 | `declaration-track:7cf2e45aa9b0f5b3c8e4cffcd1dae7e70b3c8f64b7da6ae910710dce52280c95` |
| 2 | `theorem` | [mulLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulleft-apply--8b70733d66a89af83d92e3f5.md) | 41 | `result-track:8b70733d66a89af83d92e3f5e57cb19e0e975503c0a347848c9c505915871df1` |
| 3 | `theorem` | [mulLeft_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulleft-toaddmonoidhom--633ad83fd1e63a3835a9276b.md) | 44 | `result-track:633ad83fd1e63a3835a9276b33461eaf2d4d0bcd158b015216d8397881b8e6b4` |
| 4 | `theorem` | [mulLeft_zero_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulleft-zero-eq-zero--ad3d1f04873bc39d4ff9c592.md) | 48 | `result-track:ad3d1f04873bc39d4ff9c59249427defee211746906ba18ec1c5ac40599af331` |
| 5 | `def` | [mulRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulright--c1571c985403e41f2502852f.md) | 61 | `declaration-track:c1571c985403e41f2502852ff92da8e5dce7e585c76e7374bf11106d3764f8fa` |
| 6 | `theorem` | [mulRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulright-apply--9ec3a3bc06e47d8d92f9020b.md) | 67 | `result-track:9ec3a3bc06e47d8d92f9020b9adfe5336714582e66c7b130d4e0f531190e720a` |
| 7 | `theorem` | [mulRight_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulright-toaddmonoidhom--696dafbbc49decbc375d1e1a.md) | 70 | `result-track:696dafbbc49decbc375d1e1afd69975dac3683c9e0f74d05df26ab59fc2aa131` |
| 8 | `theorem` | [mulRight_zero_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulright-zero-eq-zero--875ec2d02e028b737fa281e0.md) | 74 | `result-track:875ec2d02e028b737fa281e0fb3f9c1fd379a88e979b48dacbc9b19d6379d8a9` |
| 9 | `def` | [mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mul--c7cc43838205e6eb946608e4.md) | 87 | `declaration-track:c7cc43838205e6eb946608e40eb4e182ca93f3e1b2e1407e824d9323fe291f57` |
| 10 | `def` | [mul'](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mul--be4650c7d7ff47b9050b858b.md) | 92 | `declaration-track:be4650c7d7ff47b9050b858b79ad24f9edf40dd4baa645f4dd91dd93d366dc94` |
| 11 | `def` | [mulLeftRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulleftright--d1634f503cf943657b9d5615.md) | 98 | `declaration-track:d1634f503cf943657b9d56156a45e1fdbd116cee5eb4acdc6afba458e8644614` |
| 12 | `theorem` | [mul_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mul-apply--4a147af71b239a7ebd2815a5.md) | 104 | `result-track:4a147af71b239a7ebd2815a589c93e279102caa3a877fc1a888895455453d206` |
| 13 | `theorem` | [mulLeftRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulleftright-apply--824b08f64a332d7df8336b91.md) | 108 | `result-track:824b08f64a332d7df8336b91680521e379fb2f9fee7781c1657da76811b8d59c` |
| 14 | `theorem` | [mul'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mul-apply--95ed35db695e7d12b177af6f.md) | 112 | `result-track:95ed35db695e7d12b177af6f64bc3d02bdbddc889a8f81b3519155d12d8b1d87` |
| 15 | `theorem` | [mulLeft_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulleft-mul--1c42393a7608debce190bd78.md) | 124 | `result-track:1c42393a7608debce190bd78a04c965d315148f859a196ce86d971e0c4b600d1` |
| 16 | `theorem` | [mulRight_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulright-mul--331b3bf4bcc0ccde1ee0aa10.md) | 130 | `result-track:331b3bf4bcc0ccde1ee0aa10b79566e0682e9ea5de0981ac3fab9619e040d31e` |
| 17 | `def` | [_root_.NonUnitalAlgHom.lmul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/root-nonunitalalghom-lmul--c45ad7964f675c2f67727e76.md) | 144 | `declaration-track:c45ad7964f675c2f67727e762b9e4790dcfb5b989ab243af576b416f8f2bcadb` |
| 18 | `theorem` | [_root_.NonUnitalAlgHom.coe_lmul_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/root-nonunitalalghom-coe-lmul-eq-mul--7ac3729f6445728b7c838521.md) | 152 | `result-track:7ac3729f6445728b7c838521d2ebd9bee3d6e1961a0502c93fad79c6b27ea5ef` |
| 19 | `theorem` | [commute_mulLeft_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/commute-mulleft-right--2be5b706b5fd1d055fc69ed0.md) | 155 | `result-track:2be5b706b5fd1d055fc69ed0ecdcebc0024c2e1a3484d71ba0d7feb01b46a45a` |
| 20 | `theorem` | [map_mul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/map-mul-iff--95097c1d1d2737917e6a24fa.md) | 164 | `result-track:95097c1d1d2737917e6a24fa2d40bb7f51fd67b01c880a8d634ea2f1078b48e7` |
| 21 | `theorem` | [mulLeft_one](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulleft-one--94a69cc277207e21a8ec66b2.md) | 181 | `result-track:94a69cc277207e21a8ec66b2039411428a8a2e4ea05a573657eb533b5de44304` |
| 22 | `theorem` | [mulLeft_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulleft-eq-zero-iff--ef7ceb8bb59da8e3e972b221.md) | 184 | `result-track:ef7ceb8bb59da8e3e972b2216399072fdceb0a50810045536daf35191661c7c8` |
| 23 | `theorem` | [pow_mulLeft](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/pow-mulleft--e1cd204ab4451e08db477eec.md) | 191 | `result-track:e1cd204ab4451e08db477eeceb88aad7e3efbc60d5503a1c16e74596252f18d7` |
| 24 | `theorem` | [mulRight_one](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulright-one--5171f60ad3f4562168cf23ae.md) | 202 | `result-track:5171f60ad3f4562168cf23aebb8d6afa1be0e2cddd5dc8a4c6185e830565caf2` |
| 25 | `theorem` | [mulRight_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulright-eq-zero-iff--48e2cfe8bc0702f8ff937b14.md) | 205 | `result-track:48e2cfe8bc0702f8ff937b1447f1ecceb8f5d94cca8867ed286c038463cf3d0f` |
| 26 | `theorem` | [pow_mulRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/pow-mulright--0d6e839f5f475a7ab992b6ea.md) | 212 | `result-track:0d6e839f5f475a7ab992b6ea96c904ed6db9413719cb32908e893d20c8b18df3` |
| 27 | `def` | [_root_.Algebra.lmul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/root-algebra-lmul--d0e9fd51b8dafd97c5e4abab.md) | 227 | `declaration-track:d0e9fd51b8dafd97c5e4ababa11f21d9d1e4d37d6106b8b5b3e7fba28609e226` |
| 28 | `theorem` | [_root_.Algebra.coe_lmul_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/root-algebra-coe-lmul-eq-mul--1b701a22940f8520d6b4738d.md) | 235 | `result-track:1b701a22940f8520d6b4738d299f1979a6d89f12ba61bda2d31290bca98060d2` |
| 29 | `theorem` | [_root_.Algebra.lmul_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/root-algebra-lmul-injective--da64ef40a3efc8ceb2bb4e90.md) | 238 | `result-track:da64ef40a3efc8ceb2bb4e9084c4f55a03ba6cf051a4ef1ae991a908a8115234` |
| 30 | `theorem` | [_root_.Algebra.lmul_isUnit_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/root-algebra-lmul-isunit-iff--abc0330e49b0e717d6229209.md) | 241 | `result-track:abc0330e49b0e717d6229209dc1188fbeb012cd12c2575b6ae23d0a58b6786a5` |
| 31 | `theorem` | [toSpanSingleton_eq_algebra_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/tospansingleton-eq-algebra-linearmap--4b1553e77002a4e32a94eb70.md) | 246 | `result-track:4b1553e77002a4e32a94eb709682072d70ef2a9916372d7c4eae3b39387cb02e` |
| 32 | `theorem` | [mulLeft_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulleft-injective--113e280bb769273c2da626fa.md) | 256 | `result-track:113e280bb769273c2da626fa2d0477f4f6fdf5ca17f2985d6ba126e5c6ab27be` |
| 33 | `theorem` | [mulRight_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mulright-injective--1fde00b8cf58b83951352a6b.md) | 261 | `result-track:1fde00b8cf58b83951352a6bb2eddc3a60325feb7afc9d7a31c0db6a89ae8a46` |
| 34 | `theorem` | [mul_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.lean/declarations/mul-injective--562337111736f4cfbb0abeb7.md) | 266 | `result-track:562337111736f4cfbb0abeb706f58a450f4aa954da3644cf5d239a290f1cea13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
