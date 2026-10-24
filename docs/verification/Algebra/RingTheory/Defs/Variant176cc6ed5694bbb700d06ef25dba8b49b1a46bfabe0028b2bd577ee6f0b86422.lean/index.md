# Verification target: GRWTSK.Algebra.RingTheory.Defs.Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "859c75ad0e5632852149d5f0d0c3bde7d4d0f715",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `859c75ad0e5632852149d5f0d0c3bde7d4d0f715`.

Source path: `GRWTSK/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.StructurePolynomial` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WittVector](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittvector--19b738d821f764a4d7c36d04.md) | 48 | `declaration-track:19b738d821f764a4d7c36d047327de9327b877d349eff1b1565d5832f3b48e5d` |
| 2 | `def` | [WittVector.mk](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittvector-mk--af952a18104d1fbe4abbdb02.md) | 57 | `declaration-track:af952a18104d1fbe4abbdb02cbe45bfc3da8c95e97a5ae78384543c98310fb61` |
| 3 | `theorem` | [ext](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/ext--586eebca5148eaf293e0037b.md) | 71 | `result-track:586eebca5148eaf293e0037b9a7073b525d982f348d8a2d1c84f8d5e8085260e` |
| 4 | `theorem` | [coeff_mk](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/coeff-mk--7f1689306f9fda18ee468b9f.md) | 79 | `result-track:7f1689306f9fda18ee468b9f90d19fd2142b55921fa9f607d9088e54abcf843e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/instance--afd386b89efc982d66069437.md) | 84 | `declaration-track:afd386b89efc982d6606943747b8374d2e4fd131b8fab5cb9978e9c82388aae1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/instance--40f7552d17174ac4cc136376.md) | 88 | `declaration-track:40f7552d17174ac4cc1363760d3a0b0184e2a0ee1f14ec3ce3ebc9ba62b17b37` |
| 7 | `def` | [wittZero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittzero--4625320ebb2c138a2f3f726b.md) | 101 | `declaration-track:4625320ebb2c138a2f3f726bf8229a2c1c8a5df31cfcbf574e397b9cf27fd176` |
| 8 | `def` | [wittOne](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittone--d95aa109dc9e3b5b8ef67140.md) | 105 | `declaration-track:d95aa109dc9e3b5b8ef67140bcd7ec80ec5156f6deb19806e6452b5fbd55696d` |
| 9 | `def` | [wittAdd](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittadd--b627933dd6a33ab7452359e1.md) | 109 | `declaration-track:b627933dd6a33ab7452359e1cbb8c940f2b4f7aeca4ed6cd906170800f2cfa2c` |
| 10 | `def` | [wittNSMul](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittnsmul--0b0d69aead3933d5619dd7c8.md) | 113 | `declaration-track:0b0d69aead3933d5619dd7c8224d643100420e22a5775884bddb62d49e700687` |
| 11 | `def` | [wittZSMul](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittzsmul--c31cc673501157c589967b60.md) | 117 | `declaration-track:c31cc673501157c589967b60e0a2198705aaf2202bdc0c7c76a9ba76c84b1014` |
| 12 | `def` | [wittSub](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittsub--a745c2839c0bec9f57c5e079.md) | 121 | `declaration-track:a745c2839c0bec9f57c5e079edd21bef8188e1c73f8d09815880ec0ce2e6d346` |
| 13 | `def` | [wittMul](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittmul--16a7cebdc5b3133ad31c95e8.md) | 125 | `declaration-track:16a7cebdc5b3133ad31c95e8eb6567f569480477721c6cf2ce34bbfbb3ad0ce5` |
| 14 | `def` | [wittNeg](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittneg--5c9b0b5180824b76f9a17b81.md) | 129 | `declaration-track:5c9b0b5180824b76f9a17b8193e6b9ed635930bd36c92346c31f6f6e3c4ddfea` |
| 15 | `def` | [wittPow](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittpow--9ad32bb168d71d99b2669c02.md) | 133 | `declaration-track:9ad32bb168d71d99b2669c0273f1f62a58532ee3a3bf11e881bfc5b8ca3a748a` |
| 16 | `def` | [peval](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/peval--8d5dfd042f8e2a71062e0d8a.md) | 143 | `declaration-track:8d5dfd042f8e2a71062e0d8a6510ddeb1628b3bbb1de30546c1eaf612b3631a9` |
| 17 | `def` | [eval](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/eval--c65ea0be3711b633a187ce9d.md) | 156 | `declaration-track:c65ea0be3711b633a187ce9d77c658932692dda17232bf76a53ef26e54eba332` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/instance--749d7b4f25ac3ed3d782b3fc.md) | 159 | `declaration-track:749d7b4f25ac3ed3d782b3fcb7192da39966e2f7c28964a5fdac3849d21bc0ec` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/instance--8f81f53670ac7718676ce3bd.md) | 162 | `declaration-track:8f81f53670ac7718676ce3bd5f63f9ec8d1846b7a5814cf82e2b85a6c838df78` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/instance--3ef223e112d3f8da5fb9e85e.md) | 165 | `declaration-track:3ef223e112d3f8da5fb9e85e601778d82f98fb3cc965d7eaed4ce714a5b7a97b` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/instance--88d7b3f0db79cc95f896868d.md) | 168 | `declaration-track:88d7b3f0db79cc95f896868ddd36c998a0af122fb01343b55babe2ce7b5e4600` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/instance--4901de2235bf47fd6d707f8c.md) | 171 | `declaration-track:4901de2235bf47fd6d707f8ccf159b4250689ab6a131882e876b37b714829c90` |
| 23 | `instance` | [hasNatScalar](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/hasnatscalar--3093d9bbbf2b4da9406519e6.md) | 174 | `declaration-track:3093d9bbbf2b4da9406519e6a165887d6afdf912a49ca0de6ca9cae14e1a54b9` |
| 24 | `instance` | [hasIntScalar](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/hasintscalar--85e7ddcb084b4984e8ad940f.md) | 177 | `declaration-track:85e7ddcb084b4984e8ad940f1b2070d479f572962fdd7a920f0477b5d17f8d16` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/instance--8edda28cfb75cc7a598ee2af.md) | 180 | `declaration-track:8edda28cfb75cc7a598ee2af41d25c400d5b09edd1e369924fdbd7bddbaae620` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/instance--ad391fb54f2929090c790ae6.md) | 183 | `declaration-track:ad391fb54f2929090c790ae699588b0dba72124732ab5e272850ff45fe7f2927` |
| 27 | `instance` | [hasNatPow](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/hasnatpow--d764ec685111a389100052f7.md) | 186 | `declaration-track:d764ec685111a389100052f76dbe35d28aa4d3e4ce754fbe29dca7ff32c258f3` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/instance--139859a3a79eba2319a0afb8.md) | 189 | `declaration-track:139859a3a79eba2319a0afb8791e24fd39ea8df8168fe58aa0a7ea5b764b72ed` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/instance--52b3f4b6acbeafc708759694.md) | 192 | `declaration-track:52b3f4b6acbeafc7087596941847d7a2fea45adafdd2c052bbe123300dd46f87` |
| 30 | `theorem` | [wittZero_eq_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittzero-eq-zero--0cf9717379cb64c7d81855ec.md) | 200 | `result-track:0cf9717379cb64c7d81855ec8724ad476e4b905c64b618cb9fa030f1505b7d4c` |
| 31 | `theorem` | [wittOne_zero_eq_one](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittone-zero-eq-one--323a8c32c0183a210b08b61b.md) | 206 | `result-track:323a8c32c0183a210b08b61beb122de2cd4e7344e4787186affb8854de78492f` |
| 32 | `theorem` | [wittOne_pos_eq_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittone-pos-eq-zero--c69fdd42fe744cca8d753c4a.md) | 212 | `result-track:c69fdd42fe744cca8d753c4a1ed5783bcd47b96710a2f3831130062924168cb3` |
| 33 | `theorem` | [wittAdd_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittadd-zero--b7f799a0ea5d6510227e0b3d.md) | 230 | `result-track:b7f799a0ea5d6510227e0b3dd491988605deb0058aad79e970d7e4e25fb2e515` |
| 34 | `theorem` | [wittSub_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittsub-zero--fb75e936a2f37c21af85ba17.md) | 236 | `result-track:fb75e936a2f37c21af85ba17b846b0b5d7fefcd7cba13d91487de243bec3fcda` |
| 35 | `theorem` | [wittMul_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittmul-zero--f7c9b11587310cc4a0b4d63d.md) | 242 | `result-track:f7c9b11587310cc4a0b4d63dbcfa466b2ba166cfde191c63ca19f48f3c34e8f4` |
| 36 | `theorem` | [wittNeg_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittneg-zero--a93bb1f92cc636391bcf89e6.md) | 248 | `result-track:a93bb1f92cc636391bcf89e60c3a310f0d00c61405b14bf4b64e85d9afe21a0f` |
| 37 | `theorem` | [constantCoeff_wittAdd](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/constantcoeff-wittadd--43db221b216b15d4cae6bd73.md) | 254 | `result-track:43db221b216b15d4cae6bd7353a681c8b99737ba6130ee879abc4b5ab5784bbb` |
| 38 | `theorem` | [constantCoeff_wittSub](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/constantcoeff-wittsub--8f5efe4c519ad2070f52506f.md) | 259 | `result-track:8f5efe4c519ad2070f52506fcde6c024f0f174b49fd936c1a061f69d4b6aa23a` |
| 39 | `theorem` | [constantCoeff_wittMul](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/constantcoeff-wittmul--8ff49c4d2ee6e4bbf1b6acbf.md) | 264 | `result-track:8ff49c4d2ee6e4bbf1b6acbff51fc1c412ea6cbb82d8e8969ea7ec0e05a179b8` |
| 40 | `theorem` | [constantCoeff_wittNeg](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/constantcoeff-wittneg--eae564847339c4ef3e17115a.md) | 269 | `result-track:eae564847339c4ef3e17115a6d59e47a9babcdaf0bb7813b1b17c1d14bb6380e` |
| 41 | `theorem` | [constantCoeff_wittNSMul](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/constantcoeff-wittnsmul--bebbf90ec0132262a1291cd8.md) | 274 | `result-track:bebbf90ec0132262a1291cd8fa2ef9be7ccceb5f2198b92f8719f03c73a94bb7` |
| 42 | `theorem` | [constantCoeff_wittZSMul](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/constantcoeff-wittzsmul--65130c1db0f01209970966c1.md) | 279 | `result-track:65130c1db0f01209970966c15cb4cd4c4a2e973a95ca61c7fcc6b654f10b7cd4` |
| 43 | `theorem` | [zero_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/zero-coeff--71bc59ffdd16581538bf48a3.md) | 290 | `result-track:71bc59ffdd16581538bf48a3ac69813172976e90d4df5cd3a0a6cd21cda4ea2d` |
| 44 | `theorem` | [one_coeff_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/one-coeff-zero--e2c2bf10e88b1c3b987407a9.md) | 294 | `result-track:e2c2bf10e88b1c3b987407a9e53a495832e14ff86c863b1d50cdf6e5dda7504b` |
| 45 | `theorem` | [one_coeff_eq_of_pos](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/one-coeff-eq-of-pos--1fecc51df40648284d858c62.md) | 298 | `result-track:1fecc51df40648284d858c62a9c52cefe33b3e16212df1f7d66526cefb125b42` |
| 46 | `theorem` | [v2_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/v2-coeff--0da73577b6bea8ac60b61715.md) | 304 | `result-track:0da73577b6bea8ac60b61715410ba1ab254363d87032e5338509c37373d3de7e` |
| 47 | `theorem` | [add_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/add-coeff--6451b656ec6a88b2e5b5d10d.md) | 309 | `result-track:6451b656ec6a88b2e5b5d10d7369ce41ae7a65297de7c690e18b39c7d174f788` |
| 48 | `theorem` | [sub_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/sub-coeff--47444f7bc6c8a4d0d3701c22.md) | 313 | `result-track:47444f7bc6c8a4d0d3701c22a9b3a89ec2d8451602ba1de8a3cbf235375fc73b` |
| 49 | `theorem` | [mul_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/mul-coeff--f8513b992ba3f44bb30bc819.md) | 317 | `result-track:f8513b992ba3f44bb30bc8198adfc99e90c821e5cb490bb5f4d34d506890b336` |
| 50 | `theorem` | [neg_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/neg-coeff--19ce50a97255cf837f717dd6.md) | 321 | `result-track:19ce50a97255cf837f717dd6d7b5c91c5fc50a15cbecd88dfc3142e98c68a1f7` |
| 51 | `theorem` | [nsmul_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/nsmul-coeff--d88685f31449784c2eb38bd2.md) | 324 | `result-track:d88685f31449784c2eb38bd2253b70d63842fb172d488534b9029b1a7dcfe930` |
| 52 | `theorem` | [zsmul_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/zsmul-coeff--6e91471125b17ffa641b03c0.md) | 328 | `result-track:6e91471125b17ffa641b03c0f66113931f02d58831fad586836433faecc53491` |
| 53 | `theorem` | [pow_coeff](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/pow-coeff--1f723172f0ff5f3c06d81442.md) | 332 | `result-track:1f723172f0ff5f3c06d81442e20fccc117f8060148aec6da50fbe3af47da5ef8` |
| 54 | `theorem` | [add_coeff_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/add-coeff-zero--bf7cb54a5ef0f618f58274f3.md) | 336 | `result-track:bf7cb54a5ef0f618f58274f37664a0bf4df24f8948a3155947adb9ded106ee79` |
| 55 | `theorem` | [mul_coeff_zero](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/mul-coeff-zero--b30871318d1a0afba2d99d04.md) | 339 | `result-track:b30871318d1a0afba2d99d049db3cb3337cb3968315cde6aa4e1c38ad1b0c9cd` |
| 56 | `theorem` | [wittAdd_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittadd-vars--42640979a51d28b6814bbbfa.md) | 344 | `result-track:42640979a51d28b6814bbbfad27e34fbbfc81e4eacc20b530a220049e8e2caf9` |
| 57 | `theorem` | [wittSub_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittsub-vars--022c70418071c8d1dd155220.md) | 347 | `result-track:022c70418071c8d1dd155220f1ecede7c425ddf63ae13643ac5802eb53af6220` |
| 58 | `theorem` | [wittMul_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittmul-vars--5e7e5d28ef0c960348f14c08.md) | 350 | `result-track:5e7e5d28ef0c960348f14c08012116613f323bcb527d5e3fec385d92dc01a637` |
| 59 | `theorem` | [wittNeg_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittneg-vars--31c4cb697671c9caf5dbc4d5.md) | 353 | `result-track:31c4cb697671c9caf5dbc4d5a8b1d9939fcb9fbe59ded2a88f2c41a08ef37670` |
| 60 | `theorem` | [wittNSMul_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittnsmul-vars--c85ca5c04a992b6e01616a55.md) | 356 | `result-track:c85ca5c04a992b6e01616a55602b652d350937bbe46d9b339cd2898d9b21d64a` |
| 61 | `theorem` | [wittZSMul_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittzsmul-vars--f29d1ea82a71b14cfd8e426d.md) | 360 | `result-track:f29d1ea82a71b14cfd8e426dd5dfb35cef0187da6ab917bcdeed0e9dddf4cea7` |
| 62 | `theorem` | [wittPow_vars](../../../../../mathematics/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean/declarations/wittpow-vars--c19fcb161f1763a725cc7a18.md) | 364 | `result-track:c19fcb161f1763a725cc7a1817a03bce68f493138663978923a764c31981720e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
