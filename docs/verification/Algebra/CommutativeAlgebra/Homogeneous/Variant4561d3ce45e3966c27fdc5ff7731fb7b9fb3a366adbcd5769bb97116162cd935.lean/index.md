# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Homogeneous.Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75de3d7aef96852cc17dee91c01310e6a9a34bba",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75de3d7aef96852cc17dee91c01310e6a9a34bba`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Internal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMonoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Variables` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/ishomogeneous--f38449097b0b81dfb16f0bf7.md) | 42 | `declaration-track:f38449097b0b81dfb16f0bf7584887996a0a88111aaa7752ffed83652d848cbe` |
| 2 | `def` | [homogeneousSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/homogeneoussubmodule--00023b2683eec7de8c18f766.md) | 49 | `declaration-track:00023b2683eec7de8c18f766506e7dfc95baf7dc3393a5ef71034d258b40161e` |
| 3 | `theorem` | [mem_homogeneousSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/mem-homogeneoussubmodule--751c5a5f720c4b24202c3ee5.md) | 71 | `result-track:751c5a5f720c4b24202c3ee5ba38522534751fdba94dbce9d2055a46f3a827b9` |
| 4 | `theorem` | [homogeneousSubmodule_eq_finsupp_supported](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/homogeneoussubmodule-eq-finsupp-supported--ae98ade206742986c89e0881.md) | 78 | `result-track:ae98ade206742986c89e08813c9cb9f601a7c556a6f11e552ff0900f929c76d6` |
| 5 | `theorem` | [homogeneousSubmodule_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/homogeneoussubmodule-mul--7a618c365638992631ed45a0.md) | 88 | `result-track:7a618c365638992631ed45a0316574e8800efcf29e3179cbc66206e6ce53fe48` |
| 6 | `theorem` | [isHomogeneous_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/ishomogeneous-monomial--8306804d2f0dd535f2007613.md) | 115 | `result-track:8306804d2f0dd535f2007613b13cdfff01171503af4e9a52d8b60727634f8a0f` |
| 7 | `theorem` | [isHomogeneous_of_totalDegree_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/ishomogeneous-of-totaldegree-zero--fc20fd002963a8f1e6f26aa6.md) | 128 | `result-track:fc20fd002963a8f1e6f26aa6f23687a9d1b400bcbc5516d40c511a634d8039d4` |
| 8 | `theorem` | [isHomogeneous_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/ishomogeneous-c--86ecc7fe7334e42cbeb8629b.md) | 136 | `result-track:86ecc7fe7334e42cbeb8629b326fd08fb6e72fba67c43cb41b7a51e43cbca252` |
| 9 | `theorem` | [isHomogeneous_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/ishomogeneous-zero--d3ba0c9a414cb4770f58e2a9.md) | 144 | `result-track:d3ba0c9a414cb4770f58e2a98d884167c10cc286f46c86d1dbf981c8778fd02d` |
| 10 | `theorem` | [isHomogeneous_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/ishomogeneous-one--19da1ac7d7d5994439a60876.md) | 148 | `result-track:19da1ac7d7d5994439a60876f924c4d6fbe4cefd3467c98f42aea22fdce321d8` |
| 11 | `theorem` | [isHomogeneous_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/ishomogeneous-x--d59e07788a4cdc274352c8f6.md) | 154 | `result-track:d59e07788a4cdc274352c8f6a39b6b8297adb09c1af418893dd60d0e431383bf` |
| 12 | `theorem` | [coeff_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/coeff-eq-zero--30a92bea6b9846e9f878de86.md) | 167 | `result-track:30a92bea6b9846e9f878de86586d604efcee6eb4b0de608d31e6db0cc48ab813` |
| 13 | `theorem` | [inj_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/inj-right--02ed7432ab120c773d7d1812.md) | 174 | `result-track:02ed7432ab120c773d7d18126529f29020eb3e61a9088918378032696bba46e5` |
| 14 | `theorem` | [add](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/add--b947eeff46842d87c89f7199.md) | 179 | `result-track:b947eeff46842d87c89f7199dbc6ff895d0a4a27ed1c7eb636f22249ba9008ec` |
| 15 | `theorem` | [sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/sum--c35678df235046416e232cb2.md) | 183 | `result-track:c35678df235046416e232cb2072dcd2253b6780ce72169765c848a925e5ffdbc` |
| 16 | `theorem` | [mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/mul--64a90cc29a4c2be66d303d6a.md) | 188 | `result-track:64a90cc29a4c2be66d303d6a0492459b151ae235f485ff69308b0e6b73e06cf7` |
| 17 | `theorem` | [prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/prod--5ca270bd19bb4f771f411274.md) | 192 | `result-track:5ca270bd19bb4f771f411274ec6e450d2b1e1ab2ab0be332f7b4ed3e064c4d52` |
| 18 | `theorem` | [totalDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/totaldegree--f8e41bee38cb27e3ba1738e8.md) | 206 | `result-track:f8e41bee38cb27e3ba1738e8ade5568cb50a32fe7bba0651ba0e952f977015af` |
| 19 | `instance` | [HomogeneousSubmodule.gcommSemiring](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/homogeneoussubmodule-gcommsemiring--395e0575f4458dd06c9aeb43.md) | 222 | `declaration-track:395e0575f4458dd06c9aeb4343e05f19d030221094c5501646759098d73143b6` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/example--b9c500e557de0fb68b369120.md) | 229 | `declaration-track:b9c500e557de0fb68b3691200ef9e872f1c00b32fc477ef49a3a51d64d2c325f` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/example--ba3421ee099afdf17df45c56.md) | 232 | `declaration-track:ba3421ee099afdf17df45c56429a27a7335f48a30fe0f3222734ea076868ed95` |
| 22 | `def` | [homogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/homogeneouscomponent--e4cf8e4d83a6df56d37edb7f.md) | 244 | `declaration-track:e4cf8e4d83a6df56d37edb7ff3cd83414334f576b7b951903304df247f19c6f4` |
| 23 | `theorem` | [coeff_homogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/coeff-homogeneouscomponent--5951e0cfc4ecf93c4ed63c75.md) | 254 | `result-track:5951e0cfc4ecf93c4ed63c75f1e8ebcbe8c5bd571dffa0a7dd6f07effeea30eb` |
| 24 | `theorem` | [homogeneousComponent_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/homogeneouscomponent-apply--60210e2075c889a0e8b54bdb.md) | 259 | `result-track:60210e2075c889a0e8b54bdb2d3412d512a24a1a6e3beed6a4f056061daba484` |
| 25 | `theorem` | [homogeneousComponent_isHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/homogeneouscomponent-ishomogeneous--20127cd5cd4198db23a2c07a.md) | 265 | `result-track:20127cd5cd4198db23a2c07a82bde8bf30a666d1078c4bf22eeaf5d535a1edb5` |
| 26 | `theorem` | [homogeneousComponent_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/homogeneouscomponent-zero--5ace810911afa99d0ee27330.md) | 272 | `result-track:5ace810911afa99d0ee273302e16d9a48722d601d8597293874c2d4b8dd2b176` |
| 27 | `theorem` | [homogeneousComponent_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/homogeneouscomponent-c-mul--8d37e4f093778fab9d06b4d8.md) | 284 | `result-track:8d37e4f093778fab9d06b4d8a0f995dd2cd3ba2c2811f867ee341c61acd5edc3` |
| 28 | `theorem` | [homogeneousComponent_eq_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/homogeneouscomponent-eq-zero--789629464a45314c53a6244c.md) | 290 | `result-track:789629464a45314c53a6244c2a4495df4e4200379f55dd668b89c967b24f9ba5` |
| 29 | `theorem` | [homogeneousComponent_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/homogeneouscomponent-eq-zero--fa79267ce31de5fcf9f87bcb.md) | 298 | `result-track:fa79267ce31de5fcf9f87bcb0d1eb1e60cb1b7db6fb42ecb06914dd685586bed` |
| 30 | `theorem` | [sum_homogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/sum-homogeneouscomponent--61657bb719bad3c018e2d7cb.md) | 306 | `result-track:61657bb719bad3c018e2d7cb1d363466077a75305af8532b311739985a6d30da` |
| 31 | `theorem` | [homogeneousComponent_homogeneous_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variant4561d3ce45e3966c27fdc5ff7731fb7b9fb3a366adbcd5769bb97116162cd935.lean/declarations/homogeneouscomponent-homogeneous-polynomial--d4e936c2c8daf923b811dd8d.md) | 314 | `result-track:d4e936c2c8daf923b811dd8d1de6297b9688baa6064a83fecb51c56bbf46a61b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
