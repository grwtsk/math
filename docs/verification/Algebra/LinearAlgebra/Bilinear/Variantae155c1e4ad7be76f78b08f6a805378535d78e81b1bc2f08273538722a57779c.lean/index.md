# Verification target: GRWTSK.Algebra.LinearAlgebra.Bilinear.Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d5473f7f06fa3cb47f25f0ff0f72409380b7d6b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d5473f7f06fa3cb47f25f0ff0f72409380b7d6b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.NonUnitalHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulleft--cd9c393b91cacedbfecbcc62.md) | 43 | `declaration-track:cd9c393b91cacedbfecbcc6290650beeb09003db3bada5aa245fe5a0355365be` |
| 2 | `theorem` | [mulLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulleft-apply--eb3cbb906b2f84fa80ec9b5a.md) | 49 | `result-track:eb3cbb906b2f84fa80ec9b5a8bbc9f0417eee9ba52cc1e004e40ee32d350070e` |
| 3 | `theorem` | [mulLeft_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulleft-toaddmonoidhom--c3de73845352c7c5342063fe.md) | 52 | `result-track:c3de73845352c7c5342063feb9dbfb387b80957f1843a1080275d322e5933497` |
| 4 | `theorem` | [mulLeft_zero_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulleft-zero-eq-zero--4cc8954e1e94f4a6034b9c22.md) | 56 | `result-track:4cc8954e1e94f4a6034b9c227876c04f183c0f3fc5ad63e16e3f8a91908cf52e` |
| 5 | `def` | [mulRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulright--4834c81dae8b1eb72e238fb8.md) | 69 | `declaration-track:4834c81dae8b1eb72e238fb8e330bdbd2566a2652b918458fc49ac614088e581` |
| 6 | `theorem` | [mulRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulright-apply--c3e6a820e709570da41c8e28.md) | 75 | `result-track:c3e6a820e709570da41c8e28619d70ede9a318f72ec0d4c007eb2da8939f9710` |
| 7 | `theorem` | [mulRight_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulright-toaddmonoidhom--cdb170505933a33242a0e913.md) | 78 | `result-track:cdb170505933a33242a0e913c754e3d66afcc444e1d2a5db9cb9b924edddf721` |
| 8 | `theorem` | [mulRight_zero_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulright-zero-eq-zero--2f888566d02294e0580a28dd.md) | 82 | `result-track:2f888566d02294e0580a28dd799f2116e3e6cab2a1f20452a7bc43bc42f8bac7` |
| 9 | `def` | [mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mul--4807b8955eddc6a3409e693d.md) | 95 | `declaration-track:4807b8955eddc6a3409e693dbfa60f50a8ef4544c55367ec617f5b4d2d9996df` |
| 10 | `def` | [mul'](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mul--c02a7f6f89bad6f695dfe74d.md) | 100 | `declaration-track:c02a7f6f89bad6f695dfe74d635b74d8ad15060d9658e1693bd364897efb3a5f` |
| 11 | `def` | [mulLeftRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulleftright--448d3d5513c9f4a6eddd3804.md) | 106 | `declaration-track:448d3d5513c9f4a6eddd380476e600c6ac3354b4ee94c06a39b2d3babb220b54` |
| 12 | `theorem` | [mul_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mul-apply--1557734b07fd6ef16c28bc76.md) | 112 | `result-track:1557734b07fd6ef16c28bc76a4bda2518405f7094dcfb261486d820206b3952d` |
| 13 | `theorem` | [mulLeftRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulleftright-apply--d6d1b5f2d19d94a439e32b61.md) | 116 | `result-track:d6d1b5f2d19d94a439e32b614084e5b16000534372a6e96a78ce0c161b66c82d` |
| 14 | `theorem` | [mul'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mul-apply--aaed615786354388997fec29.md) | 120 | `result-track:aaed615786354388997fec29917bd322bff1e9fa86c10c3158f54104f8b26c54` |
| 15 | `theorem` | [mulLeft_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulleft-mul--a0b829ac695c98504c780fca.md) | 132 | `result-track:a0b829ac695c98504c780fca8b8f6a906e0d7f70b64aec8bb838f21bf814b06c` |
| 16 | `theorem` | [mulRight_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulright-mul--f97e98c51359e685298c5d5c.md) | 138 | `result-track:f97e98c51359e685298c5d5ce3c0753c039399d197d05c7d1b9db683d1a09c38` |
| 17 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.MulLeft.Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.NonUnitalAlgHom.lmul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/root-grwtsk-algebra-linearalgebra-mulleft-variante7049e2606395d4acb7adb1--f00b5ce1c6f227b710ccc524.md) | 152 | `declaration-track:f00b5ce1c6f227b710ccc524056419bb703013c50ff07e63cede1453953fcd43` |
| 18 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.MulLeft.Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.NonUnitalAlgHom.coe_lmul_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/root-grwtsk-algebra-linearalgebra-mulleft-variante7049e2606395d4acb7adb1--cca4467ef62eed33cfdc034e.md) | 160 | `result-track:cca4467ef62eed33cfdc034e900dd298f03407fe3ecb471c53237d002c2d776c` |
| 19 | `theorem` | [commute_mulLeft_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/commute-mulleft-right--41c01f80f8d8d9d0eabecd41.md) | 163 | `result-track:41c01f80f8d8d9d0eabecd417e267548ffeefd05871f322567312f44b01d4b61` |
| 20 | `theorem` | [map_mul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/map-mul-iff--cceb21c5b40e470377b9420d.md) | 172 | `result-track:cceb21c5b40e470377b9420d6bd4eb965d2918115e2ce1cd72bd9b0de97bd848` |
| 21 | `theorem` | [mulLeft_one](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulleft-one--f21a4a34236f75f1d52886b3.md) | 189 | `result-track:f21a4a34236f75f1d52886b329c7cec1c4662e531da05d9813159fbac1360b19` |
| 22 | `theorem` | [mulLeft_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulleft-eq-zero-iff--e235f6e1b3a75dfbe422e54f.md) | 192 | `result-track:e235f6e1b3a75dfbe422e54f605dd8b5aa10ab12def24145a7300b441817b045` |
| 23 | `theorem` | [pow_mulLeft](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/pow-mulleft--a09bf76b21155071a28802c6.md) | 199 | `result-track:a09bf76b21155071a28802c6e62a0e4e9dca1c5f7f09ce5f94b8f683e3e0cc57` |
| 24 | `theorem` | [mulRight_one](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulright-one--75856de44c27d2d229a05df2.md) | 210 | `result-track:75856de44c27d2d229a05df2f2731ca68590d9e09ceb2c4ff3e514cc2af4c176` |
| 25 | `theorem` | [mulRight_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulright-eq-zero-iff--334b0edf57ad8004e38c1086.md) | 213 | `result-track:334b0edf57ad8004e38c108671b20395f85a3a84b9d71df57c33140e3f4a267b` |
| 26 | `theorem` | [pow_mulRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/pow-mulright--40c448bc4bbe625ab2244472.md) | 220 | `result-track:40c448bc4bbe625ab2244472a974b0f8d6618b51880b7c3f686f80a48168fe76` |
| 27 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.MulLeft.Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.Algebra.lmul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/root-grwtsk-algebra-linearalgebra-mulleft-variante7049e2606395d4acb7adb1--7a4dfe467837e5eb172f32e2.md) | 235 | `declaration-track:7a4dfe467837e5eb172f32e2ca55105ec5d7052ad17ca4c51f93caa0fe0b196e` |
| 28 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.MulLeft.Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.Algebra.coe_lmul_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/root-grwtsk-algebra-linearalgebra-mulleft-variante7049e2606395d4acb7adb1--d462f09e4155bd64e9d6ad6e.md) | 243 | `result-track:d462f09e4155bd64e9d6ad6e53607cf5279896e97b504f693df593ca1835cbc7` |
| 29 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.MulLeft.Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.Algebra.lmul_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/root-grwtsk-algebra-linearalgebra-mulleft-variante7049e2606395d4acb7adb1--3df27fc122f34575d9ac8b37.md) | 246 | `result-track:3df27fc122f34575d9ac8b37872fef23b12064cc868468673af951fcab9f772a` |
| 30 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.MulLeft.Variante7049e2606395d4acb7adb1dc1eb657dfc2e66e6e2e5e243701db36f02199048.Algebra.lmul_isUnit_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/root-grwtsk-algebra-linearalgebra-mulleft-variante7049e2606395d4acb7adb1--f8da8cfed9449bdd3a46ac86.md) | 249 | `result-track:f8da8cfed9449bdd3a46ac8660784c15b86627cc9b9d341bdf64324e03d12dbd` |
| 31 | `theorem` | [toSpanSingleton_eq_algebra_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/tospansingleton-eq-algebra-linearmap--f7ac2e4403a0e35a823e8d3a.md) | 254 | `result-track:f7ac2e4403a0e35a823e8d3acec423a33a9abb03eaf1d1d78b172a9e5818a396` |
| 32 | `theorem` | [mulLeft_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulleft-injective--39f9896ba552f3aa38c8a24f.md) | 264 | `result-track:39f9896ba552f3aa38c8a24f4c4bebef9036a81e6fda651810cfaea7240f5555` |
| 33 | `theorem` | [mulRight_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mulright-injective--d3ca3d247eaad2c4fdcff834.md) | 269 | `result-track:d3ca3d247eaad2c4fdcff8346242af01e82f2326ff08db950c49cc527b7cf7eb` |
| 34 | `theorem` | [mul_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Variantae155c1e4ad7be76f78b08f6a805378535d78e81b1bc2f08273538722a57779c.lean/declarations/mul-injective--b28a2490266edfcf0c9632ba.md) | 274 | `result-track:b28a2490266edfcf0c9632ba99c4792f8e7ac5c28ff90b4e5d0b4ded2132c454` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
