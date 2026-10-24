# Verification target: GRWTSK.Algebra.LinearAlgebra.Bilinear.Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d741a785bf910ff9325648139dd32f8f6573b67",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d741a785bf910ff9325648139dd32f8f6573b67`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Iterate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.NonUnitalAlg` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mul--a66ea3e8c506336cf0d9d9b0.md) | 42 | `declaration-track:a66ea3e8c506336cf0d9d9b0bb061c642dcd46bb24816fd1609e7d53dbe9bd9e` |
| 2 | `def` | [mul'](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mul--1bfeae6a9e0ed0bbf6bc04f8.md) | 47 | `declaration-track:1bfeae6a9e0ed0bbf6bc04f81d7dcf3143e476a457afa4c3c65be9cf005c9f2e` |
| 3 | `def` | [mulLeft](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulleft--8ff3fba4dc7edf678ea51468.md) | 54 | `declaration-track:8ff3fba4dc7edf678ea51468ae6a2cd2718fc30caf2060aad114a3ca970f964e` |
| 4 | `def` | [mulRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulright--f2fcb603d4e425746a7c213c.md) | 59 | `declaration-track:f2fcb603d4e425746a7c213cf529391056ad54e53d7d9fba43d0a46f9e85b4e8` |
| 5 | `def` | [mulLeftRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulleftright--a3cbd039ad93c11b583b3a9f.md) | 64 | `declaration-track:a3cbd039ad93c11b583b3a9fbf522a84f7d22731f23687c98190ee4c7fc83398` |
| 6 | `theorem` | [mulLeft_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulleft-toaddmonoidhom--350408616fd27695d99d1fbd.md) | 69 | `result-track:350408616fd27695d99d1fbd44fe523b8349bf5a584e25749d609dc310c238a4` |
| 7 | `theorem` | [mulRight_toAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulright-toaddmonoidhom--77bc63551c8e739de75ff6d8.md) | 74 | `result-track:77bc63551c8e739de75ff6d8e93307b06ad0abd9a6b479f0979b2c2d677d3804` |
| 8 | `theorem` | [mul_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mul-apply--aabd99eb9689c712b4b760e1.md) | 81 | `result-track:aabd99eb9689c712b4b760e1abb3b2011a4469a3380b7f462068f4a0d8499b5b` |
| 9 | `theorem` | [mulLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulleft-apply--604d60a8ff0483c842398c0c.md) | 86 | `result-track:604d60a8ff0483c842398c0ce65dd404e1feeac9566054099929adea6d26a5de` |
| 10 | `theorem` | [mulRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulright-apply--fe8e7b1ebfcccdf190a6ba07.md) | 91 | `result-track:fe8e7b1ebfcccdf190a6ba0779ea26be8a10d4d76a9b00ea13895f733cd480b7` |
| 11 | `theorem` | [mulLeftRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulleftright-apply--952427bde5cf8b0104c3ae82.md) | 96 | `result-track:952427bde5cf8b0104c3ae82a6751262eec993ed309e45dd0162e1035c672454` |
| 12 | `theorem` | [mul'_apply](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mul-apply--bd65dcd94655358bc03d80e5.md) | 101 | `result-track:bd65dcd94655358bc03d80e5bda72448b92bf72fe9d189fd46a2c674ad91815a` |
| 13 | `theorem` | [mulLeft_zero_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulleft-zero-eq-zero--ef05df05623c0ee6e5c8bdfc.md) | 106 | `result-track:ef05df05623c0ee6e5c8bdfc7f0782c405e0e2987b6c350ff90b14ad3497a524` |
| 14 | `theorem` | [mulRight_zero_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulright-zero-eq-zero--3a3b75c6a79df4cbce3c87c0.md) | 111 | `result-track:3a3b75c6a79df4cbce3c87c040688357db6dbbca7ff3deb179b29e247769245f` |
| 15 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.NonUnitalAlgHom.lmul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/root-grwtsk-algebra-linearalgebra-mul-variant5ed053dbedb6c1d5d462d16157e--74a9d3463955e34d15df7431.md) | 125 | `declaration-track:74a9d3463955e34d15df7431a532345cf037629cd55ec6ce24720e8f457beab9` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.NonUnitalAlgHom.coe_lmul_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/root-grwtsk-algebra-linearalgebra-mul-variant5ed053dbedb6c1d5d462d16157e--9cf538124e4f31d42682cb59.md) | 139 | `result-track:9cf538124e4f31d42682cb59345dda0fad74afa91b45e497c03da2677dddf193` |
| 17 | `theorem` | [commute_mulLeft_right](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/commute-mulleft-right--68d6d262e9b7a2ba7fed1e3a.md) | 143 | `result-track:68d6d262e9b7a2ba7fed1e3aefff786f99031fd1cfcc2578b68069156ba2cbdf` |
| 18 | `theorem` | [mulLeft_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulleft-mul--6e5733aad6d91b020a69b195.md) | 149 | `result-track:6e5733aad6d91b020a69b1953e257be4eee66c292676896322cd643386a98e21` |
| 19 | `theorem` | [mulRight_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulright-mul--25eca1eb80f96acfb55b465c.md) | 155 | `result-track:25eca1eb80f96acfb55b465c8a5745b4c0a21d9fca73aa625ccdd042fe0ec765` |
| 20 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.Algebra.lmul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/root-grwtsk-algebra-linearalgebra-mul-variant5ed053dbedb6c1d5d462d16157e--e53ec8c7842c53e23fcba1cc.md) | 170 | `declaration-track:e53ec8c7842c53e23fcba1ccd1a421915e569551f5deb00344ed445fc89f39f5` |
| 21 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.Algebra.coe_lmul_eq_mul](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/root-grwtsk-algebra-linearalgebra-mul-variant5ed053dbedb6c1d5d462d16157e--b54d14ae80c7159af1195e63.md) | 191 | `result-track:b54d14ae80c7159af1195e630475a7e9828f2c547aab9655d2218020179adbfe` |
| 22 | `theorem` | [mulLeft_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulleft-eq-zero-iff--7d4ca8d456d24d23d5b71b3c.md) | 196 | `result-track:7d4ca8d456d24d23d5b71b3c204a4213046e200f575dc9ad5285c76b917f0de1` |
| 23 | `theorem` | [mulRight_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulright-eq-zero-iff--ebb457edd232c278aac983b6.md) | 205 | `result-track:ebb457edd232c278aac983b6bda9830f4c8fe2d7d8e9333b8633a026f0643c23` |
| 24 | `theorem` | [mulLeft_one](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulleft-one--45502e18fee38e7fc0c7c698.md) | 214 | `result-track:45502e18fee38e7fc0c7c69884bd1be2eb464d0159d442aba0b297fcf312c1b6` |
| 25 | `theorem` | [mulRight_one](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulright-one--dd915a7f8ecadcf874efd126.md) | 220 | `result-track:dd915a7f8ecadcf874efd12647cb1033737be14c9b87839749113c31e771dc64` |
| 26 | `theorem` | [pow_mulLeft](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/pow-mulleft--4227bf14b04d8f1944fe6ab3.md) | 226 | `result-track:4227bf14b04d8f1944fe6ab377adff5edc01913698e7001af2b0b0fd98c21a28` |
| 27 | `theorem` | [pow_mulRight](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/pow-mulright--efabbe2a07cf0e960f020291.md) | 231 | `result-track:efabbe2a07cf0e960f020291d90b10d6d0fcc55c32315ca95c60131b7321f353` |
| 28 | `theorem` | [mulLeft_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulleft-injective--5c72f17d1a41a4711c6f8bd0.md) | 243 | `result-track:5c72f17d1a41a4711c6f8bd032a9bf3cdf3e6c6a53cf12bd0727b0b0c91840bf` |
| 29 | `theorem` | [mulRight_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mulright-injective--59ce08560b76efc828ac0d06.md) | 250 | `result-track:59ce08560b76efc828ac0d06282dabbb90356c9bbaa86ad3e855f1c1ef68b8ff` |
| 30 | `theorem` | [mul_injective](../../../../../mathematics/Algebra/LinearAlgebra/Bilinear/Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8.lean/declarations/mul-injective--3646bb7a3c0d397b6ad454a0.md) | 257 | `result-track:3646bb7a3c0d397b6ad454a0acf9f03ae6ebb58dfa374be404b0ec0ae678ee7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
