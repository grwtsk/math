# Verification target: GRWTSK.Algebra.LinearAlgebra.ZPow.Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f20e44f3d74d1364fd070b39a2bb969ae8c9a46f",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f20e44f3d74d1364fd070b39a2bb969ae8c9a46f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/instance--b256e6573cd81d852985b4b5.md) | 36 | `declaration-track:b256e6573cd81d852985b4b5eb7cd62e2e7a053c89fd5793d12d7b6fdc2994eb` |
| 2 | `theorem` | [inv_pow'](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/inv-pow--d7f3497932e79d36ebb20639.md) | 42 | `result-track:d7f3497932e79d36ebb20639ce238eb61fa0e5fe8e6a49634049f329855daea2` |
| 3 | `theorem` | [pow_sub'](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/pow-sub--1a33c9179ff40a8afd05cba5.md) | 48 | `result-track:1a33c9179ff40a8afd05cba50c74930cc22ea6617938af03d3bee71ab9319201` |
| 4 | `theorem` | [pow_inv_comm'](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/pow-inv-comm--9da1ecfae41404df0a2d3d10.md) | 55 | `result-track:9da1ecfae41404df0a2d3d10a797867542d83ef271731c3140c309bffbd72a4b` |
| 5 | `theorem` | [one_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/one-zpow--833415f1f4b386be73f7cd78.md) | 79 | `result-track:833415f1f4b386be73f7cd78188c7b0c35b9397609b8054ab2921d3d80799914` |
| 6 | `theorem` | [zero_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zero-zpow--043ba6524568173d821d89a8.md) | 84 | `result-track:043ba6524568173d821d89a85174bb1328ff455cf82aece0ea308a00433c3cd3` |
| 7 | `theorem` | [zero_zpow_eq](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zero-zpow-eq--3ae717d6f759cc5b925b4204.md) | 92 | `result-track:3ae717d6f759cc5b925b4204ee24a7596c5b8f363d801474911ebbaf91877dbe` |
| 8 | `theorem` | [inv_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/inv-zpow--6d8221bcd7a9c95d11fb579f.md) | 98 | `result-track:6d8221bcd7a9c95d11fb579fc8a4878228d4d929a8044747fbea51fb6cd42402` |
| 9 | `theorem` | [zpow_neg_one](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-neg-one--7de34936d2c819ab859f2feb.md) | 104 | `result-track:7de34936d2c819ab859f2feb1b0a7fe4cfe7a62861b4ffd3943ae27a632a26b4` |
| 10 | `theorem` | [zpow_coe_nat](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-coe-nat--9d6cf48805886d14c6f26f7f.md) | 109 | `result-track:9d6cf48805886d14c6f26f7fbc0ad15f722e5f6d0ac6f6e0e79d1f70147f2433` |
| 11 | `theorem` | [zpow_neg_coe_nat](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-neg-coe-nat--cd1e487415a02f9329b054dd.md) | 114 | `result-track:cd1e487415a02f9329b054dd1fa37c15c4f72a95006915e217c18de37cc47f0a` |
| 12 | `theorem` | [_root_.IsUnit.det_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/root-isunit-det-zpow--92c6cef8d3ddab596ed2d0f8.md) | 120 | `result-track:92c6cef8d3ddab596ed2d0f8604ce62e81505f986cf5ce70b06ad4100e085b11` |
| 13 | `theorem` | [isUnit_det_zpow_iff](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/isunit-det-zpow-iff--bfb6d0ba837d9fc065762967.md) | 126 | `result-track:bfb6d0ba837d9fc0657629676f236fb6fe87fd0b2a622e0ab44803beec395716` |
| 14 | `theorem` | [zpow_neg](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-neg--d41f124db0b32ce6728fa4e0.md) | 136 | `result-track:d41f124db0b32ce6728fa4e0ea3b0e2472fb91ae240afa8a6a88c1fe40461978` |
| 15 | `theorem` | [inv_zpow'](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/inv-zpow--07d5899d56975c385dc657e4.md) | 144 | `result-track:07d5899d56975c385dc657e4b13091445234d3f1865edce4c1889601265a67b3` |
| 16 | `theorem` | [zpow_add_one](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-add-one--e2ff1df35f2b486055c43270.md) | 148 | `result-track:e2ff1df35f2b486055c4327035d881b592017af1628a09f2cf1aacd0707371dc` |
| 17 | `theorem` | [zpow_sub_one](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-sub-one--957aa6356e4d81750760e76f.md) | 160 | `result-track:957aa6356e4d81750760e76f71d315a7d4652b6ef7a0d9f634076c89d6971c8a` |
| 18 | `theorem` | [zpow_add](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-add--c5c2f18de91249c5a78c3952.md) | 167 | `result-track:c5c2f18de91249c5a78c39522e8bfca398fba01f95ba15633c0d9e70708e5532` |
| 19 | `theorem` | [zpow_add_of_nonpos](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-add-of-nonpos--778fefdb53f5559cbc86ec36.md) | 174 | `result-track:778fefdb53f5559cbc86ec361ff3fb51afe5b6328afe104b98883e57963a046f` |
| 20 | `theorem` | [zpow_add_of_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-add-of-nonneg--1962eedd502a380faf416091.md) | 183 | `result-track:1962eedd502a380faf41609167539e80d4342c3e88406dcd0171b38fd92f4134` |
| 21 | `theorem` | [zpow_one_add](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-one-add--756c968901ae759918aaf9c5.md) | 190 | `result-track:756c968901ae759918aaf9c569923e5430d6a0a0230ee719a342b047034ba66f` |
| 22 | `theorem` | [SemiconjBy.zpow_right](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/semiconjby-zpow-right--8b7da83d11621cd232cf19ac.md) | 194 | `result-track:8b7da83d11621cd232cf19ac5f4f94a7a59e9f19bc3808b674eff72efd5c1d8b` |
| 23 | `theorem` | [Commute.zpow_right](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/commute-zpow-right--f06e4d84e813e2a738680379.md) | 213 | `result-track:f06e4d84e813e2a73868037967f5a50e681b5bca6d3afb865f51e90d3d1e0034` |
| 24 | `theorem` | [Commute.zpow_left](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/commute-zpow-left--2cd8d3ea90ca842027c07187.md) | 221 | `result-track:2cd8d3ea90ca842027c07187159f8c227e32aa5bfc65e4ea5ae381b82329525a` |
| 25 | `theorem` | [Commute.zpow_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/commute-zpow-zpow--9a1c2eab8a3fab12f4954fe2.md) | 225 | `result-track:9a1c2eab8a3fab12f4954fe27dc4267a54d6f8444f14fef176646a549eb1546a` |
| 26 | `theorem` | [Commute.zpow_self](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/commute-zpow-self--6d5769bc7268269ad5c9d59d.md) | 229 | `result-track:6d5769bc7268269ad5c9d59d9f852ad8c6dedca05b583050259d8c6f8f6d118e` |
| 27 | `theorem` | [Commute.self_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/commute-self-zpow--8cb026f2eb2928e23953032e.md) | 233 | `result-track:8cb026f2eb2928e23953032eb1b789e61a9326e6ec573f2610b830a25158ca6d` |
| 28 | `theorem` | [Commute.zpow_zpow_self](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/commute-zpow-zpow-self--c886f1e99704a7a700ffc033.md) | 237 | `result-track:c886f1e99704a7a700ffc03368191568fb1cbb56d755d8188ab540f6db9775f4` |
| 29 | `theorem` | [zpow_bit0](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-bit0--8a785f300e9a001ba0a18a37.md) | 242 | `result-track:8a785f300e9a001ba0a18a37f714536a0c8616b9d5f1dd5c3ddf07d2c97d3073` |
| 30 | `theorem` | [zpow_add_one_of_ne_neg_one](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-add-one-of-ne-neg-one--ab3a1b09972caca75bf7eaf4.md) | 248 | `result-track:ab3a1b09972caca75bf7eaf4a78f3eb397fadc2de4cde917fee73a97454361ba` |
| 31 | `theorem` | [zpow_bit1](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-bit1--0b6e7bdb65803c9beddfa9af.md) | 259 | `result-track:0b6e7bdb65803c9beddfa9af02e47b0bda9c54294aa773c71915b37ad4035dcd` |
| 32 | `theorem` | [zpow_mul](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-mul--c48ca6f1d3fec2b938be24cb.md) | 265 | `result-track:c48ca6f1d3fec2b938be24cbd2d47efaf6d841881e196b0dba3b01f5fe00b1c4` |
| 33 | `theorem` | [zpow_mul'](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-mul--833cb01182edf4d5b5420a50.md) | 279 | `result-track:833cb01182edf4d5b5420a50a062a49ba3291c8031a4c6021eed068d932037e2` |
| 34 | `theorem` | [coe_units_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/coe-units-zpow--e37f74fef88e5069aea9ec5e.md) | 285 | `result-track:e37f74fef88e5069aea9ec5e5ac1d94652864ae20cb9fc6cb343ff77dc006465` |
| 35 | `theorem` | [zpow_ne_zero_of_isUnit_det](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-ne-zero-of-isunit-det--6a872b75d3cc309a4b7c71f4.md) | 291 | `result-track:6a872b75d3cc309a4b7c71f4370b26234b79408d22e8707aee9d0178e236f77c` |
| 36 | `theorem` | [zpow_sub](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-sub--3ac29653c594bbeade886158.md) | 299 | `result-track:3ac29653c594bbeade8861585f9793137e936b62ed4a2350034922cd7ddd48f8` |
| 37 | `theorem` | [Commute.mul_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/commute-mul-zpow--5fe45a2dc81e5c71c4a66e21.md) | 303 | `result-track:5fe45a2dc81e5c71c4a66e212d0d48530f318875ce1a15e9ba4b7f5ad0eae335` |
| 38 | `theorem` | [zpow_bit0'](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-bit0--ac45b56689b592e8fca43cb7.md) | 311 | `result-track:ac45b56689b592e8fca43cb7ea367eb97950c1523cc14b0a0b8f4f6056713f4f` |
| 39 | `theorem` | [zpow_bit1'](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-bit1--f04538a4b574c7ecdfae1b0e.md) | 316 | `result-track:f04538a4b574c7ecdfae1b0e08efd3f2daeaaeb15bd938580a03360256879314` |
| 40 | `theorem` | [zpow_neg_mul_zpow_self](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/zpow-neg-mul-zpow-self--726117fed47a98abdade119c.md) | 320 | `result-track:726117fed47a98abdade119c33fe94c18716cad0d27a2ba692751a1ce8d33029` |
| 41 | `theorem` | [one_div_pow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/one-div-pow--bc57b98913749b006672b180.md) | 324 | `result-track:bc57b98913749b006672b18077999ab1b594e4e0d9dd0d6286d9dccd23c5d7ed` |
| 42 | `theorem` | [one_div_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/one-div-zpow--096d9f6c8604482d84ea368a.md) | 327 | `result-track:096d9f6c8604482d84ea368a339bb13ade8a7ad863234b184e9abb77a9dbb276` |
| 43 | `theorem` | [transpose_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/transpose-zpow--8e021c7cd423812be172821e.md) | 331 | `result-track:8e021c7cd423812be172821ef0193e816732d03130ca3994b196d28582e09623` |
| 44 | `theorem` | [conjTranspose_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant1ee6e902efca570c7c05df1f45c370f14e729b8a7cf11a4d25fe7569f4607a0a.lean/declarations/conjtranspose-zpow--02769c9ec6e75b5811151612.md) | 337 | `result-track:02769c9ec6e75b58111516127d2f58792a7fbccfbe96593b563349f8a4e0d22e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
