# Verification target: GRWTSK.Algebra.LinearAlgebra.GeneralLinearGroup.Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eb70ed5b32e4a556c3b491753a4187a21b8bc36",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eb70ed5b32e4a556c3b491753a4187a21b8bc36`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/generallineargroup--7b8e59bb5670cbc2d5e9c099.md) | 51 | `declaration-track:7b8e59bb5670cbc2d5e9c099a56a69c87be923f6f7307200b4aaa1203a5174cb` |
| 2 | `instance` | [instCoeFun](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/instcoefun--036b35920f8ed3e79847cfa2.md) | 67 | `declaration-track:036b35920f8ed3e79847cfa2c7c71a63f6cc2c1e9fcb87b04ca9404fd912e3b0` |
| 3 | `def` | [det](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/det--ee393567ae319a994a6d757b.md) | 74 | `declaration-track:ee393567ae319a994a6d757bbd0239080e03b3f3f62af889f57cb55c452c03cc` |
| 4 | `def` | [toLin](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/tolin--6bc38307aa46378a6fd6d42d.md) | 86 | `declaration-track:6bc38307aa46378a6fd6d42d583167060e346e4c3121dad8a5668f52a476cc69` |
| 5 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/mk--851fb2bee11eccf8708a48df.md) | 91 | `declaration-track:851fb2bee11eccf8708a48dfe10883650937b0c6b73f4572ea1e74b465d2a9e3` |
| 6 | `def` | [mk''](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/mk--264e4b265315a1cf7c0895ba.md) | 96 | `declaration-track:264e4b265315a1cf7c0895baaf76877ab77e7b892bc8fc66a0d0a48219280603` |
| 7 | `def` | [mkOfDetNeZero](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/mkofdetnezero--736e7f56af56c14ede2aea33.md) | 101 | `declaration-track:736e7f56af56c14ede2aea335d4d27c2c1830030942253e9a7691180479b2b0a` |
| 8 | `theorem` | [ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/ext-iff--df0c2ed36f2a7728ee0ea3a5.md) | 105 | `result-track:df0c2ed36f2a7728ee0ea3a5a614742e409113dc12e73150c8b43cb498cd4a79` |
| 9 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/ext--f52ca78f56e85c66ab0705e6.md) | 110 | `result-track:f52ca78f56e85c66ab0705e69c68ba14b59295ba7acd1b5115a4c34d43f3a8d1` |
| 10 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/coe-mul--45b4cef24908911294c44ead.md) | 119 | `result-track:45b4cef24908911294c44ead2859d22bed47e8d7425908bba9c1c7708629774f` |
| 11 | `theorem` | [coe_one](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/coe-one--aa1758419508309498fbfad1.md) | 124 | `result-track:aa1758419508309498fbfad1b2da83dc5fa8655450db82b9cd82b935ba0aed91` |
| 12 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/coe-inv--8bf05e9ffa1f1eebaed9c01d.md) | 128 | `result-track:8bf05e9ffa1f1eebaed9c01d8546ca5dcf2b18a1e7a6f0599ab6af6b7012d4bf` |
| 13 | `def` | [toLinear](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/tolinear--81d8c7b2177808e6d60a29db.md) | 135 | `declaration-track:81d8c7b2177808e6d60a29db0307c8c6186109e3768cb293b41ca30ca76bcfd9` |
| 14 | `theorem` | [coe_toLinear](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/coe-tolinear--89e44ce310b2298f38a3c85f.md) | 144 | `result-track:89e44ce310b2298f38a3c85f7d632edab4212c023368e7fc74ae281a08ac431b` |
| 15 | `theorem` | [toLinear_apply](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/tolinear-apply--284e1a0c4a8137bc7013826c.md) | 150 | `result-track:284e1a0c4a8137bc7013826c5fb5dc30440f5a08b2cbcf8c59a4d5bf6f8030e4` |
| 16 | `def` | [coeToGL](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/coetogl--e5ee935c657e7fc195c6efd4.md) | 166 | `declaration-track:e5ee935c657e7fc195c6efd45b41324c800b4e5238ca8634e5518bfd7aa9a842` |
| 17 | `instance` | [hasCoeToGeneralLinearGroup](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/hascoetogenerallineargroup--72f3e97362b2992d896adc99.md) | 171 | `declaration-track:72f3e97362b2992d896adc99aa6c875d8a86fcef4d3bb111ac1f13427e681aad` |
| 18 | `theorem` | [coeToGL_det](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/coetogl-det--e4822420b6aeac68b98dcc11.md) | 176 | `result-track:e4822420b6aeac68b98dcc117c0e6b208e0216a45553c311c2baed1eac0a9852` |
| 19 | `def` | [GLPos](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/glpos--3761f7bc5678d968a39ffb2d.md) | 194 | `declaration-track:3761f7bc5678d968a39ffb2dea72ce3a3b7333650d61c79060ab490884fea6d6` |
| 20 | `theorem` | [mem_glpos](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/mem-glpos--e3cbc68dfb311c87bcf2e416.md) | 202 | `result-track:e3cbc68dfb311c87bcf2e4161a60e2f7651cc4fce26604010d8d670db69ce729` |
| 21 | `theorem` | [GLPos.det_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/glpos-det-ne-zero--f224667873685ccb29ff3e63.md) | 207 | `result-track:f224667873685ccb29ff3e63e1c0a106d6bceb5e01e2df1957d6ffcc780f972f` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/instance--4a6eca3ce8a78dbd9b195324.md) | 221 | `declaration-track:4a6eca3ce8a78dbd9b195324c2a8c954b6d17a694fac79d8e6997b5feadaa213` |
| 23 | `theorem` | [GLPos.coe_neg_GL](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/glpos-coe-neg-gl--9afc0706ae710aaa12fe5a29.md) | 229 | `result-track:9afc0706ae710aaa12fe5a293bf8350e6d9d728eee194cb462b2427b8e6ae758` |
| 24 | `theorem` | [GLPos.coe_neg](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/glpos-coe-neg--2c1003b6ea3ff7b2c74f8a50.md) | 235 | `result-track:2c1003b6ea3ff7b2c74f8a503298998f280b1eb0125176a946819042f8c6e85a` |
| 25 | `theorem` | [GLPos.coe_neg_apply](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/glpos-coe-neg-apply--0e8998e23bece8564f5dcedc.md) | 241 | `result-track:0e8998e23bece8564f5dcedc140717a776520644420d666ba50ab559b5c11ceb` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/instance--9cd9347c4e2cbb17bbc0ae7b.md) | 247 | `declaration-track:9cd9347c4e2cbb17bbc0ae7bee1968bce4782169fcbedd22e63156798661f9b5` |
| 27 | `def` | [toGLPos](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/toglpos--727aaee487f189a4850454bf.md) | 257 | `declaration-track:727aaee487f189a4850454bfa3a60b4d785df25321b456eb44035fbbcc10d9be` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/instance--f5a749550d8cef737abe1e27.md) | 264 | `declaration-track:f5a749550d8cef737abe1e2711b4dd1714ab7f6bc82a35a242b4f586856e37d3` |
| 29 | `theorem` | [toGLPos_injective](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/toglpos-injective--c5b387b41aaa129adabbe930.md) | 269 | `result-track:c5b387b41aaa129adabbe930bad706c227f3f44108011dbd5ef6863ac9973f37` |
| 30 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/coe-glpos-coe-gl-coe-matrix--40ee5ab74de8ce70b01dadc1.md) | 282 | `result-track:40ee5ab74de8ce70b01dadc1c34f1f1de60b99a5c0351491f1b05f6b4e76ba9f` |
| 31 | `theorem` | [coe_to_GLPos_to_GL_det](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/coe-to-glpos-to-gl-det--0694645d8ba0a98d44a72a2e.md) | 289 | `result-track:0694645d8ba0a98d44a72a2e06bfab65e4a0ee0412c2c815eec676e85eacebae` |
| 32 | `theorem` | [coe_GLPos_neg](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/coe-glpos-neg--1bc4ce3036a8ba8d961fa878.md) | 298 | `result-track:1bc4ce3036a8ba8d961fa878f38fa3edd27bc181a1a494c79164504b109665ec` |
| 33 | `def` | [planeConformalMatrix](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean/declarations/planeconformalmatrix--9989f92b7af75d0de00038f4.md) | 310 | `declaration-track:9989f92b7af75d0de00038f473c706620972dc10de2037c3d001af81ae6151be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
