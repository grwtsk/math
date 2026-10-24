# Verification target: GRWTSK.Algebra.LinearAlgebra.ZPow.Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c48b10e90dd7e31a278e4a232de217ac04f5aeb",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c48b10e90dd7e31a278e4a232de217ac04f5aeb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/instance--c867d3eee07416e2dcc05ee1.md) | 43 | `declaration-track:c867d3eee07416e2dcc05ee1925980be7be984737049e9162da65520aa5959cc` |
| 2 | `theorem` | [inv_pow'](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/inv-pow--eb55381968b7b54dd815dd01.md) | 49 | `result-track:eb55381968b7b54dd815dd011cb71d5831fcf5098bbf5947bb4554bbb53043bf` |
| 3 | `theorem` | [pow_sub'](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/pow-sub--33f1c29329cab86631f06b27.md) | 54 | `result-track:33f1c29329cab86631f06b27b933be9c0e2c866f4a0ed2e86c3c2db0d2244ed6` |
| 4 | `theorem` | [pow_inv_comm'](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/pow-inv-comm--430042216948efe9e57e7540.md) | 60 | `result-track:430042216948efe9e57e7540a4d1717b7903295bb662c0d6ad63cb2880c6a06f` |
| 5 | `theorem` | [one_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/one-zpow--cc8d36f7dc09bdce43cb8c9a.md) | 83 | `result-track:cc8d36f7dc09bdce43cb8c9a11dbdd4e4ded431ae7d54df5feaf2b590771213c` |
| 6 | `theorem` | [zero_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zero-zpow--c71f443ebfd4468919b7fade.md) | 87 | `result-track:c71f443ebfd4468919b7fadef936d36025d95954dc787fc3bbbfe62bbcf26075` |
| 7 | `theorem` | [zero_zpow_eq](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zero-zpow-eq--92888f54f519cc351e2ddc4d.md) | 93 | `result-track:92888f54f519cc351e2ddc4d705789842e0ff32ea59f910563c958373b544151` |
| 8 | `theorem` | [inv_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/inv-zpow--a6f97cafe3ed559f2508d90e.md) | 98 | `result-track:a6f97cafe3ed559f2508d90e83ef1ccb923f74dfd774f9fbaa49e677838cfe70` |
| 9 | `theorem` | [zpow_neg_one](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-neg-one--00f9f209135b0a21f128fa28.md) | 103 | `result-track:00f9f209135b0a21f128fa28eb0dca0d8d18e83e2748f0db79e38670d5b22f3b` |
| 10 | `theorem` | [zpow_neg_natCast](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-neg-natcast--62b253a7b3769038ad302ed7.md) | 108 | `result-track:62b253a7b3769038ad302ed78f235bae02196941835b425dc002c6860c839ccb` |
| 11 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.InvPowPrime.Varianta62c9236336104f63d12803ae8a5a8fa17aa649048d060d1d1130cd0a826abdf.IsUnit.det_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/root-grwtsk-algebra-linearalgebra-invpowprime-varianta62c9236336104f63d1--aa29efa1b26cf49fb6d81c19.md) | 113 | `result-track:aa29efa1b26cf49fb6d81c19da3d2368e915a02badccd48e5fe01b2ade657ecc` |
| 12 | `theorem` | [isUnit_det_zpow_iff](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/isunit-det-zpow-iff--78a2c0cdd4c66991d247e2ef.md) | 118 | `result-track:78a2c0cdd4c66991d247e2efc58c68467b9ff8b8ed14849be84d9950d97e7ca9` |
| 13 | `theorem` | [zpow_neg](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-neg--87a246cc6ec41dc8d1e809c2.md) | 130 | `result-track:87a246cc6ec41dc8d1e809c200bfa06a506f67afd22d145459032f4d36b762a4` |
| 14 | `theorem` | [inv_zpow'](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/inv-zpow--bb6d23eb698c68be11d6ad64.md) | 137 | `result-track:bb6d23eb698c68be11d6ad643c853c68386bcab458d23b99e2297885541f8dfe` |
| 15 | `theorem` | [zpow_add_one](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-add-one--35652f1f43d949ad92dbe541.md) | 140 | `result-track:35652f1f43d949ad92dbe5416c888ed5e09e6391fd09f3b9bcf12431cd5c890a` |
| 16 | `theorem` | [zpow_sub_one](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-sub-one--4ab3aa858dbe67ca919673a2.md) | 151 | `result-track:4ab3aa858dbe67ca919673a2e4753d7585b60921928b994ad0505a2ef3224e63` |
| 17 | `theorem` | [zpow_add](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-add--ee37a0c2a21d87d4be65d5e2.md) | 157 | `result-track:ee37a0c2a21d87d4be65d5e253cbc12157a4d9fdd31293c7c40574a519a04e52` |
| 18 | `theorem` | [zpow_add_of_nonpos](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-add-of-nonpos--bfaf5037322d86398bb244bd.md) | 163 | `result-track:bfaf5037322d86398bb244bdaa1ebed755574e187ce511474ca308838c876229` |
| 19 | `theorem` | [zpow_add_of_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-add-of-nonneg--8aea48610b96c5284a90f505.md) | 171 | `result-track:8aea48610b96c5284a90f50510c42191b944c43ff83914552c9bfdf5d82900a4` |
| 20 | `theorem` | [zpow_one_add](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-one-add--4d216872e940e83715ca2cef.md) | 177 | `result-track:4d216872e940e83715ca2cef9b55432ce9eb7b89172fc51ec90152ab59e74d6d` |
| 21 | `theorem` | [SemiconjBy.zpow_right](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/semiconjby-zpow-right--4a01b81f7ed200c2327a353a.md) | 180 | `result-track:4a01b81f7ed200c2327a353ad1276449cd3fb7a4129bed3f4ddd7ed5309a0087` |
| 22 | `theorem` | [Commute.zpow_right](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/commute-zpow-right--abfd59b20896639cd3ce77bb.md) | 198 | `result-track:abfd59b20896639cd3ce77bb477f8e56ec25051dc42a25f9df2ead75ea47ee13` |
| 23 | `theorem` | [Commute.zpow_left](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/commute-zpow-left--9cddb4cc7370ad8ae5b1ba7c.md) | 205 | `result-track:9cddb4cc7370ad8ae5b1ba7c4f3a305abe40b37ce936ce6da0aa9f6adc0edb54` |
| 24 | `theorem` | [Commute.zpow_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/commute-zpow-zpow--8dfc8bc5661af350da1ffc7d.md) | 208 | `result-track:8dfc8bc5661af350da1ffc7d37d5215ee3216af06b75dc0eca0c7938864ee722` |
| 25 | `theorem` | [Commute.zpow_self](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/commute-zpow-self--e672045c77bc48c8953a5969.md) | 211 | `result-track:e672045c77bc48c8953a5969ce6cd294569be66f3b8bb11bb5704b69b741fae9` |
| 26 | `theorem` | [Commute.self_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/commute-self-zpow--70f9962ee476a2133d2b01b1.md) | 214 | `result-track:70f9962ee476a2133d2b01b161138488f6345339ee3d8186ce0d162d8ed53fe1` |
| 27 | `theorem` | [Commute.zpow_zpow_self](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/commute-zpow-zpow-self--677e6644c89443268c99e777.md) | 217 | `result-track:677e6644c89443268c99e7772808cf4ece403041a252f6f2133511bf235bce21` |
| 28 | `theorem` | [zpow_add_one_of_ne_neg_one](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-add-one-of-ne-neg-one--9af53456224cb3e7179b3a1c.md) | 220 | `result-track:9af53456224cb3e7179b3a1cca032c830c7c203e5e076fc13f37ca4354509d50` |
| 29 | `theorem` | [zpow_mul](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-mul--e02931ab999efeb956a8409a.md) | 229 | `result-track:e02931ab999efeb956a8409a088b4d39352089a9fda95de96d484edb443be5d4` |
| 30 | `theorem` | [zpow_mul'](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-mul--cd6bb1d940de02dd2ac381d9.md) | 243 | `result-track:cd6bb1d940de02dd2ac381d9e4effecf71f616a29bf924a6f8b97a6427332da4` |
| 31 | `theorem` | [coe_units_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/coe-units-zpow--9cdb9fc1e6889ef0399a1f80.md) | 248 | `result-track:9cdb9fc1e6889ef0399a1f8060a993779d5677877fcc6c5804fdf668fdf94e87` |
| 32 | `theorem` | [zpow_ne_zero_of_isUnit_det](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-ne-zero-of-isunit-det--30687229ad7ef9fc4f032898.md) | 253 | `result-track:30687229ad7ef9fc4f0328984b044b9a45e180c29b10f2a5286a5cfc16e2f919` |
| 33 | `theorem` | [zpow_sub](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-sub--0463b8cdf22e2961f3697229.md) | 260 | `result-track:0463b8cdf22e2961f3697229d5888e3c566cc30b530cbc0f114000a863b0bb32` |
| 34 | `theorem` | [Commute.mul_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/commute-mul-zpow--50ebbaca1975048dde729baa.md) | 263 | `result-track:50ebbaca1975048dde729baab1a1125cd28a7d5a10ef7ead5791664bbc03f532` |
| 35 | `theorem` | [zpow_neg_mul_zpow_self](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/zpow-neg-mul-zpow-self--bc9f8e744b8aee827f238d1a.md) | 269 | `result-track:bc9f8e744b8aee827f238d1a28d17cc67c65aae3cd6c8bb5249c58d897484457` |
| 36 | `theorem` | [one_div_pow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/one-div-pow--f99c5f11ad92095114fabcbf.md) | 272 | `result-track:f99c5f11ad92095114fabcbf0b42a574ad25efea210c30bcfe8834d02879b82f` |
| 37 | `theorem` | [one_div_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/one-div-zpow--c3e6c8725fcb554368a0d2c9.md) | 274 | `result-track:c3e6c8725fcb554368a0d2c9723a6ea46ffe4469d3a5983d8a3473d624e6f1c2` |
| 38 | `theorem` | [transpose_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/transpose-zpow--870eba92adb58f33903bce27.md) | 277 | `result-track:870eba92adb58f33903bce27b3c38cade705979f71ec2aa9d819d9789d3ecafe` |
| 39 | `theorem` | [conjTranspose_zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/conjtranspose-zpow--25c6f0cc86ff77c52753ec8d.md) | 282 | `result-track:25c6f0cc86ff77c52753ec8d46360c748d16696ee5002652ddfdc90dee9f5c84` |
| 40 | `theorem` | [IsSymm.zpow](../../../../../mathematics/Algebra/LinearAlgebra/ZPow/Variant5687f040842bab56802de2c111fe79f3be8e435201d1e9d5ef96abd61bde0154.lean/declarations/issymm-zpow--008cd3ad42784b345d1f4a67.md) | 286 | `result-track:008cd3ad42784b345d1f4a6704209e585c46887b84e97d9179187747a2827b61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
